#!/bin/bash

echo "Style Checking..."

tabs=$(find . -name '*.cpp' -exec grep -P "\t" {} \;)

if [ -z "$tabs" ]; then
    echo "Tabs formatted correctly"
else
    echo "Get rid of your tabs!"
    exit 1
fi
