#! /bin/bash

swapoff -a
sed -i '/swap/d' /etc/fstab
systemctl disable --now firewalld
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
setenforce 0
