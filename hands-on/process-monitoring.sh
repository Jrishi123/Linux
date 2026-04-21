#!/bin/bash

echo "Running processes:"
ps aux | head -5

echo "Top processes:"
top -b -n 1 | head -10