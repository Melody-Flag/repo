#! /bin/bash
cd `dirname $0`

mkdir ../x86_64
mv *-x86_64.pkg.tar.xz ../x86_64/
mv *-x86_64.pkg.tar.xz.sig ../x86_64/
repo-add ../x86_64/melody-flag.db.tar.gz ../x86_64/*.pkg.tar.xz --sign --verify