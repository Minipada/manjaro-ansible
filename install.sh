#!/bin/sh

set -e

sudo pacman -Syu --noconfirm
sudo pacman -S ansible git --noconfirm

ANSIBLE_COW_SELECTION=tux ansible-playbook -i hosts -b install.yml

echo 'Install ready. You now need to set some last stuff

KDE:
* Panel must be on top
* Set window theme
* Set pointer theme

Set startup scripts:
* Conky
* Franz

Use schedutil governor (after reboot):
cpupower frequency-set -g schedutil
' | cowsay -f stegosaurus -n