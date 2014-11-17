#!/bin/bash
#Usage: pasar como $1 la dire posta de ip de la compu donde corre apache

openvpn --remote $1 --dev tap1 port 1984 245.2.18.82 255.255.255.0 192.168.45.1
#245.2.18.82 es inventada
#192.168.45.1 es enunciado


