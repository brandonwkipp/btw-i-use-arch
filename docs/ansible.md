### Ansible notes

We need a vault set up to do some of more secretive things. That file should live here:
`/root/.ansible/arch-secret.txt`

To get new encrypted values, use this command:
`sudo ansible-vault encrypt_string --vault-id ~/.ansible/arch-secret.txt --stdin 'some_value'`
