#!/bin/sh

PRG="$0"
PRGDIR=`dirname "$PRG"`
SETENV=setenv.sh
JAVA_ARG="-Xms256m -Xms256m -Xmn128m -Xss256k"
. "$PRGDIR"/"$SETENV"
java $JAVA_ARG -classpath $CLASS_PATH com.brilliance.eibs.main.Client $1 $2 $3
exit $?
