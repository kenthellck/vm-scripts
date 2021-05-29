$VMList = Get-Content ".\vmlist.txt"
$report = @()
foreach ($line in $VMList) {
Try{
Remove-VM -VM $line -DeleteFromDisk -Confirm:$false -ErrorAction stop
}
Catch{
Write-host 'VM Not found'
}
}