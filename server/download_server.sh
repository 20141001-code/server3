#!/bin/bash

SERVER_DIR="server"

URL="https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/416/downloads/paper-1.20.4-416.jar"

mkdir -p $SERVER_DIR

echo "Downloading PaperMC server..."
curl -L -o $SERVER_DIR/paper.jar $URL

echo "Download complete."
