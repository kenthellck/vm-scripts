$VMList = Get-Content ".\vmlist.txt"
$report = @()
foreach ($line in $VMList) {
Try{
GET-VM -Name $line -ErrorAction stop

}
Catch{
Write-host 'VM Not found'
}
}