# Homelab - The Design

## Executive Summary

The purpose of this document is to describe in necessary detail the current project description to represent a suitable model generating Conceptual, Logical and Physical designs for HomeLab. 

The [Conceptual Design](Conceptual.md) presents the proposed structure of the datacenter transformation project, such as the requirements, assumptions and risks involved.

The [Logical Design](Logical.md) is based on the conceptual design, and provides a more detailed view of the components and relationships.

This in turn results in a [Physical Design](Physical.md) that can be used to build the entire stack of services.


## "Business" Background

There was a need to move away from Microsoft Windows based services for Directory, File, DNS and DHCP services, simply because those requires licenses that are soon to be unavailable. It is also imperative that no new HW is to be purchased, and the new design needs to be able to run on existing infrastructure.

A secondary reason to move away from the existing infrastructure, is to become more proficient in deploying infrastructure services based on open source and Linux.

*By developing the documentation in this manner, the idea is for it to work as an exercise in writing enterprise design documents.*


**Participants**

The people listed in the following table provided key input into this design:


|Name|Email|Role|
|---|---|---|
|Christian Mohn|christian@drible.net|Owner|

**Version History**

|Date|Revision|Author|Comments|
|---|---|---|---|
|14.07.2016|0.0.1|CM|Initial Checkin
|14.07.2016|0.0.2|CM|Sectioned into several documents / re-organized a bit
|16.07.2016|0.0.3|CM|Diagrams and Naming Standard added.



---

#Linked documents

- [Requirements, Constraints, Assumptions and Risks](RCAR.md)
- [Configuration](Configuration.md)
- [Diagrams](Diagrams.md)
- [Existing Hardware](ExistingHardware.md)
- [External Resources](ExternalResources.md)
- [Operational Resources](operational/OperationalResources.md)


---

## Identified required services
  - **DHCP / DNS**
  - **Remote Access / VPN**
  - **File services**
  - **IP Address Management**
  - **Reverse proxying of incoming http and https requests**
  - **Shared media storage**
  - **Jumphost**

## Nice to have services
- **Directory Services**
- **PXE boot for LAB network**
- **Automated requests for IP addresses (static) from IPAM**
- **Local management interface list ala JumpSquares**