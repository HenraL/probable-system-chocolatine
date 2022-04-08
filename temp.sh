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

['*~', '*-;', '#*', '#*#', '*#', '*.o', '*.a', '*.exe', '*.so', '*.gcno', '*.gcda', '*.gcov', 'tmp', "*pain_au_chocolat*" , "*pain_au_chocolat", "pain_au_chocolat*"]

[ 'grep -q "*~" $FILE', 'grep -q "*-;" $FILE', 'grep -q "#*" $FILE', 'grep -q "#*#" $FILE', 'grep -q "*#" $FILE', 'grep -q "*.o" $FILE', 'grep -q "*.a" $FILE', 'grep -q "*.exe" $FILE', 'grep -q "*.so" $FILE', 'grep -q "*.gcno" $FILE', 'grep -q "*.gcda" $FILE', 'grep -q "*.gcov" $FILE', 'grep -q "tmp" $FILE', 'grep -q "*pain_au_chocolat*" $FILE', 'grep -q "*pain_au_chocolat" $FILE', 'grep -q "pain_au_chocolat*" $FILE']

#!/bin/bash
["*~", "*pain_au_chocolat*", "*#*", "*.exe", "*.sh", "*.so", "*.o", "*.gcda", "*.gcov", "tmp","*.a", "*-;", "*.gcno" ]

find -name "*~" -o -name "*pain_au_chocolat*" -o -name "*#*" -o -name "*.exe" -o -name "*.sh" -o -name "*.so" -o -name "*.o" -o -name "*.gcda" -o -name "*.gcov" -o -name "tmp" -o -name "*.a" -o -name "*-;" -o -name "*.gcno" -type f,d
