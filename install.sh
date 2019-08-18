/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install node

brew install wget

#install anaconda
cd $HOME
wget http://repo.continuum.io/archive/Anaconda3-5.0.0-Linux-x86_64.sh
bash Anaconda3-5.0.0-Linux-x86_64.sh
cd $HOME

#install vim plugins and Vundle
cd $HOME
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd $HOME

#install YouCompleteme correctly
cd $HOME
cd .vim/bundle/YouCompleteMe
python install.py
cd $HOME

vim +PluginInstall +qall

#install prezto (might have to do this one manually)
cd $HOME
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh
cd $HOME

chsh -s /bin/zsh
