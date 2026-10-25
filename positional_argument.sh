#! /bin/bash

echo "Executing script is $0"
for ARGUMENT in "$@"
do
    if [-f $ARGUMENT]
    then
        echo "$ARGUMENT is a regular file."
        if [-d $ARGUMENT]
        then
            ll $ARGUMENT
        fi
    else
        echo "$ARGUMENT is not a regular file or it doesnt exists."
    fi
done
ls $1