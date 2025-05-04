#!/bin/bash

echo "[*] Closing Roblox..."
killall Roblox 2>/dev/null

echo "[*] Removing Roblox files..."
rm -rf ~/Applications/Roblox.app \
       ~/Library/Application\ Support/Roblox \
       ~/Library/Caches/com.roblox.* \
       ~/Library/Saved\ Application\ State/com.roblox.* \
       ~/Library/Preferences/com.roblox.* \
       ~/Library/Logs/Roblox

echo "[*] Downloading Roblox installer..."
curl -sSL -o ~/Downloads/Roblox.dmg https://setup.rbxcdn.com/mac/Roblox.dmg

echo "[*] Mounting installer..."
hdiutil attach ~/Downloads/Roblox.dmg -nobrowse -quiet

echo "[*] Installing Roblox..."
cp -R /Volumes/Roblox/Roblox.app /Applications/

echo "[*] Cleaning up..."
hdiutil detach /Volumes/Roblox -quiet
rm ~/Downloads/Roblox.dmg

echo "[*] Allowing Roblox through Gatekeeper..."
xattr -dr com.apple.quarantine /Applications/Roblox.app

echo "[*] Launching Roblox..."
open /Applications/Roblox.app

echo "[✓] Roblox has been fixed and relaunched."
