# Failover Testing Procedure

## Objective
To verify automatic failover between cluster nodes.

---

## Test Scenarios

### 1. Manual Failover

```powershell
Move-ClusterGroup -Name "EDMS Role"

Expected:

Role moves to secondary node

No data loss

### 2. Simulated Failure

Shutdown primary node

***Expected:

Secondary node becomes active

Service restored within seconds

### 3. Network Failure

Disconnect primary node network

***Expected:

Cluster detects failure

Failover triggered

***Validation Checklist

Application accessible

Documents intact

No authentication issues

Logs show failover event

### Result

System successfully maintains uptime during failures.