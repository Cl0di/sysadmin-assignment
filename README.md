# Vio.com LDAP Directory Structure

## Introduction

This document outlines the LDAP directory structure for Vio.com, designed to meet the organization's requirements for team management, role-based access control, and segregation of sensitive data.

## Directory Structure

dc=viodotcom,dc=com
|
|-- ou=Teams
| |
| |-- ou=Platform
| | |-- cn=Charlie (EM)
| | |-- cn=Jessica (TL)
| | |-- cn=David (Sr Engineer)
| | |-- cn=Jhon (Sr Engineer)
| |
| |-- ou=Foo
| | |-- cn=Carlos (EM)
| | |-- cn=Isla (PM)
| | |-- cn=Christian (TL)
| | |-- cn=Amanda (Sr Engineer)
| |
| |-- ou=Bar
| |-- cn=Adam (EM)
| |-- cn=Nairobi (PM)
| |-- cn=Ben (TL)
| |-- cn=Dora (Sr Engineer)
|
|-- ou=Groups
| |-- cn=Admins
| |-- cn=PowerUsers
| |-- cn=ReadOnly
| |-- cn=SensitiveAccess
| |-- cn=NonSensitiveAccess
|
|-- ou=Systems
|-- ou=AWS
| |-- cn=FooAWS
| |-- cn=BarAWS
|
|-- ou=Datadog
|-- cn=AdminAccess
|-- cn=ReadWriteAccess
|-- cn=ReadOnlyAccess

## Description

- **Teams:** Organized under the `ou=Teams` branch, each team has its own organizational unit (OU) representing different departments within Vio.com.
  
- **Roles:** Each team consists of various roles such as Engineering Manager (EM), Tech Lead (TL), Product Manager (PM), and Senior Engineer (Sr Engineer).

- **Groups:** Security groups are organized under the `ou=Groups` branch, facilitating role-based access control (RBAC). Groups include Admins, PowerUsers, ReadOnly, SensitiveAccess, and NonSensitiveAccess.

- **Systems:** The `ou=Systems` branch encompasses different systems utilized by Vio.com. Sub-OUs represent systems such as AWS and Datadog, ensuring segregation and management of resources.

## Implementation

- LDIF files have been created to populate the LDAP tree with the defined structure.
  
- The Makefile includes targets for building Docker images, running LDAP setup, and creating LDIF files, ensuring streamlined implementation.

## Validation

- The LDAP setup can be tested by running a Docker container and verifying the LDAP tree's correctness.
  
- Ensure all requirements, including team structure, role-based access control, and system segregation, are met.

## Conclusion

The LDAP directory structure provides a robust foundation for managing teams, implementing role-based access control, and segregating sensitive data within Vio.com's infrastructure.

## References

- [Structure of an LDAP Directory Tree](http://www.novell.com/documentation/opensuse110/opensuse110_reference/data/sec_ldap_tree.html)
- [Simple LDAP DIT](https://www.zytrax.com/books/ldap/ch5/)
