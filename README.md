# DEMO MONITORING and SECURING MODERN WORKLOADS


## SYSDIG DEMO 
<img width="200" alt="portfolio_view" src="https://mp.s81c.com/pwb-production/6d573379fb3b78d05f6cd4de8959ca43/offering_824fa94c-bd7f-4568-ae8b-832998c3446b.png">

<img width="400" alt="portfolio_view" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTz5de0YhxIMgCGCBZk6gebZtVy7yUD7PXoVohE6afyj47b1PCa">

## AGENDA
1. What and Who is Sysdig ?
2. How do we do that ?
3. Sysdig Overview and Value proposition
4. Sysdig Monitoring & Security & Forensic 
5. Sysdig Subscription Models and Services  

 https://drive.google.com/drive/folders/1cpsfhZ7h0wyCN4Pb1eat18jSq8XaFUID



## DEMO BEGINS 

Sysdig Monitoring 

- Agent overview 
  - Unified daemon set 
  - Less resource savvy, About 2 % of total CPU/Mem
  
- Deployment overview 
  - SaaS
  - On-Prim 
  
  
 
MODULE-1A EXPLORE - GROUPING / SCOPING /SEGMENTATION 
---------------------------------------------------
 
 - Default grouping 
  - Custom grouping
    Basic Metrics table view :
    CPU/MEM/FS/NETWORK
  * Default understanding of orchestration layer 
  
  
MODULE-1B DASH BOARDS EXPLORE
----------------------------

- HOST & CONTAINER EXPLORE mycustom 
  - Memory
  - Sysdig 
  
- KUBERNETES (explore - services/mycustom)

- NETWORK (explore - mycustom) 

- SERVICES (explore - services)
  - CAST SOME VOTE ON VOTEAPP
  - GOLDEN RULE (CHANGE TO SERVICES IN EXPLORE)

- TOPOLOGY (explore - services)
  - CPU
  - Network 
  - Response
  
- APPLICATIONS (explore - mycustom)
  - ALL
  
- COMPLIANCE
  - Docker
  - K8
- METRICS 
  - App checks 
  - Kubernetes 
  - Host (JMX/StatsD)
  - System 
  - StatsD 



MODULE-2 DASH BOARDS
--------------------

- Custom Dashboards 


MODULE-3 Alerts 
---------------
- DDOSATTACK
- Alert creation 
  - Alert Types 
    - Down
    - metrics
    - Events
    - Anomaly 
    
MODULE-4 Events
---------------    
- DDOSATTACK Event
- Event Scoping 
- Event Severity (High, Medium, Low , Info)
- Event Types & filter (Alert, Container,Kubernetes)
- Event Status (Triggered,Resolved,Acknowledge,Unack)

MODULE-5 Captures
-----------------    
- Sysdig Inspect

MODULE-6 Settings 
-----------------

- Users
- Teams and Roles
- Notification Channels
- Authentication


# SECURE 
Evaluated against multiple vulnerability databases 
- Centos, Debian, Ruby, Red Hat, Ubuntu, Python, CVE, NIST, NPM, Alpine NVD

https://sysdig.atlassian.net/wiki/spaces/PROD/pages/864813638/Security+at+Sysdig




Agent installation Kubernetes:

Kernel header 
apt-get -y install linux-headers-$(uname -r)
