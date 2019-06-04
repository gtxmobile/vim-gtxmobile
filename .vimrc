set nocompatible
set runtimepath+=~/.vim
source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/extended.vim
source ~/.vim/my_configs.vim


"set rtp+=~/.vim/bundle/Vundle.vim/
"call vundle#begin()

" let Vundle manage Vundle
"Plugin 'VundleVim/Vundle.vim'    
call plug#begin('~/.vim/plugged')
"my Bundle here:          
"
" original repos on github
Plug 'kien/ctrlp.vim'   
Plug 'sukima/xmledit'   
Plug 'sjl/gundo.vim'    
Plug 'jiangmiao/auto-pairs'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' } 
Plug 'Valloric/ListToggle'
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 't9md/vim-quickhl'
Plug 'Lokaltog/vim-powerline'
Plug 'scrooloose/nerdcommenter'
Plug 'davidhalter/jedi'
Plug 'majutsushi/tagbar'
call plug#end()
