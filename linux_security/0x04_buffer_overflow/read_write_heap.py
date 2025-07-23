#!/usr/bin/python3
import sys
import os

"""
This module searches for a string in the heap of a process and replaces it.
"""


def print_usage():
    """Prints usage error and exits."""
    print("Usage: ./read_write_heap.py <pid> <search_string> <replace_string>")
    sys.exit(1)


def validate_args():
    """Validates command-line arguments."""
    if len(sys.argv) != 4:
        print_usage()
    if len(sys.argv[3]) > len(sys.argv[2]):
        print("Error: argv[3] must be equal or shorter than argv[2]")
        sys.exit(1)


def get_heap_address(pid):
    """Gets the start and end address of the heap region of a process."""
    try:
        with open(f"/proc/{pid}/maps", 'r') as maps_file:
            for line in maps_file:
                if '[heap]' in line:
                    parts = line.split()
                    addresses = parts[0]
                    perms = parts[1]
                    if 'r' in perms and 'w' in perms:
                        start, end = [int(x, 16) for x in addresses.split('-')]
                        return start, end
        print("Error: Could not find heap region with r/w permissions")
        sys.exit(1)
    except FileNotFoundError:
        print(f"Error: PID {pid} not found")
        sys.exit(1)


def search_and_replace(pid, start, end, search_str, replace_str):
    """Searches and replaces a string in the heap of the target process."""
    try:
        mem_path = f"/proc/{pid}/mem"
        with open(mem_path, 'r+b') as mem_file:
            mem_file.seek(start)
            heap_data = mem_file.read(end - start)
            index = heap_data.find(search_str.encode())
            if index == -1:
                print("Error: search string not found in heap")
                sys.exit(1)

            mem_file.seek(start + index)
            padded = replace_str + '\x00' * (len(search_str)
                                             - len(replace_str))
            mem_file.write(padded.encode())
            print(
                f"Replaced '{search_str}' with '{replace_str}' in proc {pid}"
            )
    except PermissionError:
        print("Error: Permission denied. Try running the script with sudo")
        sys.exit(1)


if __name__ == "__main__":
    validate_args()
    pid = sys.argv[1]
    search_str = sys.argv[2]
    replace_str = sys.argv[3]

    start_address, end_address = get_heap_address(pid)
    search_and_replace(pid, start_address, end_address,
                       search_str, replace_str)
