#! /bin/bash
read -p "Enter a file name: " FILENAME

if [-f FILENAME]
then
    echo "${FILENAME} is exists and it is a regular file."
    if [-d FILENAME]
    then
        OPTION= $(ll $FILENAME)
    fi
else
    echo "${FILENAME} is not a regular file or does not exists."
fi