#!/usr/bin/env bash
#
# run-c.sh: Compile and run C programs, logging errors to file.

usage()
{
    echo "Usage: $0 file.c [args...]"
    exit 1
}

all=false
clean=false
debug=false
watch=false
verbose=false

parse_flags()
{
    for flag in "$@"
    do
        case "$flag" in
            -c | --clean)
                clean=true
                ;;
            -v | --verbose)
                verbose=true
                ;;
            --debug)
                debug=true
                ;;
            --watch)
                watch=true
                ;;
            *)
                usage
                ;;
        esac
    done
}

if [[ $# -eq 0 ]]
then
    usage
fi

# Initialise arrays
flags=()
sources=()

while [[ $# -gt 0 ]]
do
    case "$1" in
        --)
            shift
            break
            ;;
        -*)
            flags+=("$1")
            shift
            ;;
        *.c)
            sources+=("$1")
            shift
            ;;
        *) 
            usage
            ;;
    esac
done

args=("$@")
parse_flags "${flags[@]}"

validate_file()
{
    for file in "$@"
    do
        if [[ ! -e "$file" ]]
        then
            echo "$0: $file: No such file"
            exit 1
        fi 

        if [[ ! "$file" == *.c ]]
        then
            echo "$file: Not valid c file"
            exit 1
        fi
    done
}

validate_file "${sources[@]}"

ERROR_FILE="errors.log"
EXECUTABLE="build"
COMM_ARGS=("${sources[@]}" "-Wall" "-Werror" "-Wextra" "-o" "${EXECUTABLE}")

if [[ "$debug" = true ]]
then
    COMM_ARGS+=("-g")
fi

if [[ "$verbose" = true ]]
then
    echo "[verbose] gcc ${COMM_ARGS[@]}"
fi
    
if gcc "${COMM_ARGS[@]}" 2> "$ERROR_FILE"
then

    if [[ "$verbose" = true ]]
    then
        echo "[verbose] ./${EXECUTABLE} ${args[@]}"
    fi
    "./$EXECUTABLE" "${args[@]}"

    if [[ "$clean" = true ]]
    then
        rm "$ERROR_FILE"
    fi
else
    echo "Compilation failed. See ${ERROR_FILE}."
    exit 1
fi
