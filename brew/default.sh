echo "Installing latest version of homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Installing usual cask leaves"
xargs brew cask install < cask.txt
echo "Installing usual brew leaves"
xargs brew install < leaves.txt

