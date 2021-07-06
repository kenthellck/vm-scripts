$VMList = Get-Content ".\vmlist.txt"
$report = @()
$snapshot_name= "Chage0001"
$snapshot_Description="Don't delete the snapshot, Contact SREPOD3"

foreach ($line in $VMList) {
Try{
New-Snapshot -VM $line -Name $snapshot_name -Description $snapshot_Description -ErrorAction stop | ft -autosize 
}
Catch{
Write-host $line - 'VM Not found'
}
}