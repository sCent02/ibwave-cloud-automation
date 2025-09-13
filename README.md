# iBwave Cloud Automation Project 🚀

## Problem
RF engineers at Twincom rely on heavy simulation workloads in iBwave Unity.
Local machines and RDP to on-prem servers are inefficient, costly, and hard to scale.

## Solution
This project demonstrates how to move iBwave to the cloud using AWS:
- **EC2/AppStream** for simulation workloads.
- **License Server in Cloud** for global access.
- **Automation via Terraform + Lambda** to start/stop instances on demand.
- **CI/CD pipeline** to automatically run RF simulations and save results.

## Business Value
✅ Cost Savings — Only pay for compute when needed.  
✅ Efficiency — Engineers access via browser instead of manual RDP.  
✅ Scalability — Run parallel simulations for multiple engineers.  
✅ Security — IAM + SSM instead of open RDP ports.  

## Architecture
![Architecture](architecture-diagram.png)
