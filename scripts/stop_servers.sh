#!/bin/bash




#TODO: cuando este hecho, desde aca matamos los servers




#Destruir interfaces
echo Dando de baja todas las intefaces...
sudo ifconfig tap0 down #Servers
sudo ifconfig tap1 down
sudo ifconfig tap2 down
sudo ifconfig tap3 down

sudo ifconfig tap11 down #hosts
sudo ifconfig tap12 down
sudo ifconfig tap13 down

# Destruir los taps
echo Destruyendo taps...
sleep 1
sudo openvpn --rmtun --dev tap0 & #Servers
sudo openvpn --rmtun --dev tap1 &
sudo openvpn --rmtun --dev tap2 &
sudo openvpn --rmtun --dev tap3 &

sudo openvpn --rmtun --dev tap11 & #Hosts
sudo openvpn --rmtun --dev tap12 &
sudo openvpn --rmtun --dev tap13 &

# Matar todos los procesos
echo Matando todos los procesos de openvpn...
sudo pkill -9 openvpn


