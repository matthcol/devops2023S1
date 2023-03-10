#!/bin/bash

DICTON="si vous pouvez rêver, vous pouvez le faire"
echo "Diction du jour: $DICTON"

echo "First 4 letters: ${DICTON:0:4}"

echo "4 letters begining at #3: ${DICTON:3:4}"

echo "text from #3 to the end: ${DICTON:3}"
