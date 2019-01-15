#!/usr/bin/env bash

cat >> /etc/sysctl.conf << EOF
net.core.default_qdisc=fq
net.ipv4.tcp_congestion_control=bbr
pv4.tcp_fastopen = 3
EOF

sysctl -p
lsmod | grep bbr
