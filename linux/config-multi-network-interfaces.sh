#!/bin/bash
var=$1
sudo route del default;
sudo route del -net 10.0.0.0 netmask 255.0.0.0;
sudo route del -net 10.66.0.0 netmask 255.255.0.0;
sudo route add -net default netmask 0.0.0.0 gw 10.66.$var.1 dev wlan1;
sudo route add -net 10.0.0.0 netmask 255.0.0.0 gw 10.16.93.1 dev eth0;
sudo route add -net 10.66.0.0 netmask 255.255.0.0 gw 10.66.$var.1 dev wlan1;
