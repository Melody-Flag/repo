#! /bin/bash

function build() {
  echo "Started building $1..."
  $("./melody-flag/$1/build.sh")
  echo "Package $1 built."
}

# Enter current path
cd `dirname $0`

# Clean
./clean.sh

# Packages
build "jlu-http-proxy"

# Add built packages to db
## x86_64
./packages/x86_64.sh