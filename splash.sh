#!/bin/sh

splashfile="$1"

printf "Hello there %s!\n" $USER
printf "Today's date is %s\nIt is currently %s %s\n" `date +"%Y-%m-%d %r"`

# New lines are represented by pipe symbol (|)
# Author goes behind tilde (~)
# Ex:
#		You can't believe everything you read on the internet.|It may not be true.|~Abraham 'The Man' Lincoln

cat "$splashfile" \
	| shuf -n 1 \
	| sed 's/|/\n/g' \
	| sed 's/~\(.*\)/\n\t\t\t--\1/g'
