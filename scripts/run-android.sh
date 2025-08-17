#!/usr/bin/env bash
set -e
cd "$(dirname "$0")/.."

DISK="data/android-x86.qcow2"
ISO="data/android-x86.iso"
RAM="${RAM:-2048}"
CPUS="${CPUS:-2}"

if [ ! -f "$DISK" ]; then
  echo "[*] Sanal disk oluşturuluyor: $DISK (16G)"
  qemu-img create -f qcow2 "$DISK" 16G
fi

MODE="$1"

if [ "$MODE" = "--install" ]; then
  if [ ! -f "$ISO" ]; then
    echo "[!] ISO bulunamadı: $ISO"
    echo "    Önce: ./scripts/get-android-iso.sh"
    exit 1
  fi
  echo "[*] Kurulum modunda başlatılıyor..."
  qemu-system-x86_64 \
    -m "$RAM" -smp "$CPUS" \
    -machine pc,accel=tcg \
    -device VGA \
    -cdrom "$ISO" \
    -boot d \
    -drive file="$DISK",if=virtio,format=qcow2 \
    -net nic -net user \
    -vnc :0
else
  echo "[*] Normal modda başlatılıyor..."
  qemu-system-x86_64 \
    -m "$RAM" -smp "$CPUS" \
    -machine pc,accel=tcg \
    -device VGA \
    -drive file="$DISK",if=virtio,format=qcow2 \
    -net nic -net user \
    -vnc :0
fi
