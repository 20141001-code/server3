@echo off

set RAM_MIN=2G
set RAM_MAX=4G
set SERVER_DIR=server
set JAR=%SERVER_DIR%\paper.jar

echo Starting Minecraft Server...

if not exist %SERVER_DIR% (
mkdir %SERVER_DIR%
)

if not exist %JAR% (
echo Server jar missing. Downloading...
powershell -Command "Invoke-WebRequest https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/416/downloads/paper-1.20.4-416.jar -OutFile %JAR%"
)

if not exist %SERVER_DIR%\eula.txt (
echo eula=true > %SERVER_DIR%\eula.txt
)

cd %SERVER_DIR%

java -Xms%RAM_MIN% -Xmx%RAM_MAX% -jar paper.jar nogui

pause
