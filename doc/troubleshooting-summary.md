# Troubleshooting Summary

## Issues Encountered & Resolved
| Date | Issue | Root Cause | Resolution | Status |
|------|-------|------------|------------|--------|
| Dec 19, 2025 | VirtualBox VM failed to start | Hyper-V conflict | Disabled Hyper-V via `bcdedit` | ✅ Resolved |
| Dec 19, 2025 | Black screen on VM boot | UEFI/BIOS mismatch | Changed chipset to ICH9, disabled UEFI | ✅ Resolved |
| Dec 19, 2025 | "Cannot find License Terms" | Corrupted ISO (4.69GB vs 4.70GB) | Re-downloading fresh ISO | ⏳ In Progress |

## Lesson Learned
1. **Hypervisor Compatibility:** Enterprise environments often mix virtualization platforms
2. **Firmware Awareness:** UEFI vs BIOS knowledge is critical for server deployment
3. **Media Validation:** Always verify ISO integrity before deployment
4. **Systematic Troubleshooting:** Document each issue, cause, and resolution

## ISO Integrity Verification
**File:** `WinSrv2022.iso`
**SHA256 Hash:** `3e4fa6d8507b554856fc9ca6079cc402df11a8b79344871669f0251535255325`
**Status:** Corrupted (10MB missing from expected 4.70GB)
**Action:** Fresh download in progress
  
## Notes
*This document will be updated as I progress*
