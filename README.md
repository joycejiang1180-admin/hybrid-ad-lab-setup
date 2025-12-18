# Hybrid Activie Directory and Entra ID Lab Setup

## Overview
This repository documents my hands-on lab project to set up a hybrid Active Directory environment synchronized with Microsoft Entra ID.
The goal is to practice and demonstrate skills in on-premises Active Directory management, Entra ID Connect, and hybrid identity management.

## Lab Objectives
- Set up an on-premises Active Directory domain using Windows Server 2022
- Configure a Windows 10/11 client and join it to the domain
- Install and configure Entra ID Connect to synchronize on-premises AD with Microsoft Entra ID
- Mange users and groups in a hybrid identity environment
- Explore and document the synchronization process and troubleshooting steps

## Prerequisites
- **Hybervisor:** VMaware, Worekstation Player, Hyber-V, or VirtualBox
- **Operating Systems:** Windows Server 2022 (Evaluation), Windows 10/11 (Evaluation or licensed copy)
- **Microsoft 365 Developer Account:** To get a Microsoft Entra ID tenant and licenses
- **Networking:** Understanding of basic networking (IP addressing, DNS) and a virtual network for the lab

## Planned Steps

### 1. Set Up the Virtual Lab Environment
- Create a virtual network in the hypervisor
- Install Windows Server 2022 as a virtual machine and promote it to a Domain Controller
- Install Windows 10/11 as a virtual machine

### 2. Configure Active Directory
- Create an Active Directory domain
- Create organizational units, users, and groups

### 3. Set Up Microsoft Entra ID
- Use a Microsoft 365 Devloper account to create an Entra ID tenant
- Verify the domain and create users in Entra ID

### 4. Implement Entra ID Connect
- Install and configure Entra ID Connect on the Domain Controller (or a separate server)
- Configure synchronization between on-premises AD and Entra ID

### 5. Test and Validate
  - Test user synchronization
  - Test password hash synchronization and/or pass-through authentication
