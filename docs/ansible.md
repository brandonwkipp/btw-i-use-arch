### Ansible notes

We need a vault set up to do some of more secretive things. That file should live here:
`/root/.ansible/arch-secret.txt`

### Encrypt strings
```
sudo ansible-vault encrypt_string --vault-id ~/.ansible/arch-secret.txt --stdin 'some_value'
```

### Encrypt Files
```
sudo ansible-vault encrypt $SOME_FILE --vault-id ~/.ansible/arch-secret.txt

# reference in task
- name: Copy server private key
  copy:
    src: $SOME_FILE
    dest: $SOMEWHER
    decrypt: yes
    ...
```

### AUR Ansible Collection (kewlfft.aur)
Install this
```ansible-galaxy collection install kewlfft.aur```
