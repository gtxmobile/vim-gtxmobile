set nocompatible
set runtimepath+=~/.vim
source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/extended.vim
source ~/.vim/my_configs.vim


set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'    

"my Bundle here:          
"
" original repos on github
Plugin 'kien/ctrlp.vim'   
Plugin 'sukima/xmledit'   
Plugin 'sjl/gundo.vim'    
Plugin 'jiangmiao/auto-pairs'
Plugin 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' } 
Plugin 'Valloric/ListToggle'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 't9md/vim-quickhl'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'davidhalter/jedi'
Plugin 'majutsushi/tagbar'

