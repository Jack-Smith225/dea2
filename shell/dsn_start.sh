#!/bin/sh

PID=`ps -ef |grep com.brilliance.eibs.main.Server |grep -v grep |awk '{print $2}'`

PRG="$0"
PRGDIR=`dirname "$PRG"`
EXECUTABLE=service.sh
if [ -z $PID ]; then
    if [ ! -x "$PRGDIR"/"$EXECUTABLE" ]; then
    	echo "Cannot find $PRGDIR/$EXECUTABLE"
    	echo "The file is absent or does not have execute permission"
    	echo "This file is needed to run this program"
    	exit 1
    fi
    nohup "$PRGDIR"/"$EXECUTABLE" >/dev/null 2>&1 &
    sleep 1
    PID=`ps -ef |grep com.brilliance.eibs.main.Server |grep -v grep |awk '{print $2}'`
    if [ -z $PID ]; then
        echo "Interface Platform failed to start."
	exit 1
    else
        echo "Interface Platform has been launched."
    fi
else
    echo "Interface platform already exists, you can not open another."
fi
exit 0
