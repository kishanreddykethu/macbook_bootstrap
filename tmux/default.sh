echo "Installing oh my tmux"
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cd -
cp .tmux.conf.local ~/
