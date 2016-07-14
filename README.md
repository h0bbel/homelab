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

This in turn results in a physical design that can be used to build the entire stack of services required.


## Business Background

There was a need to move away from Windows based services for Directory, File, DNS and DHCP services, simply because those requires licenses that are soon to be unavailable.

A secondary reason to move away from the existing infrastructure, is to become more proficient in deploying infrastructure services based on open source and Linux.

By developing the documentation in this manner, the idea is for it to work as an execise in writing enterprise design documents.

---

#Linked documents

- [Requirements, Constraints, Assumptions and Risks](RCAR.md)
- [Configuration](Configuration.md)
- [Diagrams](Diagrams.md)


---

## Identified required services
  - **DHCP / DNS**
  - **VPN**
  - **File services**
  - **IP Address Management**
  - **Reverse proxying of incoming http and https requests**
  - **Shared media storage**

## Nice to have services
- **Directory Services**
- **PXE boot for LAB network**
- **Automated requests for IP addresses (static) from IPAM**
- **Local management interface list ala JumpSquares**