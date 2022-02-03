chcp 65001

$INTERFACE="イーサネット"
Get-NetAdapter -Name $INTERFACE | Set-NetIPInterface -AddressFamily IPv4 -Dhcp Enabled
Get-NetAdapter -Name $INTERFACE | Remove-NetRoute -DestinationPrefix 0.0.0.0/0 -Confirm:$false
Get-NetAdapter -Name $INTERFACE | Set-DnsClientServerAddress -ResetServerAddresses -confirm:$false
