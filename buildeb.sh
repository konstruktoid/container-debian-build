#!/bin/bash

release="jessie"
mirror="ftp://ftp.se.debian.org/debian/"

cmd="debootstrap"
dir="./$release"

if [[ "$(echo $EUID)" != "0" ]]; then
  echo "Not root. Exiting."
  exit 1
fi

if [[ $(which $cmd) ]]; then
  echo "$cmd is installed. Moving on."
  else
  echo "$cmd not installed. Installing."
  apt-get update
  apt-get install $cmd
fi

mkdir -p $dir

debootstrap --arch=amd64 --variant=minbase $release $dir $mirror

if [[ "$(echo $?)" -ne "0" ]]; then
  echo -e "Something broke. Try running the script again.\nExiting."
  exit
fi

hosts="
127.0.0.1 localhost\n
::1 localhost ip6-localhost ip6-loopback\n
ff02::1 ip6-allnodes\n
ff02::2 ip6-allrouters\n
"

echo -e $hosts | sed 's/^ //g' > $dir/etc/hosts

echo $'#!/bin/sh\nexit 101' | sudo tee $dir/usr/sbin/policy-rc.d > /dev/null
chmod +x $dir/usr/sbin/policy-rc.d

chroot $dir dpkg-divert --local --rename --add /sbin/initctl
chroot $dir ln -sf /bin/true sbin/initctl

chroot $dir apt-get update
chroot $dir apt-get -y upgrade
chroot $dir apt-get clean

rm -rf $dir/dev $dir/proc
mkdir -p $dir/dev $dir/proc

rm -rf $dir/var/lib/apt/lists/*
rm -rf $dir/usr/share/doc $dir/usr/share/doc-base \
  $dir/usr/share/man $dir/usr/share/locale $dir/usr/share/zoneinfo

echo ".git" > .dockerignore

if [[ $(ls -1 *.txz 2>/dev/null) ]]; then
  for t in $(ls -1 *.txz); do
    echo "$t" >> .dockerignore
  done
fi

date="$(date +%y%m%d%H%M)"
tar --numeric-owner -caf "$release-$date.txz" -C "$dir" --transform='s,^./,,' .

SHA="$(openssl sha1 -sha256 "$release-$date.txz" | awk '{print $NF}')"

dockerfile="
FROM scratch\n
ADD ./$release-$date.txz /\n
ENV SHA $SHA\n
"

echo -e $dockerfile | sed 's/^ //g' > Dockerfile

rm -rf $dir
