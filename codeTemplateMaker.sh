#!/bin/bash


#Below checks if the number of arguments is not equal to 1.
if [ $# -ne 1 ];   then
        #Below displays a usage message if the argument count is incorrect.
        echo "usage: ./$0 <-c|-cpp>"
        #Below exits the script with an error status (1) to indicate a usage error.
        exit 1
fi


#Below checks Whether the first argument is "-cpp".
if [ "$1" == "-cpp" ];  then
        #Below generates a C++ template if the argument is "-cpp".
        cat  <<END
#include <iostream>
#include <stdlib.h>
using namespace std;

int main(int argc, char** argv)
{
    //TODO: Main code
    return 0;
}
END


#Below checks if the first argument is "-c".
elif [ "$1" == "-c" ];  then
        #Below generates a C template if the argument is "-c".
        cat  <<END
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
    //TODO: Code goes here
    return 0;
}
END


else
    #Below displays a usage message for invalid arguments.
    echo "usage: ./$0 <-c|-cpp>"
    #Below exits the script with an error status (1) for invalid arguments.
    exit 1
fi

