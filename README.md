# Cloud Bootstrap

This repository contains Terraform and Ansible files to create a virtual machine in AWS or Azure. Readmes on usage can be found in the respective folders.
This repository can be used to deploy a VM or two grouped VMs (AWS placement group or Azure Proximity). 

Note that the playbooks primarily is used to setup a LDBC benchmark environment. Based on the EC2 bootstrap scripts from the [ec2-bootstrap](https://github.com/szarnyasg/ec2-bootstrap) repository.

⚠️ The script puts the public keys of me & a few collaborators on the machine.

# Prerequisites

To use the files in this repository, the following needs to be installed on your system:

- Terraform: used to provision the infrastructure (https://www.terraform.io/downloads)
- Python: Used for Ansible
- Ansible: installed by using e.g. `python3 -m pip install --user ansible`
- Ansible.posix: Installed by using `ansible-galaxy collection install ansible.posix`

# Contents
- `config-files`: Configuration files with `htop` and `.tmux.conf` convenience configuration (From [here](https://github.com/szarnyasg/ec2-bootstrap))
- `terraform-aws`: Terraform files and Ansible playbooks to configure AWS EC2 instances or S3 storage
- `terraform-azure`: Terraform files and Ansible playbooks to configure Azure Compute instances or Azure Storage Accounts.
