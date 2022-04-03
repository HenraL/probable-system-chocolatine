#!/bin/bash
if grep -q '#' './#something':
then
    echo "# has been found in the string"
else
    echo "# has not been found in the string"
fi
