#!/bin/bash
#Usage: por $1 pasas la dire de ip donde corre la topologia


killall openvpn
openvpn --rmtun --dev tap0
openvpn --rmtun --dev tap1
openvpn --rmtun --dev tap2
openvpn --rmtun --dev tap3
openvpn --rmtun --dev tap11
openvpn --rmtun --dev tap12
openvpn --rmtun --dev tap13


openvpn --remote $1 --port 1984 --dev tap1 --ifconfig 192.168.45.1 255.255.255.0 245.2.18.82 &
sleep 25


route add -net 10.8.207.0 netmask 255.255.255.224 gw 192.168.45.2 metric 1
route add -net 10.79.7.0 netmask 255.255.255.0 gw 192.168.45.5 metric 1
route add -net 10.8.207.32 netmask 255.255.255.224 gw 192.168.45.11 metric 1
route add -net 10.51.111.0 netmask 255.255.255.0 gw 192.168.45.11 metric 1
route add -net 10.8.207.128 netmask 255.255.255.128 gw 192.168.45.11 metric 1
route add -net 10.8.210.0 netmask 255.255.255.224 gw 192.168.45.11 metric 1
route add -net 10.8.210.32 netmask 255.255.255.224 gw 192.168.45.11 metric 1
route add -net 10.8.207.64 netmask 255.255.255.192 gw 192.168.45.11 metric 1
route add -net 10.8.11.0 netmask 255.255.255.0 gw 192.168.45.11 metric 1
route add -net 10.8.210.68 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 10.8.210.72 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 10.8.210.76 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 10.8.210.80 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 10.8.210.84 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 10.8.210.88 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 10.8.210.92 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 10.8.210.64 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 172.19.3.64 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 172.19.3.68 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 172.19.3.72 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 172.19.3.76 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 172.19.3.80 netmask 255.255.255.252 gw 192.168.45.4 metric 1
route add -net 172.19.3.84 netmask 255.255.255.252 gw 192.168.45.4 metric 1
route add -net 172.19.3.88 netmask 255.255.255.252 gw 192.168.45.4 metric 1
route add -net 172.19.3.92 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 172.19.3.96 netmask 255.255.255.252 gw 192.168.45.11 metric 1
route add -net 172.19.3.100 netmask 255.255.255.252 gw 192.168.45.11 metric 1

cp index.html /var/www/

