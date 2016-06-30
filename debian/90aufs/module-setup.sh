#!/bin/bash

check() {
    # do not add modules if the kernel does not have aufs support
    [ -d /lib/modules/$kernel/kernel/fs/aufs ] || return 1
}

depends() {
    # We do not depend on any modules - just some root
    return 0
}

# called by dracut
installkernel() {
    instmods aufs
}

install() {
    inst_hook pre-pivot 10 "$moddir/aufs-mount.sh"
}
