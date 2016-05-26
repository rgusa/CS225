#!/bin/bash

echo "Please enter a number: "
read NUMBER

FIVE=5

if [[ $NUMBER -eq $FIVE ]];then
	echo "Hurray!"
else
	echo "Sucks for you"
fi
