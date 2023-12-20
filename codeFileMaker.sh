#!/bin/bash

#Below gets the command-line arguments.
Lang="$1"
Person="$2"
Description="$3"
Newfile=""
Pos="$4"


#Below checks if there are not enough arguments (less than 3).
if [ $# -lt 3  ];  then
        echo "usage: ./$0 <-c|-cpp> <name> <description> -o <output file>"
        exit 1
fi


#Below checks if the value of the variable "$Pos" is not equal to "-o" and the total number of arguments is not equal to 3.
if [ "$Pos" != "-o" ] && [ $# != 3 ];  then
        echo "usage: ./$0 <-c|-cpp> <name> <description> -o <output file>"
        exit 1
fi


#Below checks if the first argument is not "-cpp" and not "-c".
if [ "$1" != "-cpp" ] && [ "$1" != "-c" ];  then
        #Below displays a usage message with expected arguments.
	echo "usage: ./$0 <-c|-cpp> <name> <description> -o <output file>"
        exit 1
fi


#Below checks if the value of the variable 'Pos' is equal to "-o".
if [ "$Pos" == "-o" ];  then
	#Below checks if the total number of command line arguments is equal to 5.
	if [ $# -eq 5 ];  then
	#If there are 5 arguments, assign the value of the 5th argument to the variable 'Newfile'.
                Newfile="$5"
	#Otherwise, it displays a usage message if the argument count is incorrect.
        else
                echo "usage: ./$0 <-c|-cpp> <name> <description> -o <output file>"
                exit 1
        fi
fi


#Below stores the output of the 'makeHeader.sh' script with two arguments: "$Person" and "$Description" in the variable 'Script2'.
Script2=$(./makeHeader.sh "$Person" "$Description")
#Below stores the output of the 'codeTemplateMaker.sh' script with one argument: "$Lang" in the variable 'Script3'.
Script3=$(./codeTemplateMaker.sh "$Lang")


#Below checks if the variable $Newfile is not empty (-n checks for non-empty strings).
if [ -n "$Newfile" ];  then
	#If $Newfile is not empty, append the contents of $Newfile with the content of $Script2 followed by $Script3 to $Newfile..
        echo "$Script2" > "$Newfile"
        { echo "$Script2";echo "$Script3"; } > "$Newfile"
	#Below displays a message indicating that the file $Newfile has been created.
        echo "Created file $Newfile"
else
	#Otherwise, if $Newfile is empty, simply display the content of $Script2.
        echo "$Script2"
fi


#Below checks if the variable 'Newfile' is empty using the '-z' test and the '-z' test checks if the length of the string is zero.
if [ -z "$Newfile" ];  then
	#If 'Newfile' is empty, then we execute the codeTemplateMaker.sh script with the argument $Lang.
        ./codeTemplateMaker.sh "$Lang"
fi

