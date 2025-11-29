#!/usr/bin/env bash
#
# run-c.sh: Compile and run C programs, logging errors to file.

if [[ $# -eq 0 ]]
then
    echo "Usage: $0 file.c [args...]"
    exit 1
fi

while [[ $# -gt 0 ]]
do
    case "$1" in
        '-c' | '--clean')
            clean=true
            shift
            ;;
        '-v' |'--verbose')
            verbose=true
            shift
            ;;
        *) break
            ;;
    esac
done

FILE="$1"
shift

if [[ ! -e "$FILE" ]]
then
    echo "$0: $FILE: No such file"
    exit 1
fi 

if [[ ! "$FILE" == *.c ]]
then
    echo "$FILE: Not valid c file"
    exit 1
fi

ERROR_FILE="errors.log"
EXECUTABLE="${FILE/.c/''}"

if gcc "$FILE" -Wall -Werror -Wextra -o "$EXECUTABLE" 2> "$ERROR_FILE"
then
    "./$EXECUTABLE" "$@" 

    if [[ "$clean" = true ]]
    then
        rm "$ERROR_FILE" "$EXECUTABLE"
    fi
else
    echo "Compilation failed. See ${ERROR_FILE}."
    exit 1
fi
