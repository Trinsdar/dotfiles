#!/bin/sh
sudo pacman -S archlinux-xdg-menu
sudo update-desktop-database
cd /etc/xdg/menus

ls
sudo mv arch-applications.menu applications.menu
kbuildsycoca6 --noincremental
