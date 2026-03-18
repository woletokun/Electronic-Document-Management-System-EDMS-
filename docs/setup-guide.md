# EDMS Infrastructure Setup Guide

## Overview
This document describes the deployment of a highly available EDMS system using Windows Failover Clustering.

---

## Prerequisites

- 2 Windows Server instances
- Static IP addresses
- Domain-joined servers
- Shared storage (SAN/NAS)
- Administrative privileges

---

## Step 1: Install Required Features

```powershell
Install-WindowsFeature -Name Failover-Clustering -IncludeManagementTools

## Step 2: Validate Cluster Configuration

Test-Cluster -Node Node1,Node2

## Step 3: Create Cluster

New-Cluster -Name EDMSCluster -Node Node1,Node2 -StaticAddress 10.0.0.100

## Step 4: Configure Shared Storage

Attach shared disk

Bring disk online

Add disk to cluster

Step 5: Configure Failover Roles

Add EDMS application role

Assign shared storage

Set preferred owner

Step 6: Test Failover
Move-ClusterGroup -Name "EDMS Role"

***Outcome

Automatic failover enabled

High availability achieved