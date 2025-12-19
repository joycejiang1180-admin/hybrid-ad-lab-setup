# 1. Environment Setup

## Objective
Setup the virtualization environment for the hybrid AD lab

## Troubleshooting Log
## Issue 1: VirtualBox VM Failed to Start
**Date:** [Dec 19, 2025]
**VM:** DC01
**Root Cause:** Hyper-V conflict on Windows host. VirtualBox cannot access hardware virtualization when Hyper-V is enabled.
**Steps Taken to Resolve:**
1. **Command Prompt (Admin):** `bcdedit /set hypervisorlaunchtype off`
2. **Restarted computer**
3. **Verified resolution:** VM started successfully after Hyper-V disable
**Screenshot of Error:**
![VirtualBox Hyper-V Conflict Error](/screenshots/virtualbox-hyperv-error.png)
![]()

**Lesson Learned:** 
- Multiple hypervisors cannot coexist on Windows
- Hyper-V takes priority and must be disabled for VirtualBox

## Issue 2: Black screen on VM startup after Hyper-V disable
**Date:** [Dec 19, 2025]
**VM:** DC01
## Root Cause Identified: UEFI/BIOS Mismatch
**Configuration Found:**
- UEFI: Enabled ❌ (Incorrect)
- Chipset: PIIX3 ❌ (Should be ICH9 for Windows Server)
- Boot Mode: UEFI vs BIOS mismatch

**Fix Applied:**
1. Changed Chipset from PIIX3 to ICH9
2. Disabled UEFI option
3. Disabled Secure Boot
4. Set pointing device to PS/2 Mouse
5. Ensured I/O APIC enabled

**Result:** VM should now boot properly from ISO

**Screenshot of Error:**
![]()
![]()


**Lesson Learned:** 
- **UEFI vs BIOS** boot compatibility is critical for VM deployment
- Windows Server 2022 requires ICH9 chipset in VirtualBox

## Issue 3: Cannot find Microsoft Software License Terms
**Date:** [Dec 19, 2025]
**VM:** DC01
## Root Cause Confirmed: Corrupted ISO File
**Evidence:** ISO file size is 4.69GB instead of expected 4.70GB
**Missing:** Approximately 10MB of data, including critical license terms files
**Impact:** Installation cannot proceed without complete media

**Screenshot of Error:**
![]()
![]()

**Lesson Learned:** 
- Always verify ISO integrity before deployment
- Use checksums/hashes when available
- Network interruptions during download can corrupt large files
  
## Notes
*This document will be updated as I progress*
