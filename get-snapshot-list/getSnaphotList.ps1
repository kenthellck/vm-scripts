$VMList = Get-Content ".\vmlist.txt"
$report = @()
foreach ($line in $VMList) {
Try{
Get-VM -Name $line -ErrorAction stop | Get-Snapshot | select VM, Name, Created 
}
Catch{
Write-host $line - 'VM Not found'
}
}