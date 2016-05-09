all: install-shell install-vim

install-shell:
	rm ~/.bashrc
	ln -s `pwd`/bashrc ~/.bashrc

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

