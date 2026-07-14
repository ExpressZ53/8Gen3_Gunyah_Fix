#!/usr/bin/env bash
set -euo pipefail

MODULE_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

cd "${KERNEL_ROOT}/common/drivers/virt/gunyah"

patch -p0 < "${MODULE_DIR}/patches/*.patch"

if [ $? == 0 ];then
echo "Patched Successfully!"
else
echo "Patch Failed!"
exit 1
fi