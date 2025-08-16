#!/usr/bin/env bash
set -e

echo "[*] QEMU ve websockify süreçleri sonlandırılıyor..."
pkill -f qemu-system-x86_64 || true
pkill -f websockify || true
