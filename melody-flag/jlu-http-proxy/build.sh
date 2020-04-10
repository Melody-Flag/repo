#!/bin/bash
cd `dirname $0`

function clean() {
    rm -rf ./jlu-http-proxy
    rm -rf ./pkg
    rm -rf ./src
}

makepkg --printsrcinfo > .SRCINFO
makepkg --sign -f 
mv ./*.tar.xz ../../packages/
mv ./*.sig ../../packages/
clean
