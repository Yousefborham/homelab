# Home Lab — Ubuntu Server on VirtualBox

Personal lab environment built from scratch to practice Linux
system administration, networking, and troubleshooting.

## Environment

| Component | Details |
|---|---|
| Host | Windows 11 |
| Hypervisor | VirtualBox |
| Guest OS | Ubuntu 26.04 LTS |
| Resources | 4 GB RAM · 2 vCPU · 30 GB dynamic disk |
| Network | NAT + port forwarding (host 2222 → guest 22) |
| Access | SSH from Windows PowerShell |

## Files

- `check.sh` — system health check: uptime, load, disk, memory
- `notes.md` — build notes and configuration

## Problems Solved

### GUI failed to start after distro upgrade
- **Diagnosis:** `journalctl -b -p err` showed `vboxadd` and `vmwgfx` errors
- **Cause:** Guest Additions built against the previous kernel
- **Lesson:** start from the *earliest* error — later ones are consequences

### SSH login rejected despite correct password
- **Diagnosis:** `journalctl -f -u ssh` on the server showed `password check failed`
- **Cause:** input issue, not configuration
- **Lesson:** the client error was vague; the server log was exact

### VM unreachable from the host
- **Cause:** NAT allows outbound only
- **Fix:** port forwarding host:2222 → guest:22

## What I Learned

- Reading permissions and changing them with `chmod`
- Managing services with `systemctl` (`enabled` ≠ `active`)
- Filtering logs before reading them
- Key-based SSH authentication
