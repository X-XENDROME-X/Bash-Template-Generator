#!/bin/bash

#Below checks if the number of command-line arguments ('$#') is equal to 0 using the '-eq' test.
if [ $# -eq 0 ];  then
	#If there are no command-line arguments, set the 'Folder' variable to the current directory.
	Folder="."
#Otherwise, it sets the 'Folder' variable to the value of the first command-line argument.
else
	Folder="$1"
fi


#Below defines a function named 'ConcatFolder' that finds and concatenates specific file types in a directory and it uses 'find' to search for files with extensions .h, .hpp, .c, .cpp, and .cc and concatenate their contents.
ConcatFolder()  { find "$1" -type f \( -name "*.cc" -o -name "*.c" -o -name "*.h" -o -name "*.hpp" -o -name "*.cpp" \) -exec cat {} \; ; }

#Below calls the 'ConcatFolder' function with the directory path stored in "$Folder".
ConcatFolder  "$Folder"
