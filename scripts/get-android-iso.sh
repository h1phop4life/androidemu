#!/usr/bin/env bash
set -e
cd "$(dirname "$0")/.."

# önerilen mirror (SourceForge)
ISO_URL="${1:-https://sourceforge.net/projects/android-x86/files/Release%204.4/android-x86-4.4-r5.iso/download}"

OUT="data/android-x86.iso"

echo "[*] ISO indiriliyor: $ISO_URL"
wget -O "$OUT" "$ISO_URL"
echo "[+] ISO kaydedildi: $OUT"
