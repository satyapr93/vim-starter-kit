# vim-starter-kit
Basic Vim configuration for users switching to Vim from other modern editors.

## Installation
* First backup you existing `~/.vimrc` file and `~/.vim` folder. (Not needed if you haven't used VIM before)
* Clone the repository. 

  ```bash
  $ git clone https://github.com/satyapr93/vim-starter-kit.git ~/.vim
  ```
* Symlink g(vimrc) from `~/.vim` to your home directory.

  ```bash
  $ ln -s ~/.vim/vimrc ~/.vimrc
  ```
  
  ```bash
  $ ln -s ~/.vim/gvimrc ~/.gvimrc
  ```
* Install Vim plugins

  ```bash
  $ vim +PlugInstall 
  ```
* Enjoy.

![Preview](_assets/preview.png "Preview.")
