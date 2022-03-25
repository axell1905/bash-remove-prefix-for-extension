#!/bin/bash

# Bash script that, for a folder on Linux, removes a prefix (first parameter) from all files with a certain extension (second parameter).
# Example: you have a folder with these files
# org.subdomain1.com org.subdomain2.com org.subdomain3.com ... org.subdomainN.com
# We run the script: ./myScript.sh org. com
#The files will be renamed to:
#subdomain1.com subdomain2.com subdomain3.com ... subdomainN.com

FILES=$(ls *.$2)

for file in $FILES
do
 tmp=$(echo $file | sed "s/$1//g")
 mv $file $tmp
done
