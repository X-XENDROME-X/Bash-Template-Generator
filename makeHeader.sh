#!/bin/bash

#Below gets the current date in the mm/dd/yyyy format.
Date=$(date +'%m/%d/%Y')

#Below stores the first command-line argument (author's name) in the 'Person' variable.
Person=$1

#Below stores the second command-line argument (description) in the 'Description' variable.
Description=$2

#Below uses the cat command to output a C/C++ block comment that includes the information.
cat <<END
/*
Author: $Person
Date: $Date
Description: $Description
*/
END

