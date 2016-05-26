#!/bin/bash

while getopts :dvhn:l: opt ;do
        case $opt in
                d) set -x ;;
                v) VERBOSE=true
		echo "VERBOSE has been set to true" ;;
                h) echo "Your options are:
		 -d Turning on Debugging
		 -v Setting Verbose to TRUE
		 -h Help 
		 -n Entering a name 
		 -l DIR (Directory Required)" ;;
                n) ARG=$OPTARG 
		echo "$ARG is the name entered" ;;
                l) 	DIR=$OPTARG
			if [[ -z $DIR ]] ;then
				echo "You did not enter a path"
			fi
			echo "Would you like to go into $DIR? (Yes or No)" 
			read ENTRY 
			if echo $ENTRY | grep -iq "^y" ;then
				ls $DIR/*
			else 
				exit 1 
			fi ;;
		\?) echo "Not a valid option" ;;
        esac
done
shift $(($OPTIND-1))
