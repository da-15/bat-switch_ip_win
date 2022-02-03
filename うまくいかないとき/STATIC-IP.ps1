chcp 65001

$INTERFACE="イーサネット"
Get-NetAdapter -Name $INTERFACE | Remove-NetIPAddress -AddressFamily IPv4 -Confirm:$false
Get-NetAdapter -Name $INTERFACE | Remove-NetRoute -AddressFamily IPv4 -Confirm:$false
Get-NetAdapter -Name $INTERFACE | New-NetIPAddress -AddressFamily IPv4 -IPAddress xxx.xxx.xxx.xxx -PrefixLength 24 -DefaultGateway xxx.xxx.xxx.xxx
Get-NetAdapter -Name $INTERFACE | Set-DnsClientServerAddress -ServerAddresses xxx.xxx.xxx.xxx,xxx.xxx.xxx.xxx
$host.UI.RawUI.ReadKey()
