# termux dotfiles

# Bootstrap
## In Termux 
1. `termux-change-repo` (select default options)
2. `curl -sSL sfs.connorrhodes.com/bootstrap/termux.sh | bash`
3. `passwd` (set password)
4. `sshd` (run to enable remote access in running session)
5. ensure tailscale is enabled on Android for network-agnostic ssh

## Ansible Controller
1. `ssh-copy-id ph` (will prompt you with command to remove old known hosts)
2. `ansible-playbook termux.yml`

## In Termux
### set font
Long press window, select styling, choose "Cascadia Code" as font
