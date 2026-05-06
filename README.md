# Calamares gLiTcH Build 13

**Version:** 3.3.14-1glitch1
**Built:** 2026-05-06 on gLiTcH-SERVER (Debian 13 Trixie)
**Base:** Debian unstable source package calamares 3.3.14-1

## What This Is

A patched build of Calamares for gLiTcH Linux that adds support for installing
to **loop devices** (`/dev/loop*`), plus the bundled gLiTcH branding and
module configurations.

## Contents

| File | Purpose |
|------|---------|
| `calamares_3.3.14-1glitch1_amd64.deb` | The patched Calamares package |
| `calamares-dbgsym_3.3.14-1glitch1_amd64.deb` | Debug symbols (optional) |
| `calamares-glitch-13.zip` | gLiTcH branding + module configs |
| `01-DeviceList-allowLoopDevices.patch` | Loop device scan toggle (DeviceList.cpp) |
| `02-Config-allowLoopDevices.patch` | YAML-to-GlobalStorage wiring (Config.cpp) |
| `03-partition.conf-doc.patch` | Documentation for the new option |

## Source Patches Summary

### Patch 1: `src/modules/partition/core/DeviceList.cpp`

Added `GlobalStorage` + `JobQueue` includes. In `getDevices()`, replaced the
hardcoded `ScanFlag(0)` argument to KPMCore's `scanDevices()` with logic that
reads the `allowLoopDevices` flag from GlobalStorage and ORs in
`ScanFlag::includeLoopback` when set.

### Patch 2: `src/modules/partition/Config.cpp`

Added one line after the existing `armInstall` insert that reads
`allowLoopDevices` from the YAML config (default `false`) and pushes it into
GlobalStorage so DeviceList can pick it up.

### Patch 3: `src/modules/partition/partition.conf`

Documentation block for the new option (upstream conf — not shipped in the
.deb, present in the source tree for reference).

## Installation

```bash
# Install the package
sudo apt install ./calamares_3.3.14-1glitch1_amd64.deb

# Drop in your gLiTcH configs
sudo unzip -o calamares-glitch-13.zip -d /etc/

# Make sure the launcher .desktop is in place
sudo cp calamares-install-glitch.desktop /usr/share/applications/
```

## Enabling Loop Device Installation

In `/etc/calamares/modules/partition.conf`, add:

```yaml
allowLoopDevices: true
```

Then before launching Calamares:

```bash
sudo losetup -fP /path/to/disk.img
```

The loop device will now appear in Calamares' device picker. Defaults to
`false` (original upstream behaviour) when the key is absent.

## Verification

The patches were verified present in the compiled binary:

```bash
$ strings /usr/lib/x86_64-linux-gnu/calamares/modules/partition/libcalamares_viewmodule_partition.so \
    | grep -E 'allowLoopDevices|Loop device scanning'
allowLoopDevices
Loop device scanning enabled (allowLoopDevices=true).
```

## Rebuilding From Source

The full build environment lives on gLiTcH-SERVER at:

```
/root/calamares-build/calamares-3.3.14/
```

To rebuild:

```bash
cd /root/calamares-build/calamares-3.3.14
DEB_BUILD_OPTIONS='parallel=4 nocheck' dpkg-buildpackage -us -uc -b
```

Build time on a 4-core gLiTcH-SERVER: ~7 minutes.

## Upstream Reference

- Calamares: https://github.com/calamares/calamares
- KPMCore (provides `ScanFlag::includeLoopback`): https://invent.kde.org/system/kpmcore
- Debian package: https://tracker.debian.org/pkg/calamares

---

*Built with MCP automation on gLiTcH-SERVER.*
