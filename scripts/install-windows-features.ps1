# Install Failover Clustering Feature

Write-Host "Installing Failover Clustering..."

Install-WindowsFeature -Name Failover-Clustering -IncludeManagementTools

Write-Host "Installation complete."