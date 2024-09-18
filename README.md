# Ansible playbook blueprint

Ansible example repository.  
Forked from a real private ansible repository. Due to privacy reasons, the original one cannot be publicly hosted.  
  
This repo can be useful if you are looking for examples on cases like:  
+ Dotfiles. Nvim, zsh, tmux, i3, alacritty. You name it.
+ Crafted personal server. Shows how to setup a personal server and its services: music, file sync, pi-hole, vpn, tor, rss. The whole sheebang.
+ SSH & keys setup. Including advance features like alerts & protection on infiltration attempts.
+ Local network setup: fixed ips, ipv6 setup, local domain names.
+ Obtain the same setup outcome on server or workstation after a fresh installation. Including aesthetics, look & feel, shortcuts, etc. Nothing important is left unattended. 
+ Data backup.
  
Ansible wise, the project is nothing fancy or advance. The structure is straight-forward and aims to resolve the tasks at hand with ease.  
The docker services are templated & rendered on destination end in order to give autonomy for troubleshooting (read & debug) the machines when needed & without requiring running the ansible playbook.
