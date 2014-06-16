" F5编译和运行C程序，F6编译和运行C++程序
" C的编译和运行
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
exec "!gcc -Wall % -o %<"
exec "! ./%<"
endfunc

" C++的编译和运行
map <F6> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ -Wall % -o %<"
exec "! ./%<"
endfunc

" Gvim标签定制
"set guitablabel=%{ShortTabLabel()}
"function ShortTabLabel ()
"let bufnrlist = tabpagebuflist (v:lnum)
"let label = bufname (bufnrlist[tabpagewinnr (v:lnum) -1])
"let filename = fnamemodify (label, ':t')
"return filename
"endfunction

" ######### 一键保存和编译 ######### "
" 编译C源文件
func! CompileGcc()
exec "w"
let compilecmd="!gcc -Wall -std=c99 "
let compileflag="-o %<"
exec compilecmd." % ".compileflag
endfunc

" 编译C++源文件
func! CompileCpp()
exec "w"
let compilecmd="!g++ -Wall "
let compileflag="-o %<"
exec compilecmd." % ".compileflag
endfunc

" 编译&链接Go源文件
func! CompileGo()
exec "w"
exec "!8g %"
exec "!8l -o %<.exe %<.8″
endfunc

" 编译Haskell源文件
func! CompileHaskell()
exec "w"
let compilecmd="!ghc –make "
let compileflag="-o %<"
exec compilecmd." % ".compileflag
endfunc

" 编译Java源文件
func! CompileJava()
exec "w"
exec "!javac %"
endfunc

" 编译C#源文件
func! CompileCs()
exec "w"
exec "!csc %"
endfunc

" 编译Gas源文件
func! CompileGas()
exec "w"
exec "!gcc -Wall -ggdb -o %< %"
endfunc

" 运行Shell源文件
func! RunShell()
exec "w"
exec "!sh %"
endfunc

" 运行Lua源文件
func! RunLua()
exec "w"
exec "!lua %"
endfunc

" 运行Perl源文件
func! RunPerl()
exec "w"
exec "!perl %"
endfunc

" 运行Python源文件
func! RunPython()
exec "w"
exec "!python %"
endfunc

" 运行Ruby源文件
func! RunRuby()
exec "w"
exec "!ruby %"
endfunc

" 根据文件类型自动选择相应的编译函数
func! CompileCode()
exec "w"
if &filetype == "c"
exec "call CompileGcc()"
elseif &filetype == "cpp"
exec "call CompileCpp()"
elseif &filetype == "go"
exec "call CompileGo()"
elseif &filetype == "haskell"
exec "call CompileHaskell()"
elseif &filetype == "java"
exec "call CompileJava()"
elseif &filetype == "cs"
exec "call CompileCs()"
elseif &filetype == "asm"
exec "call CompileGas()"
elseif &filetype == "sh"
exec "call RunShell()"
elseif &filetype == "lua"
exec "call RunLua()"
elseif &filetype == "perl"
exec "call RunPerl()"
elseif &filetype == "python"
exec "call RunPython()"
elseif &filetype == "ruby"
exec "call RunRuby()"
endif
endfunc

" 运行可执行文件
func! RunResult()
exec "w"
if &filetype == "c"
exec "! %<"
elseif &filetype == "cpp"
exec "! %<"
elseif &filetype == "go"
exec "! %<"
elseif &filetype == "haskell"
exec "! %<"
elseif &filetype == "java"
exec "!java %<"
elseif &filetype == "cs"
exec "! %<"
elseif &filetype == "asm"
exec "! %<"
elseif &filetype == "sh"
exec "!sh %<.sh"
elseif &filetype == "lua"
exec "!lua %<.lua"
elseif &filetype == "perl"
exec "!perl %<.pl"
elseif &filetype == "python"
exec "!python %<.py"
elseif &filetype == "ruby"
exec "!ruby %<.rb"
endif
endfunc

" ============================================================================
" Plugins settings
" ============================================================================

" Sketch
"command -nargs=0 ToggleSketch call ToggleSketch()

" Tlist
"let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1

" A
let g:alternateNoDefaultAlternate=1
let g:alternateRelativeFiles=1

" Viki
let g:vikiNameSuffix=".viki"

" FencView
let g:fencview_autodetect=0

" showmarks
let g:showmarks_enable=0
let g:showmarks_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_hlline_lower=1
let g:showmarks_hlline_upper=1

" autofmt
"let s:unicode = unicode#import()
"let s:orig_prop_line_break = s:unicode.prop_line_break
"function! s:unicode.prop_line_break(char)
"    if a:char == "\u201c" || a:char == "\u2018"
"        return "OP"   " Open Punctuation
"    elseif a:char == "\u201d" || a:char == "\u2019"
"        return "CL"   " Close Punctuation
"    endif
"    return call(s:orig_prop_line_break, [a:char], self)
"endfunction

" clang_complete
set completeopt=menu,longest
let g:clang_complete_auto=0
"command -nargs=0 ClangUpdateQuickFix call g:ClangUpdateQuickFix()

"=============================================================================
" File types
"=============================================================================

augr filetype
    " BBS
    au! BufRead,BufNewFile *.bbs BBSMode
    " Mail
    au! FileType mail call MailMode()
    " Viki
    au! BufRead,BufNewFile *.viki VikiMode
    " conque_term
    au! FileType conque_term ConqueTermMode
augr end

"=============================================================================
" Platform dependent settings
"=============================================================================

if (has("win32"))

    "-------------------------------------------------------------------------
    " Win32
    "-------------------------------------------------------------------------

    if (has("gui_running"))
        set guifont=DejaVu_Sans_Mono:h9:cANSI
        set guifontwide=NSimSun:h9:cGB2312
    endif

    " For Viki
    let g:netrw_browsex_viewer="start"

    " For tee
    set shellpipe=2>&1\|\ tee

    " VimTweak
    if (has("gui_running"))
        command -nargs=1 SetAlpha call libcallnr("vimtweak.dll",
            \"SetAlpha", <args>)
        command -nargs=0 TopMost call libcallnr("vimtweak.dll",
            \"EnableTopMost", 1)
        command -nargs=0 NoTopMost call libcallnr("vimtweak.dll",
            \"EnableTopMost", 0)
    endif

else

    "-------------------------------------------------------------------------
    " Linux
    "-------------------------------------------------------------------------

    if (has("gui_running"))
        set guifont=DejaVu\ Sans\ Mono\ 12
    endif

    " For Viki
    let g:vikiHomePage="~/Documents/Viki/index.viki"
    let g:netrw_browsex_viewer="kfmclient exec"

    set makeprg=build


endif

nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_width=25
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.py,*.rb call tagbar#autoopen()

