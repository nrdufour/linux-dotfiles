all: install-shell install-vim install-git

install-shell:
	rm ~/.bashrc
	ln -s `pwd`/shell/bashrc ~/.bashrc

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-git:
	rm ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

