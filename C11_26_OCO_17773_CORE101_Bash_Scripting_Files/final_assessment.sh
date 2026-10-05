#!/usr/bin/env bash
name=""
number=0
show_menu() { echo; echo "1) System information"; echo "2) Classify number"; echo "3) Count files"; echo "0) Exit"; }
read -r -p "Enter your name: " name
if [[ -z "$name" ]]; then echo "Name cannot be empty."; exit 1; fi
read -r -p "Enter an integer: " number
if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then echo "Please enter an integer."; exit 1; fi
while true; do
    show_menu
    read -r -p "Choose an option: " choice
    case "$choice" in
        1) echo "User: $(whoami) | Date: $(date)" ;;
        2) if (( number > 0 )); then echo "Positive"; elif (( number < 0 )); then echo "Negative"; else echo "Zero"; fi; echo "Square: $((number * number))" ;;
        3) echo "Files: $(find . -type f | wc -l)" ;;
        0) echo "Goodbye, $name!"; break ;;
        *) echo "Invalid choice." ;;
    esac
done
