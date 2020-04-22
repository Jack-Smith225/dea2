setlocal enabledelayedexpansion
set "JAVA_ARG=-Xms512m -Xmx1024m -Xmn256m -Xss256k"
set "PRG=%~dp0"
set "BASE=%PRG:~0,-7%"
set "CLASS_PATH=%BASE%;%BASE%\cfg;%BASE%\cfg\locale"
for /R %BASE%\lib %%c in (*.jar) do (set "CLASS_PATH=!CLASS_PATH!;%%c")
java %JAVA_ARG% -classpath %CLASS_PATH% com.brilliance.eibs.main.Client %1 %2 %3
pause