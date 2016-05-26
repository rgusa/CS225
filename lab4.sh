#!/bin/bash

echo "Please enter an integer: "
read INPUT

if [ $INPUT -eq $INPUT 2>/dev/null ]
then
     echo "$INPUT is an integer"
else
    echo "$INPUT is not an integer"
fi
if [ $INPUT -ge 50 -a $INPUT -le 100 ];then
    echo "Nailed it!"
else
    echo "Sorry. You screwed up!"
fi

