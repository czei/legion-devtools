#!/bin/bash

# export LEGION_ROOT to point at your github fork or whatever you're working from
LEGION_ROOT="${LEGION_ROOT:-https://github.com/lane-webperformance}"

if [ -z "$1" ]; then
  git clone "$LEGION_ROOT/legion.git"
  git clone "$LEGION_ROOT/legion-capture.git"
  git clone "$LEGION_ROOT/legion-instrument.git"
  git clone "$LEGION_ROOT/legion-io.git"
  git clone "$LEGION_ROOT/legion-io-fetch.git"
  git clone "$LEGION_ROOT/legion-metrics.git"
  git clone "$LEGION_ROOT/legion-obstacle-course.git"
  git clone "$LEGION_ROOT/legion-starter-pack.git"

  exit 0
fi

if [ -d "$1" ]; then
  echo "$1 already exists." && exit 0
else
  git clone "$LEGION_ROOT/$1.git" && exit 0
fi

exit 1
