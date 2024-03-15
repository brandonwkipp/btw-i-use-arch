# btw-i-use-arch

This repository holds the `ansible` configurations for my adventures in tuning an `Arch Linux` system to combine my two favorite interests: audio and programming. It is very much a work in progress.

## Setup

### Arch Install
Do yourself a favor and just run `archinstall`

### Ansible Setup
We need to setup our vault to decrypt values in the playbook. Copy the secret from the password manager and place it here:
```
/root/.ansible/arch-secret.txt
```

### AUR Ansible Collection (kewlfft.aur)
To install from the AUR, we need to download this collection:
```
ansible-galaxy collection install kewlfft.aur
```

## Documentation

Setting up `ansible` on a clean machine is the first step to provisioning that machine. One of the first things you'll need to do after getting that installed is to sync the vault password onto that machine. Instructions for doing so are in the `ansible` documentation below.

- [ansible](docs/ansible.md)
- [dwm](docs/dwm.md)
- [manual tasks](docs/manual-tasks.md)
- [wine](docs/wine.md)
