#!/usr/bin/env bash
set -euo pipefail

MODULE_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

abk_require_env KERNEL_ROOT

cd ${KERNEL_ROOT}/drivers/virt/gunyah

patch -p0 < ${MODULE_DIR}/patches/*.patch

if [ $? == 0 ];then
abk_log "Patched Successfully!"
else
abk_log "Patch Failed!"
exit 1
fi