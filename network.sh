#!/bin/bash
ip link del dev local
ip link add local type dummy
ip addr add dev local 192.175.48.1/32       #  prisoner.iana.org (anycast)
ip addr add dev local 2620:4f:8000::1/128   #  prisoner.iana.org (anycast)
ip addr add dev local 192.175.48.6/32       #  blackhole-1.iana.org (anycast)
ip addr add dev local 2620:4f:8000::6/128   #  blackhole-1.iana.org (anycast)
ip addr add dev local 192.175.48.42/32      #  blackhole-2.iana.org (anycast)
ip addr add dev local 2620:4f:8000::42/128  #  blackhole-2.iana.org (anycast)
ip addr add dev local 192.31.196.1/32       #  blackhole.as112.arpa (anycast)
ip addr add dev local 2001:4:112::1/128     #  blackhole.as112.arpa (anycast)
ip link set dev local up
