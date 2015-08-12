#!/bin/sh

# make a read-only nfsroot writeable by using aufs
# the nfsroot is already mounted to $NEWROOT
# add the parameter aufs to the kernel, to activate this feature

. /lib/dracut-lib.sh

aufs=$(getargs aufs)

if [ -z "$aufs" ] ; then
    return
fi

modprobe aufs

# a little bit tuning
mount -o remount,nolock,noatime $NEWROOT

mkdir -p /live/image
mount --move $NEWROOT /live/image

mkdir /cow
mount -n -t tmpfs -o mode=0755 tmpfs /cow

mount -t aufs -o noatime,noxino,dirs=/cow=rw:/live/image=rr aufs $NEWROOT

mkdir -p $NEWROOT/live/cow
mkdir -p $NEWROOT/live/image
mount --move /cow $NEWROOT/live/cow
mount --move /live/image $NEWROOT/live/image
