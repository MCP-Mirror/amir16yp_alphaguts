#!/bin/bash

echo $(which java)

ls -la

/usr/bin/java -jar ./mcp.jar setup a1.2.6
sleep 1
/usr/bin/java -jar ./mcp.jar decompile
sleep 1
/usr/bin/java -jar ./mcp.jar applypatch
sleep 1
/usr/bin/java -jar ./mcp.jar recompile
sleep 1

echo "Manifest-Version: 1.0" > MANIFEST.MF
echo "Main-Class: net.minecraft.server.MinecraftServer" >> MANIFEST.MF

jar cfm server.jar MANIFEST.MF -C minecraft_server/bin/
