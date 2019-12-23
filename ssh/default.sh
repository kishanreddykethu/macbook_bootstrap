echo "Creating SSH directory"
mkdir ~/.ssh
echo "Creating basic config for ssh"
cat <<EOT >> ~/.ssh/config
Host *
    IdentityFile ~/.ssh/id_rsa
    SendEnv LANG LC_*
    ForwardAgent yes
    ServerAliveInterval 10
    ServerAliveCountMax 10
    AddKeysToAgent yes
    UseKeychain yes
EOT
echo "Changing permissions for ssh related files"
chmod 600 ~/.ssh/*

