#!/bin/bash
set -e
git clone https://github.com/pulp-platform/cheshire.git
cd cheshire
git submodule update --init --recursive sw/deps/cva6-sdk
git apply --directory=./  ../diffs/cheshire.diff
git apply --directory=./sw/deps/cva6-sdk  ../diffs/cva6-sdk.diff
git apply --directory=./sw/deps/cva6-sdk/buildroot  ../diffs/buildroot.diff