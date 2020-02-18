#! /bin/bash
cd `dirname $0`

function sclean() {
    rm -rf ./jlu-http-proxy
    rm -rf ./pkg
    rm -rf ./src
}

function sremove() {
    repo-remove  ../../melody-flag.db.tar.gz jlu-http-proxy
    rm -rf ./*.tar.xz
    rm -rf ./*.sig
}

function sadd() {
  repo-add ../../melody-flag.db.tar.gz ./*.pkg.tar.xz --sign --verify
}

function smake() {
  makepkg --sign -f 
}

sclean
sremove
smake
sadd
sclean
