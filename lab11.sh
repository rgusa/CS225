#!/bin/bash
source /root/bin/functionlibrary.sh

ctrlctrap

TIMEFILES=$(find /root/timefiles)

while getopts :fh: OPT ;do
        case $OPT in
                f) FORCE='true';;
                h) echo "LAB11.SH OPTIONS:
                        -h     displays help options
                        -f     turns force on";;
                \?) echo "The last option you used was unknown, use -h for help";;
        esac
done
        shift $(($OPTIND -1))

for LINE in $TIMEFILES; do
	if [ ! -d $LINE ];then
	timestamp
	directory
		if [ -z $FORCE ];then
			copy
		else
			move
		fi
	fi
done

cleanup
