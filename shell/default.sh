echo "Installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Touching a bash_profile file just in case"
touch ~/.bash_profile
echo "Removing and linking the usual bash aliases to home directory"
ln -s $PWD/commands.sh ~/commands.sh
echo "Adding these commands to the zshrc"
echo "source ~/commands.sh" >> ~/.zshrc
