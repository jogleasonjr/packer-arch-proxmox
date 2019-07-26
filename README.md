## Packer-Arch-Proxmox

[Packer](https://www.packer.io/) template and scripts to [generate](https://www.packer.io/docs/builders/proxmox.html) Arch Linux virtual machine templates for Proxmox.

## Proxmox Setup

This template assumes defaults for most of Proxmox's configuration. You will want to change the server IP, node name, username, and password in the `archlinux-x86_64.json` file.

You will also need the `archlinux-2019.07.01-x86_64.iso` iso uploaded to your node's ISO store. Unlike other packer builders, the Proxmox one will not download the ISO.

## Building
```
git clone https://github.com/jogleasonjr/packer-arch-proxmox.git
cd packer-arch-proxmox
packer build templates\archlinux-x86_64.json
```

This takes about 10 minutes *on my machine*. You can inspect the initial boot and installation using the console viewer within Proxmox. Once the initial bootstrapping is complete and packer establishes and SSH connection, you'll see the rest of the output in the console you used above.

This will create a virtual machine template in Proxmox that you can then clone to create working virtual machines.

SSH is enabled by default, with the username `dev` and the password `piranha`.