# Ubuntu environment for local development

This project uses Vagrant and Ansible to provision a local dev environment based on Ubuntu 18.

## Prerequisites

* Vagrant and VirtualBox
* Vagrant plugins:
  * vagrant-disksize
  * vagrant-vbguest

## Get started

* Git clone this project
* Create local config:
  ```bash
  cd PROJECT_ROOT
  mkdir -p ~/.config/ubuntu-localdev
  cp ansible/roles/user/defaults/main.yml ~/.config/ubuntu-localdev/ansible_user_config.yml
  ```
* Edit 'ansible_user_config.yml' in your favorite editor and adjust variables as needed
* Let Vagrant create and provision your brand new, local dev environment:
  ```bash
  vagrant up
  ```

## User Manual

### Re-run

* In case of changes to the user config, run:
  ```bash
  vagrant provision --provision-with ansible
  ```