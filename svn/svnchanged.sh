#!/bin/bash

function showusage()
{
	echo ' '
	echo 'Usage:'
	echo ' '
	echo 'svnchanged.sh		Shows changes in this repo'
	echo 'svnchanged.sh -r	Reverts the changes in this repo'
	echo 'svnchanged.sh -h	Shows help'
}

case "$1" in
"-h") showusage;;
"-r") svn status | grep -v "^?" | tr '\\' '/' | awk '{print $2}' | xargs svn revert;;
"") svn status | grep -v "^?" | tr '\\' '/';;
esac

#echo ' '
#echo 'This script only works on modified files. Please also do svn status to be sure'

