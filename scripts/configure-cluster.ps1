# Configure Windows Failover Cluster

$nodes = "Node1","Node2"
$clusterName = "EDMSCluster"
$clusterIP = "10.0.0.100"

Write-Host "Validating cluster configuration..."
Test-Cluster -Node $nodes

Write-Host "Creating cluster..."
New-Cluster -Name $clusterName -Node $nodes -StaticAddress $clusterIP

Write-Host "Cluster created successfully."