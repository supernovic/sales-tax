#!/bin/bash

echo -e "Running calculateTotal.rb on every test file...\n"

TESTFILES=test/*
for f in $TESTFILES
do
        echo -e "For $f:"
        ruby calculateTotal.rb $f
done

echo "Script done running!"