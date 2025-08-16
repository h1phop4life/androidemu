#!/usr/bin/env bash
set -e
# QEMU VNC 5900 -> noVNC 6080
# VS Code/Codespaces "PORTS" panelinden 6080'i açacaksın.
echo "[*] noVNC 6080 portunda açılıyor..."
websockify --web /usr/share/novnc 6080 localhost:5900
