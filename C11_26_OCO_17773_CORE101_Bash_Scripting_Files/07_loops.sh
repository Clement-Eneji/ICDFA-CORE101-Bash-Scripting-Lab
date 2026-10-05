#!/usr/bin/env bash
echo "===== FOR LOOP ====="
for item in one two three; do
    echo "Item: $item"
done
echo
echo "===== WHILE LOOP ====="
count=1
while (( count <= 3 )); do
    echo "Count: $count"
    ((count++))
done
echo
echo "===== UNTIL LOOP ====="
count=1
until (( count > 3 )); do
    echo "Count: $count"
    ((count++))
done
