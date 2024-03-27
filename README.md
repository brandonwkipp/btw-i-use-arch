# btw-i-use-arch

This repository holds the `ansible` configurations for my adventures in tuning an `Arch Linux` system to combine my two favorite interests: audio and programming. It is very much a work in progress.

## Setup

### Arch Install
Do yourself a favor and just run `archinstall`. While you're at it, install the following additional packages: `ansible`, `dhcpcd`, `git`, & `vim`. Once the install is complete, `chroot` in and modify `/etc/dhcpcd.conf` to have [this content](https://github.com/brandonwkipp/btw-i-use-arch/blob/main/roles/base/files/dhcpcd.conf).

### Ansible Setup
We need to setup our vault to decrypt values in the playbook. Copy the secret from the password manager and place it here:
```
mkdir -p ~/.ansible
vim ~/.ansible/arch-secret.txt <- PLACE SECRET IN THIS FILE
```

### AUR Ansible Collection (kewlfft.aur)
To install from the AUR, we need to download this collection:
```
ansible-galaxy collection install kewlfft.aur
```

## Documentation

- [ansible](docs/ansible.md)
- [dwm](docs/dwm.md)
- [manual tasks](docs/manual-tasks.md)
- [wine](docs/wine.md)

## Special Thanks
- [Rigellute](https://github.com/Rigellute/shades-of-purple.vim)
