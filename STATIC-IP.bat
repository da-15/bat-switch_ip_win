@echo off
chcp 65001

set INTERFACE="イーサネット"
netsh interface ipv4 set address name=%INTERFACE% source=static xxx.xxx.xxx.xxx xxx.xxx.xxx.xxx xxx.xxx.xxx.xxx
netsh interface ipv4 set dns     name=%INTERFACE% source=static addr=xxx.xxx.xxx.xxx register=primary validate=no
netsh interface ipv4 add dns     name=%INTERFACE% addr=xxx.xxx.xxx.xxx index=2 validate=no
pause

