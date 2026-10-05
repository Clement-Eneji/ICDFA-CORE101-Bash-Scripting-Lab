#!/usr/bin/env bash
echo "===== Bash Practice Menu ====="
echo "1) Show user"
echo "2) Show date"
echo "3) Show current directory"
echo "0) Exit"
read -r -p "Choose an option: " choice
case "$choice" in
    1) whoami ;;
    2) date ;;
    3) pwd ;;
    0) echo "Goodbye." ;;
    *) echo "Invalid choice." ;;
esac
