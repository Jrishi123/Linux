#!/bin/bash

echo "Creating directory..."
mkdir devops-demo

cd devops-demo

echo "Creating file..."
touch test.txt

echo "Writing content..."
echo "Hello DevOps" > test.txt

echo "Displaying file..."
cat test.txt