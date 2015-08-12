#!/bin/bash

depends() {
    # We depend on nfs modules being loaded
    echo nfs
    return 0
}

install() {

    inst_hook pre-pivot 10 "$moddir/aufs-mount.sh"
}
