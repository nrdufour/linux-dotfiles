all: install-shell install-vim install-git

install-shell:
	rm ~/.bashrc
	ln -s `pwd`/shell/bashrc ~/.bashrc

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vimrc ~/.vimrc
	git clone \
		https://github.com/VundleVim/Vundle.vim.git \
		~/.vim/bundle/Vundle.vim
	vim -c PluginInstall -c exit -c exit

install-git:
	rm ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

