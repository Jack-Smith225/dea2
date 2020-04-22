setlocal enabledelayedexpansion
set "JAVA_ARG=-Xms1024m -Xmx1024m -Xmn256m -Xss256k"
set "PRG=%~dp0"
set "BASE=%PRG:~0,-7%"
set "CLASS_PATH=%BASE%;%BASE%\cfg;%BASE%\cfg\locale"
for /R %BASE%\lib %%c in (*.jar) do (set "CLASS_PATH=!CLASS_PATH!;%%c")
java %JAVA_ARG% -classpath %CLASS_PATH% com.brilliance.eibs.main.Server 6666

pause