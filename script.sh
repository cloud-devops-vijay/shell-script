#! /bin/bash
VAR="Shell Scripting is fun!"
DNS_NAME=$(hostname)
echo $VAR
echo "This script is running on ${DNS_NAME}. Where ${DNS_NAME} is the output of the hostname command."

# Condition to check if /etc/shadow file exists.
if [-f /etc/shadow]
then
    echo "Shadow passwords are enabled."
    if [-w /etc/shadow]
    then
        echo "You have permission to write to the /etc/shadow file."
    else
        echo "You do not have permission to write to the /etc/shadow file."
    fi
else
   echo "shadow passwords are not enabled."
fi

# Loop to print few words
for WORD in "man" "bear" "pig" "dog" "cat" "sheep"
do
    echo "${WORD}"
done