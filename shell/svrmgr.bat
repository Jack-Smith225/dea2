@ECHO OFF
SET HOST=127.0.0.1
SET PORT=6666
SET CLASS_PATH=..;../cfg;../cfg/locale;
SET CLASS_PATH=%CLASS_PATH%;../lib/be-esb-4.0.0.jar
SET CLASS_PATH=%CLASS_PATH%;../lib/commons-io-2.4.jar

java -classpath %CLASS_PATH% com.brilliance.eibs.main.ServerMgr %HOST% %PORT% %1