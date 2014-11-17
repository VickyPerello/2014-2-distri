#!/bin/bash
#Por ahora este es el script que limpia todo.


killall openvpn


taps=`ifconfig | egrep "tap" | sed 's/^\([A-Za-z0-9]*\).*/\1/'`
for tap in $taps
do
	`ip route flush dev $tap`
done

interfaces=`ifconfig | egrep "eth" | sed 's/^\([A-Za-z0-9:]*\).*/\1/'`
for interfaz in $interfaces
do
	`ip addr flush "$interfaz"`
done
