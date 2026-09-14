#!/bin/bash
set -e

ROOT="$(cd "$(dirname "$0")/../../../../" && pwd)"
FILE="$ROOT/hardware/qcom-caf/sm8650/display/libvmmem/Android.bp"
BACKUP="$ROOT/hardware/qcom-caf/sm8650/display/libvmmem/Android.bp_"

if [ -f "$FILE" ]; then
    mv "$FILE" "$BACKUP"
    echo "[lexus] Disabled duplicate libvmmem Android.bp"
elif [ -f "$BACKUP" ]; then
    echo "[lexus] Duplicate libvmmem Android.bp already disabled"
else
    echo "[lexus] libvmmem Android.bp not found"
fi
