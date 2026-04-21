#!/bin/bash

LOG_FILE="app.log"

echo "🔍 Checking logs..."

if [ ! -f "$LOG_FILE" ]; then
  echo "Log file not found!"
  exit 1
fi

echo "Total ERROR count:"
grep -i "error" $LOG_FILE | wc -l

echo "Recent ERROR lines:"
grep -i "error" $LOG_FILE | tail -5