# Mount Shared Storage

Write-Host "Listing available disks..."
Get-Disk

Write-Host "Bringing disk online..."
Get-Disk | Where-Object IsOffline -Eq $true | Set-Disk -IsOffline $false

Write-Host "Initializing disk..."
Get-Disk | Where-Object PartitionStyle -Eq 'RAW' | Initialize-Disk -PartitionStyle GPT

Write-Host "Creating volume..."
New-Volume -DiskNumber 1 -FileSystem NTFS -FriendlyName "EDMSStorage"

Write-Host "Storage configured successfully."