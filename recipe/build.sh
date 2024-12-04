#!/bin/bash

set -eo pipefail

echo "CONDA_BUILD_CROSS_COMPILATION=$CONDA_BUILD_CROSS_COMPILATION"
echo "build_platform=$build_platform"
echo "target_platform=$target_platform"  # e.g., linux-aarch64
set -x
"${PYTHON}" -m pip install . --no-deps -vv
