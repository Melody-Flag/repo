# Self-hosted ArchLinux repository

## Usage
### Add to pacman
You can append the following content to `/etc/pacman.conf`.

```conf
[melody-flag]
SigLevel = Optional TrustedOnly
Server = http://repo.mmf.moe/$arch
```

### Import unofficial key
In order to use this repo, you must import [yesterday17.asc](yesterday17.asc). You can follow the step below:

```bash
sudo pacman-key --add /path/to/yesterday17.asc
pacman-key --finger 37425538284357DE8FA65CEDE7AAA31E332F889C
pacman-key --lsign-key 37425538284357DE8FA65CEDE7AAA31E332F889C
```

### Packages
- jlu-http-proxy

## Build
Run [build.sh](build.sh). Make sure you have `rm`, `makepkg`, `repo-add` and `repo-remove`.