#!/bin/bash

# OCORRE QUANDO O APT-GET INSTALL É ENCERRADO DE FORMA INESPERADA, é necessário matar o processo ou apagar os arquivos de trava.

sudo rm /var/lib/apt/lists/lock
sudo rm /var/lib/dpkg/lock
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

# RECONFIGURA o dpkg

sudo dpkg --configure -a
