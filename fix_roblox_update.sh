#!/bin/bash

echo "Closing Roblox if running..."
killall Roblox 2>/dev/null

echo "Removing Roblox files and caches..."
rm -rf ~/Library/Application\ Support/Roblox
rm -rf ~/Library/Caches/com.roblox.*
rm -rf ~/Applications/Roblox.app

echo "Downloading latest Roblox..."
curl -o ~/Downloads/Roblox.dmg https://setup.rbxcdn.com/mac/Roblox.dmg

echo "Mounting Roblox installer..."
hdiutil attach ~/Downloads/Roblox.dmg

echo "Installing Roblox..."
cp -R /Volumes/Roblox/Roblox.app /Applications/

echo "Cleaning up..."
hdiutil detach /Volumes/Roblox
rm ~/Downloads/Roblox.dmg

echo "Launching Roblox..."
open /Applications/Roblox.app

echo "Done! Roblox has been reinstalled and launched."
