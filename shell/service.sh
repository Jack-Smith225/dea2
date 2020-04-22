#!/bin/sh

if [ -z "$INTACEPORT" ]; then
	INTACEPORT=10001
fi
PRG="$0"
PRGDIR=`dirname "$PRG"`
SETENV=setenv.sh
JAVA_ARG="-server"
. "$PRGDIR"/"$SETENV"
exec java $JAVA_ARG -classpath $CLASS_PATH com.brilliance.eibs.main.Server $INTACEPORT
