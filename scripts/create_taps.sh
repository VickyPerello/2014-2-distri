#!/bin/bash
sudo killall openvpn
openvpn --rmtun --dev tap0
openvpn --rmtun --dev tap1
openvpn --rmtun --dev tap2
openvpn --rmtun --dev tap3
openvpn --rmtun --dev tap11
openvpn --rmtun --dev tap12
openvpn --rmtun --dev tap13



# Generar los taps
echo Generando taps...
sleep 1

#Servers
openvpn --remote $1 --port 1983 --dev tap0 --ifconfig 245.2.18.82 255.255.255.0 10.8.11.1 &
openvpn --remote $1 --port 1984 --dev tap1 --ifconfig 245.2.18.82 255.255.255.0 192.168.45.1 &
openvpn --remote $1 --port 1985 --dev tap3 --ifconfig 245.2.18.82 255.255.255.0 10.51.111.130 &
openvpn --remote $1 --port 1986 --dev tap2 --ifconfig 245.2.18.82 255.255.255.0 10.8.207.129 &

#Hosts
openvpn --remote $2 --port 2001 --dev tap11 --ifconfig 245.2.18.82 255.255.255.0 10.79.7.200 &
openvpn --remote $2 --port 2002 --dev tap12 --ifconfig 245.2.18.82 255.255.255.0 10.51.111.200 &
openvpn --remote $2 --port 2003 --dev tap13 --ifconfig 245.2.18.82 255.255.255.0 10.8.207.120 &

