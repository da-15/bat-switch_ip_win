@echo off
chcp 65001

set INTERFACE="イーサネット"
netsh interface set interface name=%INTERFACE%  disable
netsh interface set interface name=%INTERFACE%  enable
netsh interface ipv4 set address name=%INTERFACE% source=dhcp
netsh interface ipv4 set dns     name=%INTERFACE% source=dhcp

pause