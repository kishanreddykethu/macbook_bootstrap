#!/bin/bash
echo "Setting Key related defaults"
defaults write -g InitialKeyRepeat -int 12 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 2 # normal minimum is 2 (30 ms)
echo "Enumerating all folders"
for i in $(ls -d */); do echo ${i%%/}; read -n1 -r -p "Would you like to run the defaults for: ${i%%/} choose [y]es|[n]o"; done
echo "Please logout and log in to ensure everything is working as intended"
