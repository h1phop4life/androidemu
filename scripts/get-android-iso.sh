#!/usr/bin/env bash
set -e
cd "$(dirname "$0")/.."

ISO_URL="${1:-https://mirrors.ocf.berkeley.edu/android-x86/4.4-r5/android-x86-4.4-r5.iso}"
OUT="data/android-x86.iso"

echo "[*] ISO indiriliyor: $ISO_URL"
wget -O "$OUT" "$ISO_URL"
echo "[+] ISO kaydedildi: $OUT"
