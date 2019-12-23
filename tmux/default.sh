echo "Installing oh my tmux"
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cd -
echo "Copying my custom config for tmux"
ln -s $PWD/.tmux.conf.local ~/.tmux.conf.local
