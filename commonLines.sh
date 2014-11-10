#!/bin/sh
# This is a common shell to find the common lines in the multiple files, such as file1, file2, ... , filen
# raw shell: awk '{print FILENAME,$1}' $* | sort | uniq | awk '{print $2}' | sort | uniq -c | awk '{if($1==$#) print $2}'

cmd1='{print FILENAME, $1}'
cmd2='{print $2}'
cmd3='{if($1=='$#') print $2}'
#finalCmd="awk '$cmd1' $* | sort | uniq | awk '$cmd2' | sort | uniq -c | awk '$cmd3'"
#echo "===executing this shell command"
#echo $finalCmd
#echo "===result"
echo $finalCmd | sh
