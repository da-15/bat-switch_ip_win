@echo off
chcp 65001

cd %~dp0
powershell -NoProfile -ExecutionPolicy Unrestricted .\NORMAL2.ps1

pause