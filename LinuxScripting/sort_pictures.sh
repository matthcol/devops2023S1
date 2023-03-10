#!/bin/bash

SRC_DIR=$1
DEST_DIR=$2

echo "Sorting photos..."
echo "Scanning for photos in directory: $SRC_DIR"
echo "Sorting photos in directory: $DEST_DIR"

mv $SRC_DIR/*.jpg $DEST_DIR/ 
