PRG="$0"
PRGDIR=`dirname "$PRG"`

[ -z "$INTACEHOME" ] && INTACEHOME=`cd "$PRGDIR/.." >/dev/null; pwd`

CLASS_PATH=$INTACEHOME:$INTACEHOME/cfg:$INTACEHOME/cfg/locale
for jar in `find $INTACEHOME/lib |grep -E "bridsn|commons-io"`
do
	CLASS_PATH=$CLASS_PATH:$jar
done


if [ -z "$INTACEHOST" ]; then 
	INTACEHOST=127.0.0.1
fi
if [ -z "$INTACEPORT" ]; then
	INTACEPORT=10001
fi

java -classpath $CLASS_PATH com.brilliance.eibs.main.ServerMgr $INTACEHOST $INTACEPORT "$1"
