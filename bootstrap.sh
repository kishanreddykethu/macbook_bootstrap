#!/bin/bash
echo "Enumerating all folders"
for i in $(ls -d */); do echo ${i%%/}; read -n1 -r -p "Would you like to run the defaults for: ${i%%/} choose [y]es|[n]o"; done
