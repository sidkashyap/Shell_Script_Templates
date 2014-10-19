#!/bin/bash

# you are basically processing the commandline arguments here

function show_usage {
	echo "Usage: $0 source_dir dest_dir"
	exit 1
}




if [ $# -ne 2 ]; then
	show_usage
else

	if [ -d $1 ]; then
		echo "source directory $1"
	else
		echo "invalid source directory"
		show_usage
	fi

	if [ -d $2 ]; then
                echo "destination directory $2"
        else
                echo "invalid destination directory"
		show_usage
        fi
fi
