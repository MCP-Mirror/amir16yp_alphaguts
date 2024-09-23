#!/bin/bash

java -jar ./mcp.jar setup a1.2.6
java -jar ./mcp.jar decompile
java -jar ./mcp.jar applypatch
java -jar ./mcp.jar recompile

echo "Manifest-Version: 1.0" > MANIFEST.MF
echo "Main-Class: net.minecraft.server.MinecraftServer" >> MANIFEST.MF

jar cfm server.jar MANIFEST.MF -C minecraft_server/bin/
