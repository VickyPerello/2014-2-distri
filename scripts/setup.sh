#!/bin/bash
#Por ahora este es el script que limpia todo.

killall openvpn
openvpn --rmtun --dev tap0
openvpn --rmtun --dev tap1
openvpn --rmtun --dev tap2
openvpn --rmtun --dev tap3
openvpn --rmtun --dev tap11
openvpn --rmtun --dev tap12
openvpn --rmtun --dev tap13
