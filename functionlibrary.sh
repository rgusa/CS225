#!/bin/bash

ctrlctrap()
{
	trap "echo Stop that" SIGINT
}

cleanup()
{
	rm -rf /tmp/tmp.*
}

timestamp()
{
	DATE=$(date +%D -r $LINE)
        YEAR=${DATE%%/*}
        DATE=${DATE#*/}
        DAY=${DATE%%/*}
        DATE=${DATE#*/}
        MONTH=$DATE
}

directory()
{
	 if [ ! -d "$HOME/$YEAR/$MONTH/$DAY" ]
         then
         mkdir -p "$HOME/$YEAR/$MONTH/$DAY"
	 fi
}

copy()
{
	cp $LINE "$HOME/$YEAR/$MONTH/$DAY"
}

move()
{
	mv $LINE "$HOME/$YEAR/$MONTH/$DAY"
}

