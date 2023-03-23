from pathlib import Path
import sys

def print_usage(error_message=None, exit=True, exit_status=1):
    if error_message:
        print("Error:", error_message)
    print("Usage: python sort_picture.py SRC_DIR DEST_DIR")
    print("Parameters:")
    print("- SRC_DIR: directory containing pictures (need to be readable)")
    print("- DEST_DIR: directory in wich sorting the pictures (need to be writable)")
    if exit:
        sys.exit(exit_status)

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print_usage("wrong number of arguments", exit_status=1)

    src_path = Path(sys.argv[1])
    dest_path = Path(sys.argv[2])

