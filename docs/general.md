# General

### Sync reflector
sudo reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

### Sync time
```
sudo timedatectl set-ntp true
```
