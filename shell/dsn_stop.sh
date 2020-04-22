#!/bin/sh

PID=`ps -ef |grep com.brilliance.eibs.main.Server |grep -v grep |awk '{print $2}'`

if [ -z $PID ]; then
	echo "Interface platform does not start."
elif kill -15 $PID ; then
	echo "Interface Platform is closed."
else
	echo "Interface platform close failed."
	exit 1
fi
exit 0
