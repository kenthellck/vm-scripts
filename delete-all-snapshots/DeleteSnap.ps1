$VMList = Get-Content ".\vmlist.txt"
$report = @()

foreach ($line in $VMList) {
Try{
Get-VM -Name $line | Get-Snapshot | Remove-Snapshot -Confirm:$false  
}
Catch{
Write-host $line - 'VM or Snapshot Not found'
}
}