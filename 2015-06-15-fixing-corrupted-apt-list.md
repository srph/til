---
title: Ubuntu: fixing corrupted apt-list
---

All courtesy of [Jasper (fallen90)](https://github.com/fallen90) who solved the issue with `apt-get update` (because of the "Firewall") at the office (All *thanks* to the IT Department) this afternoon. See [PR](https://github.com/fallen90/developement-setup-script/pull/1).

```bash
sudo rm -rf /var/lib/apt/lists/* && apt-get update
```

The above commands will delete everything in the `lists/*` dir, and fetch new ones (default).

**Other Links**:
- [`fallen90/development-setup-script`](https://github.com/fallen90/developement-setup-script)
