***Electronic Document Management System (EDMS)

***📅 Jan 2021 – Mar 2021
***🏢 Associated with Plexada System Integrators Ltd

***🚀 Project Overview

Designed and deployed a highly available Electronic Document Management System (EDMS) infrastructure to ensure continuous access to critical enterprise documents, even during system failures.

The solution focused on high availability, fault tolerance, and disaster recovery, leveraging enterprise-grade Microsoft technologies and cloud infrastructure.

***🧱 Architecture Highlights

Implemented a Windows Server Failover Cluster for high availability

Designed active-passive node architecture for redundancy

Ensured automatic failover with minimal downtime

Integrated storage for consistent document access across nodes

Configured network-level fault tolerance

***⚙️ Key Responsibilities

Installed and configured Windows Server cluster nodes

Set up Failover Clustering roles and quorum configuration

Configured shared storage for EDMS application

Performed failover testing and validation

## 👨‍💻 Author

Oyewole Olatokun  
DevOps Engineer

Implemented system monitoring and health checks

Assisted with deployment on cloud-backed infrastructure (AWS)

***🛠️ Technologies Used

Microsoft Windows Server

Failover Clustering

Microsoft SQL Server

Active Directory

Networking & Storage Configuration

***📈 Impact

Achieved near-zero downtime during system failures

Improved system reliability and document accessibility

Delivered a production-grade enterprise infrastructure solution

Reduced operational risk for critical document workflows

***🧠 Key DevOps Concepts Demonstrated

High Availability (HA)

Fault Tolerance

Disaster Recovery Planning

Infrastructure Design

Systems Administration

***📊 🧱 ARCHITECTURE DIAGRAM

                ┌──────────────────────────────┐
                │          End Users           │
                │   (Internal Staff / Admin)   │
                └──────────────┬───────────────┘
                               │
                               ▼
                ┌──────────────────────────────┐
                │        Load Balancer         │
                │   (Windows NLB / DNS)        │
                └──────────────┬───────────────┘
                               │
                ┌──────────────┴──────────────┐
                │                             │
                ▼                             ▼
     ┌──────────────────────┐     ┌──────────────────────┐
     │   Node 1 (Primary)   │     │  Node 2 (Secondary)  │
     │  Windows Server      │     │  Windows Server      │
     │  EDMS Application    │     │  EDMS Application    │
     └──────────┬───────────┘     └──────────┬───────────┘
                │                             │
                └──────────────┬──────────────┘
                               │
                               ▼
                ┌──────────────────────────────┐
                │     Shared Storage (SAN)     │
                │  Central Document Repository │
                └──────────────┬───────────────┘
                               │
                               ▼
                ┌──────────────────────────────┐
                │     Database Server (SQL)    │
                │ Metadata & Access Control    │
                └──────────────────────────────┘
				
📊 🔁 FAILOVER FLOW DIAGRAM
        ┌────────────────────────────┐
        │        Client Request      │
        └─────────────┬──────────────┘
                      │
                      ▼
        ┌────────────────────────────┐
        │ Load Balancer / DNS        │
        └─────────────┬──────────────┘
                      │
                      ▼
        ┌────────────────────────────┐
        │ Primary Node (Active)      │
        │ EDMS Running               │
        └─────────────┬──────────────┘
                      │
          ┌───────────▼───────────┐
          │ Health Check Fails ❌ │
          └───────────┬───────────┘
                      │
                      ▼
        ┌────────────────────────────┐
        │ Failover Triggered         │
        │ (Cluster Service)          │
        └─────────────┬──────────────┘
                      │
                      ▼
        ┌────────────────────────────┐
        │ Secondary Node Promoted    │
        │ Becomes Active ✅          │
        └─────────────┬──────────────┘
                      │
                      ▼
        ┌────────────────────────────┐
        │ Traffic Redirected         │
        │ Service Restored           │
        └────────────────────────────┘

***🔄 🔁 ARCHITECTURE FLOW (HOW IT WORKS)
***🧑‍💻 1. User Request

Users access EDMS via internal network / browser

Requests go through DNS or Windows Network Load Balancer

***⚖️ 2. Traffic Distribution

Load balancer routes traffic to:

Primary node (active)

Secondary node (standby)

***🖥️ 3. Application Layer

EDMS runs on Windows Server Failover Cluster

Only one node actively serves at a time

If primary fails → automatic failover to secondary

***💾 4. Shared Storage Layer

Both nodes connect to:

Centralized storage (SAN/NAS)

Ensures:

Consistent document access

No duplication

Real-time sync

***🗄️ 5. Database Layer

Stores:

Document metadata

User permissions

Audit logs

***🔁 6. Failover Mechanism

If:

Primary Node Fails ❌

Then:

Secondary Node Automatically Takes Over ✅

✔ No manual intervention
✔ Minimal downtime

***⚙️ 🧰 INFRASTRUCTURE COMPONENTS
***🖥️ Compute

Windows Server (Cluster Nodes)

***🔁 High Availability

Windows Failover Clustering

***💾 Storage

Shared SAN/NAS

***🌐 Networking

Load Balancer / DNS Failover

***☁️ Cloud Layer

Hosted on AWS infrastructure

## 👨‍💻 Author

Oyewole Olatokun  
DevOps Engineer
