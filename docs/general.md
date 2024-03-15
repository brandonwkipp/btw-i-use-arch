# Setup

## Arch Install
Do yourself a favor and just run `archinstall`

## Ansible Setup
We need to setup our vault to decrypt values in the playbook. Copy the secret from the password manager and place it here:
```
/root/.ansible/arch-secret.txt
```

### AUR Ansible Collection (kewlfft.aur)
To install from the AUR, we need to download this collection:
```
ansible-galaxy collection install kewlfft.aur
```
