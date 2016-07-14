## Configuration

### DHCP / DNS
tba

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
