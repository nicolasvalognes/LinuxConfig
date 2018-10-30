""""""""""""""""""""
"""""" BASE """"""""
""""""""""""""""""""

" VIM Configuration
" Annule la compatibilite avec l’ancetre Vi : totalement indispensable
set nocompatible
" -- Affichage
set title " Met a jour le titre de votre fenetre ou de
" votre terminal
set number " Affiche le numero des lignes
set ruler " Affiche la position actuelle du curseur
set nowrap " Affiche les lignes trop longues sur plusieurs
" lignes
set scrolloff=3 " Affiche un minimum de 3 lignes autour du curseur
" (pour le scroll)
" -- Recherche
set ignorecase " Ignore la casse lors d’une recherche
set smartcase " Si une recherche contient une majuscule,
" re-active la sensibilite a la casse
set incsearch " Surligne les resultats de recherche pendant la
" saisie
set hlsearch " Surligne les resultats de recherche
" -- Beep
set visualbell " Empeche Vim de beeper
set noerrorbells " Empeche Vim de beeper
" Active le comportement ’habituel’ de la touche retour en arriere
set backspace=indent,eol,start
" Cache les fichiers lors de l’ouverture d’autres fichiers
set hidden
set background=dark
" Active la coloration synaxique
syntax enable
" Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l’indentation
filetype on
filetype plugin on
filetype indent on

" indent 4 spaces
set softtabstop=4
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set autoindent

" auto save
:au FocusLost * :wa
set autowrite
set autowriteall

" set utf8 as standard encoding
"set encoding=utf8
set encoding=UTF-8

set history=1000 "remember last 1000 command
set undolevels=1000 "undo 1000 time max
set autoread "read files changed outside vim

"show open bracket when user type the close bracket
set showmatch
set matchtime=2
set laststatus=2

set lazyredraw "don't redraw when executing macro

set ttyfast " terminal acceleration

" --- MAPPPING sur la virgule
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","

"nnoremap <Esc> :w<CR><Esc>
"supprimer surlignage recherche et trailing white space sur echap
"nnoremap <Esc> :nohl<CR>:w<CR><Esc>
"nnoremap <Esc> <Esc>:nohl<CR>

nnoremap Q <nop>

" --- mapping recherche sur la barre espace
map <space> /
"map <leader>f /

" --- map 0 on ^ to go to first non-blank character of the line
map 0 ^

" disable auto-comment on insert new line after a commented line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"autocmd BufWritePre * :%s/\s\+$//e

" mapping navigation entre fenetre
let g:C_Ctrl_h='off'
nnoremap <C-h> <C-w>h
let g:C_Ctrl_j='off'
nnoremap <C-j> <C-w>j
let g:C_Ctrl_k='off'
nnoremap <C-k> <C-w>k
let g:C_Ctrl_l='off'
nnoremap <C-l> <C-w>l

"set listchars=tab:¿\ ,eol:¬
"set list

" undo backup swap directory
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backups//
set directory=~/.vim/.swaps//

set signcolumn=yes

" limit popup menu height
set pumheight=20

noremap <Right> :bn<CR>
noremap <Left> :bp<CR>
nnoremap :bc :Bclose
"noremap <Left> :vertical resize -1<CR>
"noremap <Right> :vertical resize +1<CR>
"noremap <Down> :resize -1<CR>
"noremap <Up> :resize +1<CR>

 " ctags -R --python-kinds=-i --fields=+iaS --language-force=python -f mw_tags ~/01_Workspace/mw_dev_tools/work/sources
set tags=./tags
set tags+=~/00_Tools/toruk_tags/mw_tags
set tags+=~/00_Tools/toruk_tags/venv_tags

"au BufRead,BufNewFile *.qss setfiletype css "syntax color for qt .css file
"au BufRead,BufNewFile *.qrc setfiletype xml "syntax color for qt .qrc file
"au BufRead,BufNewFile *.md setfiletype markdown.pandoc
"au BufRead,BufNewFile *.md setfiletype text
autocmd BufNewFile,BufRead *.json set ft=javascript

au BufRead *.txt set ft=
au BufRead *.md set ft=

""""""""""""""""""""
""""" PLUGINS """"""
""""""""""""""""""""

"" ------ VUNDLE -----------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" General plugins
Plugin 'jlanzarotta/bufexplorer'
Plugin 'lilydjwg/colorizer'
"Plugin 'kien/ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
"Plugin 'ryanoasis/vim-devicons'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-scripts/AutoComplPop'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mhinz/vim-startify'
"Plugin 'thaerkh/vim-workspace'
"Plugin 'mbbill/undotree'
Plugin 'tpope/vim-surround'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'vim-scripts/SearchComplete'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'editorconfig/editorconfig-vim'
"Plugin 'vim-syntastic/syntastic'
Plugin 'w0rp/ale'
"Plugin 'thiagoalessio/rainbow_levels.vim'
"Plugin 'Townk/vim-autoclose'
Plugin 'itchyny/calendar.vim'
Plugin 'mileszs/ack.vim'

" Plugins for C/C++
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/c.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'vim-scripts/OmniCppComplete'
Plugin 'justinmk/vim-syntax-extra'

" Plugins for Qt
Plugin 'kosl90/qt-highlight-vim'

"Plugin for Python
"Plugin 'python-mode/python-mode'
Plugin 'vim-python/python-syntax'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'dbsr/vimpy'
"Plugin 'python-rope/ropevim'
"Plugin 'ambv/black'
Plugin 'alfredodeza/coveragepy.vim'
Plugin 'mgedmin/coverage-highlight.vim'
"Plugin 'heavenshell/vim-pydocstring'

" Plugins for Javascript
"Plugin 'jelera/vim-javascript-syntax'

"Plugin for HTML
"Plugin 'alvan/vim-closetag'

" Plugins for Node.js
" see https://github.com/nodejs/node/wiki/Vim-Plugins

" Color scheme
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'fenetikm/falcon'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"autocmd vimenter * NERDTree
"autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType=="primary") | q | endif

"autocmd vimenter * Tagbar

"au VimEnter * IndentGuidesToggle
"let g:indent_guides_guide_size=1
"set ts=4 sw=4 et

au VimEnter * IndentLinesToggle
"let g:indentLine_color_gui = '#A4E57E'
"let g:indentLine_color_gui = '#7EA4E5'
let g:indentLine_color_gui = '#2152A5'
"let g:indentLine_color_term = 35
"let g:indentLine_char = '|'
"let g:indentLine_char = '¦'
let g:indentLine_char = '┆'

let g:load_doxygen_syntax=1

let g:NERDTreeWinPos = "left"

" bufexplorer
map <S-Tab> :BufExplorerHorizontalSplit<CR>
"map <leader>be :BufExplorerHorizontalSplit<CR>

map <c-t> :CtrlPTag<CR>

" python-syntax
let python_highlight_all=1

" airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ ['error', 'warning' ]
      \ ]
"let g:airline_left_sep=''
"let g:airline_right_sep=''
let g:airline_skip_empty_sections = 1

" tagbar
let g:tagbar_left = 1

" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

" Ale
let g:ale_linters = {
    \'python':['flake8', 'mypy'],
    \}
let g:ale_fixers = {
    \'python':['black', 'isort'],
    \}
let g:ale_completion_enabled=1
let g:ale_set_balloons=1
let g:ale_hover=1
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'Err'
let g:ale_echo_msg_warning_str = 'War'
let g:ale_echo_msg_format = '[%severity%][%linter%(%code%)] %s'
let g:ale_set_highlights=0
"let g:ale-python-root='~/01_Middleware/mw-dev-tools/work/sources'
let g:ale_fix_on_save = 1

" Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" vim-tmux-navigator
let g:tmux_navigator_save_on_switch = 2

" vimux
let g:VimuxHeight = "50"

" editor-config
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" YouCompleteMe
let g:ycm_python_binary_path='/usr/bin/python3'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycp_add_preview_to_completeopt=1
let g:ycp_complete_in_comments=1
let g:ycp_complete_in_strings=1
set completeopt-=preview

" Ack
"nnoremap :Ack :Ack! " don't jump to first result automaticaly
cnoreabbrev Ack Ack!

" Coveragepy
let g:coveragepy_uncovered_sign = '>'


""""""""""""""""""""
"""" FUNCTIONS """""
""""""""""""""""""""
function! s:header_c()
    execute "normal! ggi/**"
    execute "normal! o * @file " . expand("%:t")
    execute "normal! o * @class "  . substitute(expand("%:t"), "\\.cpp", "", "g")
    execute "normal! o * @author Valognes Nicolas (nicolas.valognes@resolutionspectra.com)"
    execute "normal! o * @copyright Copyright Resolution Spectra Systems Corp (13 chemin du Vieux Chene, Meylan 38240 France)"
    execute "normal! o * @version 1.0"
    execute "normal! o**/"
    execute "normal! ggvG="
    execute "normal! G"

    execute "normal! o#include \"" . expand("%:t")
    execute "normal! 2hcwh\""
    execute "normal! o"
    execute "normal! o" . substitute(expand("%:t"), "\\.cpp", "", "g")
    execute "normal! A::" . substitute(expand("%:t"), "\\.cpp", "()", "g")
    execute "normal! o{"
    execute "normal! o}"
    execute "normal! o"
    execute "normal! o" . substitute(expand("%:t"), "\\.cpp", "", "g")
    execute "normal! A::~" . substitute(expand("%:t"), "\\.cpp", "()", "g")
    execute "normal! o{"
    execute "normal! o}"
    execute "normal! o"
    execute "normal! 6k"
endfunction

function! s:doxy_header_h()
    let gatename = "_" . substitute(toupper(expand("%:t")), "\\.", "_", "g") . "_"
    execute "normal! Go#endif"
    execute "normal! ggi/**"
    execute "normal! o * @file " . expand("%:t")
    execute "normal! o * @class "  . substitute(expand("%:t"), "\\.h", "", "g")
    execute "normal! o * @headerfile "
    execute "normal! o * @author Valognes Nicolas (nicolas.valognes@resolutionspectra.com)"
    execute "normal! o * @copyright Copyright Resolution Spectra Systems Corp (13 chemin du Vieux Chene, Meylan 38240 France)"
    execute "normal! o * @version 1.0"
    execute "normal! o * @brief This class describe..."
    execute "normal! o * <br>Reference documents : <a href=\"FILE_PATH\">FILE_NAME</a>"
    execute "normal! o * <br>"
    execute "normal! o**/"
    "execute "normal! o"
    execute "normal! o#ifndef " . gatename
    execute "normal! o#define " . gatename . " "
    execute "normal! o"
    execute "normal! oclass " . substitute(expand("%:t"), "\\.h", "", "g")
    execute "normal! o{"
    execute "normal! opublic:"
    execute "normal! o" . substitute(expand("%:t"), "\\.h", "();", "g")
    execute "normal! o~" . substitute(expand("%:t"), "\\.h", "();", "g")
    execute "normal! o"
    execute "normal! oprivate:"
    execute "normal! o};"
    execute "normal! o"
    execute "normal! Gvgg="
endfunction

function! s:includeVarDoxygenComment()
    execute "normal! A //!<  "
    execute "normal! $"
    startreplace
endfunction

function! DelTagOfFile(file)
  let fullpath = a:file
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let f = substitute(fullpath, cwd . "/", "", "")
  let f = escape(f, './')
  let cmd = 'sed -i "/' . f . '/d" "' . tagfilename . '"'
  let resp = system(cmd)
endfunction

function! UpdateTags()
  let f = expand("%:p")
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let cmd = 'ctags -a -f ' . tagfilename . ' --c++-kinds=+p --fields=+iaS --extra=+q ' . '"' . f . '"'
  call DelTagOfFile(f)
  let resp = system(cmd)
endfunction

function! s:headerPythonPEP8()
    execute "normal! ggO# -*- coding: utf-8 -*-"
endfunction

function! s:pythonTodoComment()
    execute "normal! O# TODO - NVS - "
    let currentdate=strftime("%Y-%m-%d")
    execute "normal! A" . currentdate
    execute "normal! A -  "
    execute "normal! $"
    startreplace
endfunction

function! s:pythonBreakpoint()
  "execute "normal! Oimport pdb; pdb.set_trace()  # [DEBUG | TO REMOVE] Breakpoint"
  execute "normal! O# fmt: off"
  execute "normal! oimport pdb; pdb.set_trace()"
  execute "normal! o# fmt: on"
endfunction

function! s:pythonPep8()
  execute "normal! A  # nopep8"
endfunction

function! s:pythonFixComment()
    execute "normal! O# FIXME - NVS - "
    let currentdate=strftime("%Y-%m-%d")
    execute "normal! A" . currentdate
    execute "normal! A -  "
    execute "normal! $"
    startreplace
endfunction

function! s:pyDebug()
  execute "normal! O# [DEBUG]"
  execute "normal! omy_file = open('/home/developer/98_Tmp/pydebug.txt', 'w')"
  execute "normal! omy_file.write(str(response))"
  execute "normal! omy_file.close()"
endfunction

function! s:jsonFormat()
  execute ":g/'/s/'/\"/g"
  execute ":g/True/s/True/\"True\"/g"
  execute ":g/False/s/False/\"False\"/g"
  execute ":g/None/s/None/\"None\"/g"
  execute ":w"
  execute ":%!python -m json.tool"
endfunction


""""""""""""""""""""
""""""" GUI """"""""
""""""""""""""""""""
if has("gui_running")
    if has("win32") "Windows options here
        " police
        set guifont=Consolas:h8:cANSI
        set antialias
    else
        if has("unix")
            let s:uname = system("uname")
            if s:uname == "Darwin\n"
                "Mac options here
            else
                "set guifont=Monospace\ 8
                set guifont=Roboto\ Mono\ For\ Powerline\ 8
                set antialias
            endif
        endif
    endif

    " GUI is running or is about to start.
    " set gvim window size (for an alternative on Windows, see simalt below).
    "set lines=45 columns=130

    " visuel longueur ligne 120
    "set colorcolumn=100
    "highlight ColorColumn guibg=#00153E
    "highlight NonText guifg=#888000

    "hide toolsbar
    set guioptions-=T
    " hide menubar
    set guioptions-=m
    "hide Right hand scrollbar
    set guioptions-=r
    set guioptions-=L
endif


""""""""""""""""""""""
" colors and functions
""""""""""""""""""""""
set t_Co=256
"set termguicolors
set background=dark

"colorscheme Tomorrow-Night-Bright
colorscheme jellybeans
"let g:airline_theme='tomorrow'
"let g:airline_theme='jellybeans'
set cursorline
"set cursorcolumn
hi Cursor guibg=#528bff ctermbg=69 gui=NONE cterm=NONE

set colorcolumn=100
"highlight ColorColumn guibg=#00153E
"highlight ColorColumn guibg=#272727
"highlight ColorColumn guibg=#888000
highlight NonText guifg=#888000

nnoremap <F2> :NERDTreeToggle /home/developer/01_Middleware/01-toruk<CR>
nnoremap <F3> :TagbarToggle<CR>
nnoremap <F4> :nohl<CR>
nnoremap <F5> :%s/\s\+$//e<CR>:w<CR>

""""""""" if C++ """"""""""
"nnoremap <F6> :call <SID>doxy_header_h()<CR>
"nnoremap <F7> :call <SID>header_c()<CR>
"nnoremap <F8> :call UpdateTags()<CR>

""""""""" if Python """"""""""
nnoremap <F6> :call <SID>headerPythonPEP8()<CR>
nnoremap <F7> :SyntasticCheck<CR>
autocmd FileType python nnoremap <LocalLeader>yapf :0,$!yapf<CR>
":command Yapf :0,$!yapf<CR>
""""""""""""""""""""""""""""""
nnoremap <F8> :sp<CR><C-w>w:terminal<CR><C-w>w:q!<CR>
nnoremap <F9> :Calendar -view=year -split=horizontal -position=below -height=12<CR>


"nnoremap <leader>t :tag <c-r><c-w><cr>
"nnoremap <leader>py :call <SID>headerPythonPEP8()<CR>
"nnoremap <leader>pyc :call <SID>pythonComment()<CR>
nnoremap <leader>t :call <SID>pythonTodoComment()<CR>
nnoremap <leader>f :call <SID>pythonFixComment()<CR>
nnoremap <leader>b :call <SID>pythonBreakpoint()<CR>
nnoremap <leader>p :call <SID>pythonPep8()<CR>

nnoremap <leader>deb :call <SID>pyDebug()<CR>
nnoremap <leader>json :call <SID>jsonFormat()<CR><CR>
nnoremap <Leader>dov :call <SID>includeVarDoxygenComment()<CR>
nnoremap <Leader>doc :Pydocstring<CR>
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vs :VimuxInterruptRunner<CR>
map <Leader>cov :Coveragepy session<CR>

" to work in terminal
au VimEnter * IndentLinesToggle
"let g:indentLine_color_gui = '#2152A5'
let g:indentLine_char = '┆'


set foldlevel=99
"set foldlevelstart=3
set foldmethod=indent
"hi Folded ctermfg=239
"hi Comment ctermfg=238
hi Comment ctermfg=238

" Add the virtualenv's site-packages to vim path
if has('python')
  py << EOF
  import os.path
  import sys
  import vim
  if 'VIRTUAL_ENV' in os.environ:
        project_base_dir = os.environ['VIRTUAL_ENV']
          sys.path.insert(0, project_base_dir)
          activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
          execfile(activate_this, dict(__file__=activate_this))
EOF
endif

" Load up virtualenv's vimrc if it exists
if filereadable($VIRTUAL_ENV . '/.vimrc')
  source $VIRTUAL_ENV/.vimrc
endif

if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\|DEBUG\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
  endif
endif

let g:falcon_airline = 1
let g:airline_theme = 'falcon'
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    silent! execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      call system("tmux select-pane -" . a:tmuxdir)
      redraw!
    endif
  endfunction

  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

  nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
  nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
  nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
  nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif
