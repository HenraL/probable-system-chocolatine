#!/bin/bash
find . -type f \( -name "*~" -o -name "*-;" \) -delete
find . -type f \( -name "#*" -o -name "#*#" -o -name "*#" \) -delete
find . -type f \( -name "*.o" -o -name "*.a" \) -delete
find . -type f \( -name "*.exe" -o -name "*.so" \) -delete
find . -type f \( -name "*.gcno" -o -name "*.gcda" -o -name "*.gcov" \) -delete
find . -type f \( -name "tmp" \) -delete
