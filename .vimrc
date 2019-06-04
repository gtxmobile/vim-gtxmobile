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
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"..................................
" vim-scripts repos
"Plug 'YankRing.vim'
Plug 'vim-scripts/vcscommand.vim'
"Plug 'vim-scripts/ShowPairs'
Plug 'vim-scripts/SudoEdit.vim'
Plug 'vim-scripts/EasyGrep'
Plug 'vim-scripts/VOoM'
Plug 'vim-scripts/VimIM'
"..................................
" non github repos
" Plug 'git://git.wincent.com/command-t.git'
"......................................
call plug#end()
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tag_files = 1
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
set tags+=gem.tag
" Load rope plugin
let g:pymode_rope = 0
" 
"" Auto create and open ropeproject
"let g:pymode_rope_auto_project = 1
" 
"" Enable autoimport
"let g:pymode_rope_enable_autoimport = 1
" 
""Auto generate global cache
"let g:pymode_rope_autoimport_generate = 1
" 
"let g:pymode_rope_autoimport_generate = 1
" 
"let g:pymode_rope_autoimport_underlineds = 0
" 
"let g:pymode_rope_codeassist_maxfixes = 10
" 
"let g:pymode_rope_sorted_completions = 0
" 
"let g:pymode_rope_extended_complete = 0
" 
"let g:pymode_rope_autoimport_modules = ["os","shutil","datetime"]
" 
"let g:pymode_rope_confirm_saving = 1
" 
"let g:pymode_rope_global_prefix = <C-x>p"
" 
"let g:pymode_rope_local_prefix = <C-c>r"
" 
"let g:pymode_rope_vim_completion = 0
" 
"let g:pymode_rope_guess_project = 0
" 
"let g:pymode_rope_goto_def_newwin = 
" 
"let g:pymode_rope_always_show_complete_menu = 0
" 
"let g:pymode_lint = 0

" Switch pylint, pyflakes, pep8, mccabe code-checkers
" Can have multiply values "pep8<Plug>PeepOpenyflakes,mcccabe”
let g:pymode_lint_checker = "pyflakes<Plug>PeepOpenep8,mccabe"

