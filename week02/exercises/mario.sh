#!/usr/bin/env bash
#
# mario.sh: print a mario block 

# Get input
height=''
while true
do 
    read -r -p "Height: " height

    if [[ "$height" =~ ^[1-8]$ ]]
    then
        break
    fi
done

# Print black
for (( i=0; i < height; i++ ))
do
    # Prints spaces
    for (( j=0; j < (height - "$i" - 1); j++ ))
    do
        printf " "
    done

    for (( k=0; k < ("$i" + 1); k++ ))
    do
        printf "#"
    done

    printf "\n"
done
