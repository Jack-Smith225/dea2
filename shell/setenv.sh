#!/bin/sh

PRG="$0"
PRGDIR=`dirname "$PRG"`

[ -z "$INTACEHOME" ] && INTACEHOME=`cd "$PRGDIR/.." >/dev/null; pwd`

CLASS_PATH=$INTACEHOME:$INTACEHOME/cfg:$INTACEHOME/cfg/locale:$INTACEHOME/shell
for jar in `ls $INTACEHOME/lib/*.jar`
do
	CLASS_PATH=$CLASS_PATH:$jar
done

