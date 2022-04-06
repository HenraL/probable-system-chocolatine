#!/bin/bash
find . -type f \( -name "*~" -o -name "*-;" \) -delete
find . -type f \( -name "#*" -o -name "#*#" -o -name "*#" \) -delete
find . -type f \( -name "*.o" -o -name "*.a" \) -delete
find . -type f \( -name "*.exe" -o -name "*.so" \) -delete
find . -type f \( -name "*.gcno" -o -name "*.gcda" -o -name "*.gcov" \) -delete
find . -type f \( -name "tmp" \) -delete


for FILE in *
do
    if grep -q "*~" $FILE
    then
        echo "::error file={FUck you},line={1},endLine={0},title={Unwanted file detected:}::{$FILE#L1}"
        echo '::set-output name=SELECTED_COLOR::red'
    fi
done
