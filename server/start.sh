#!/bin/bash

RAM_MIN="2G"
RAM_MAX="4G"
SERVER_DIR="server"
JAR="$SERVER_DIR/paper.jar"

echo "Starting Minecraft Server..."

mkdir -p $SERVER_DIR

if [ ! -f "$JAR" ]; then
echo "Server jar missing. Downloading PaperMC..."
bash download_server.sh
fi

if [ ! -f "$SERVER_DIR/eula.txt" ]; then
echo "eula=true" > "$SERVER_DIR/eula.txt"
fi

cd $SERVER_DIR

java -Xms$RAM_MIN -Xmx$RAM_MAX -jar paper.jar nogui

