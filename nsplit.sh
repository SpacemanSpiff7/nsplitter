#!/bin/bash
display_usage() {
        echo "Please include path to file with '-f' flag."
    echo "This script splits a file into specified number of parts (default=5)."
        echo -e "To specify number of parts, use '-n' flag or put number of parts as 2nd positional argument.\n"
        echo -e "Example usage:"
        echo -e "\t $ nsplit myfile.txt\t\t\t# split myfile.txt into 5 parts"
        echo -e "\t $ nsplit myfile.txt 2\t\t\t# split myfile.txt into 2 parts"
        echo -e "\t $ nsplit -f myfile.txt -n 10\t\t# split myfile.txt into 10 parts using flags"
        }

nparts=5

if [  $# -lt 1 ]
        then
                display_usage
                exit 1
        fi

if [ $# -eq 1 ]
        then
                filename=$1
elif [ $# -eq 2 ]
        then
                filename=$1
                nparts=$2
else
while [ "$1" != "" ]; do
    case $1 in
        -f | --file )           shift
                                filename="$1"
                                ;;
        -n | --nparts )         shift
                                nparts="$1"
                                ;;
        -h | --help )           display_usage
                                exit
                                ;;
        * )                     display_usage
                                exit 1
    esac
    shift
done
fi

num_lines=$((`wc -l < $filename`/$nparts))

split -l $num_lines $filename



