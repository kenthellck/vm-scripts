$VMList = Get-Content ".\vmlist.txt"
$report = @()
foreach ($line in $VMList) {
Try{
Get-VM -Name $line -ErrorAction stop | Get-TagAssignment | ft -autosize 
}
Catch{
Write-host $line - 'VM Not found'
}
}