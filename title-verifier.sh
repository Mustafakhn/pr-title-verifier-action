#!/bin/bash

arg=$(echo "$1" | cut -d ']' -f 1  | sed 's/\[//')
code=$(echo "$arg" | cut -d '-' -f 1)
number=$(echo "$arg" | cut -d '-' -f 2)
codeLength=${#code}
numLength=${#number}

errorOrHelpMessage() {
echo "
The correct format of the argument is 

Example argument: ABC-1234

The alphabets before the hyphen like so \"ABC-\".

|**********************************************|
|                                              |
|  NOTE: all the alphabets must be in capital  |
|                                              |
|**********************************************|

The numbers after the hyphen like so \"-1234\".

-h or --help : for viewing the help document for the file

which are passed in like ./jira-verifier.sh <your.argument>"
    exit 1
}

if [[ -z "$arg" || "$arg" == "-h" || "$arg" == "--help" ]];
then
    errorOrHelpMessage
else
    if [[ $codeLength -le 10 && $numLength -le 10 ]];
    then
        if [[ "$arg" =~ [[:upper:]]+\-[0-9]+ ]];
        then
            echo "verification successfull"
        else
            errorOrHelpMessage
        fi
    else
        echo "the length is greater than 10 characters"
        exit 1
    fi
fi
