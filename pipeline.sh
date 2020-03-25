#!/usr/bin/env bash

set -e

make -j2 --output-sync=line \
  lint.commit \
  lint.shellcheck

make test.unit
    
make -j6 --output-sync=line \
  bash.v5-0 \
  bash.v4-4 \
  bash.v4-3 \
  bash.v4-2 \
  bash.v4-1 \
  bash.v4-0

make -j7 --output-sync=line \
  examples.simple \
  examples.service \
  examples.dind \
  examples.escapes \
  examples.stdout \
  examples.shell \
  examples.pipeline

