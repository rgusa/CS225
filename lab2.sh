#!/bin/bash

echo "Please enter a number: "
read NUMBER

if [[ $((NUMBER%2)) -ne 0 ]];then
	echo "Odd"
else
	echo "Even"
fi
