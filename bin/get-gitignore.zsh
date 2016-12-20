#!/bin/zsh

lang=$1

if [ "$lang" = "" ]; then
	echo "Usage: $(basename $0) language"
	exit 1
fi

curl -s https://raw.githubusercontent.com/github/gitignore/master/${lang}.gitignore >> .gitignore

if [ $? -ne 0 ]; then
	echo "Error fetching the language you specified"
	exit 1
fi
