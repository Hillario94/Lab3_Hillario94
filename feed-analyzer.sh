#!/bin/bash

FILE="${1:-twitter_dataset.csv}"

if [ ! -f "$FILE" ]; then
    echo "Error: file '$FILE' not found."
    echo "Usage: ./feed-analyzer.sh twitter_dataset.csv"
    exit 1
fi

echo "Top 5 Most Active Users"
echo "-----------------------"
grep -E '^[0-9]+,' "$FILE" | cut -d',' -f2 | sort | uniq -c | sort -nr | head -5