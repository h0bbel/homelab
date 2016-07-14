# Homelab - The Design

The people listed in the following table provided key input into this design:

**Participants**

|Name|Email|Role|
|---|---|---|
|Christian Mohn|christian@drible.net|Owner|

**Version History**

|Date|Revision|Author|Comments|
|---|---|---|---|
|14.07.2016|0.0.1|CM|Initial Checkin

## Executive Summary

The purpose of this document is to describe in necessary detail the current project description to represent a suitable model generating Conceptual, Logical and Physical designs for HomeLab. The Conceptual Design documentation presents the proposed structure of the datacenter transformation project, such as the requirements, assumptions and risks involved.

The logical design is based on the conceptual design, and provides a more detailed view of the components and relationships.

This in turn results in a physical  design that can be used to build the entire stack of services required.

## Business Background

---

## Identified required services
  - **DHCP / DNS**
  - **VPN**
 - **File services**
  - **IP Address Management**
  - **Reverse proxying of incoming http and https requests**
- **Shared media storage**

## Nice to have services
- Directory Services
- PXE boot for LAB network
- automatic requests for IP addresses (static)
- Local management interface list ala JumpSquares

## Requirements
|ID|Requirement|Source|Date|
|---|---|---|---|
|RE101|Clustered DHCP services|CM|14/07/2016
|RE102|Clustered DNS services|CM|14/07/2016
|RE103|VPN services|CM|14/07/2016
|RE104|File / Sharing services|CM|14/07/2016
|RE105|IP address management (IPAM)|CM|14/07/2016
|RE106|Reverse Proxy services|CM|14/07/2016
|RE107|Shared media storage|CM|14/07/2016
|RE108|Media services|CM|14/07/2016

## Constraints
|ID|Constraint|Source|Date|
|---|---|---|---|
|CO101|Existing hardware must be used|CM|14/07/2016
|CO102|No budget for licenses|CM|14/07/2016

## Assumptions
|ID|Assumption|Source|Date|
|---|---|---|---|
|AS101|||

## Risks
|ID|Risk|Source|Date|
|---|---|---|---|
|AS101|||

---    
## Configuration notes

### DHCP / DNS
### OpenVPN
##### TODO
- create new OpenVPN VM
- Set up letsencrypt certs
- decomission old VM

### OwnCloud
Configuration nearly complete.
##### TODO
- Set up letsencrypt certs

### HAProxy
OpenVPN and OwnCloud behind 80/443
- vpn.vninja.com
- oc.vninja.com

##### TODO
- Move PoC to Production cluster
- Set static IP -> check IPAM
- Change configuration
- Change FW port forwarding

### FreeNas
### ESXi hosts

|Host|NIC|IP|Description|
|---|---|---|---|
|ESXi01   |vmnic0|192.168.5.10|VMnetwork|
|ESXi01   |vmnic1|192.168.5.11|VMnetwork|
|ESXi01   |vmnic2|n/a|vMotion|
|ESXi02   |vmnic0|192.168.5.20|VMnetwork|
|ESXi02   |vmnic1|192.168.5.21|VMnetwork|
|ESXi02   |vmnic2|n/a|vMotion|

### Network
DHCP Scope: _192.168.5.80 - 192.168.5.254_

**Reserved IPs**

|Host|IP|Description|Configured|
|---|---|---|---|
|gateway|192.168.5.2|Netgear|yes|
|telenor ap|192.168.5.4|n/a|yes|
|ups|192.168.5.15|Eaton|yes|
|cisco switch|192.168.5.17|Cisco|yes|
|freenas|192.168.5.40|HP|yes|
|Owncloud|192.168.5.41|VM|yes|


**Reserved Ranges**
192.168.5.1 - 192.168.5.10

|From|To|Description|
|---|---|---|
|192.168.5.1|192.168.5.9|Network equipment|
|192.168.5.10|192.168.5.29|ESXi hosts|
|192.168.5.30|192.168.5.49|Available|
|192.168.5.50|192.168.5.69|Static IP assignments / VMs|



Gateway: _192.168.5.2_
#### VLANS

|VLAN ID|Description|Segment|Configured|
|---|---|---|---|
|0   |Main|192.168.5.0/24   |NO   |
|10   |vMotion|n/a   |n/a   |
|20   |Lab|n/a   |n/a   |

## SSL Certificates
https://letsencrypt.org

---
## Diagrams
---
