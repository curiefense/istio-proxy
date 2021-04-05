#!/bin/bash
cd "${0%/*}" || exit 1
export PATH=/opt/llvm/bin:$PATH
make build_envoy
cp bazel-out/k8-opt/bin/src/envoy/envoy cf-out
