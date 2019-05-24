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
set encoding=utf-8

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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'benmills/vimux'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'w0rp/ale'
Plugin 'mileszs/ack.vim'
Plugin 'rbgrouleff/bclose.vim'
Plugin 'kshenoy/vim-signature'
"Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-utils/vim-man'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin'vhdirk/vim-cmake'

Plugin 'nicolasvalognes/nv-vim-wisebim'
Plugin 'nicolasvalognes/nv-vim-jellyscheme'
Plugin 'nicolasvalognes/nv-vim-comment-improved'
Plugin 'nicolasvalognes/nv-vim-json-format'

" Plugins for C/C++
"Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/c.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'justinmk/vim-syntax-extra'

" Plugins for Qt
Plugin 'kosl90/qt-highlight-vim'

"Plugin for Python
Plugin 'vim-python/python-syntax'

" Plugins for Javascript
Plugin 'leafgarland/typescript-vim'
"test for js
Plugin 'Shougo/vimproc.vim'

" Plugin for markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"Plugin for HTML
"Plugin 'alvan/vim-closetag'
Plugin 'rstacruz/sparkup'

" Plugins for Node.js
" see https://github.com/nodejs/node/wiki/Vim-Plugins

" Color scheme
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'KabbAmine/yowish.vim'



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

map <leader>k <Plug>(Man)
map <leader>v <Plug>(Vman)

au VimEnter * IndentLinesToggle
let g:indentLine_char = '┆'
let g:indentLine_setColor = 0
let g:indentLine_color_term = 24

let g:load_doxygen_syntax=1
let g:DoxygenToolkit_authorName="Nicolas Valognes"

let g:NERDTreeWinPos = "left"
"let g:NERDTreeMinimalUI = 1
"let g:NERDTreeMarkBookmarks = 0
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeStatusLine = -1

" bufexplorer
map <S-Tab> :BufExplorerHorizontalSplit<CR>

map <leader>tags :CtrlPTag<CR>

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
    \'markdown':['markdownlint',],
    \'typescript':['tslint', 'prettier',],
    \'cpp':['clang++', 'clang',],
    \'html':['prettier',],
    \'css':['prettier',],
    \}

let g:ale_fixers = {
    \'python':['black', 'isort'],
    \'cpp':['clang-format',],
    \'typescript':['prettier'],
    \'css':['prettier',],
    \'html':['prettier',],
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
"let g:ale_sign_warning='>>'
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
"let g:ale_cpp_clang_options = '-std=c++17 -isystem /usr/include/c++/v1 -I/usr/include/c++/v1 -I/opt/ros/kinetic/include -I/usr/local/include -I/usr/include -I/usr/include/x86_64-linux-gnu -I../**'
let g:ale_cpp_clang_options = '-std=c++17 -isystem -I../**'

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

set completeopt=menuone,noselect,noinsert
"set omnifunc=syntaxcomplete#Complete
" YouCompleteMe
let g:ycm_python_binary_path='/usr/bin/python3'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycp_add_preview_to_completeopt=1
let g:ycp_complete_in_comments=0
let g:ycp_complete_in_strings=0
let g:ycm_max_num_candidates = 50
let g:ycm_max_num_identifier_candidates = 50
let g:ycm_collect_identifiers_from_tags_files = 1
set completeopt-=preview
" disable ycm checker
let g:ycm_show_diagnostics_ui=0
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0

" UltiSnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vs :VimuxInterruptRunner<CR>

let g:developer_name="Nicolas Valognes"

" Ack
"nnoremap :Ack :Ack! " don't jump to first result automaticaly
"cnoreabbrev Ack Ack! --type=python

" Coveragepy
"let g:coveragepy_uncovered_sign = '>'

" vim-lsp
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
                \ 'name': 'pyls',
                \ 'cmd': {server_info->['pyls']},
                \ 'whitelist': ['python'],
                \ })
endif

"let g:gitgutter_sign_added = '∙'
"let g:gitgutter_sign_modified = '∙'
"let g:gitgutter_sign_removed = '∙'
"let g:gitgutter_sign_modified_removed = '∙'



noremap <Right> :bn<CR>
noremap <Left> :bp<CR>
nnoremap :bc :Bclose


au BufRead,BufNewFile *.qss setfiletype css "syntax color for qt .css file
au BufRead,BufNewFile *.qrc setfiletype xml "syntax color for qt .qrc file
au BufRead,BufNewFile *.md setfiletype text
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.ts setlocal ft=typescript
"au BufNewFile,BufRead *.md set ft=markdown
au! BufRead,BufNewFile *.markdown set filetype=mkd
au! BufRead,BufNewFile *.md       set filetype=mkd

au BufNewFile,BufRead CMakeLists.txt set filetype=cmake
"au BufRead *.txt set ft=


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

"colorscheme Tomorrow-Night
colorscheme jellyscheme
"let g:airline_theme='tomorrow'
let g:airline_theme='jellybeans'
"let g:airline_theme='papercolor'
set cursorline
"set cursorcolumn
"hi Cursor guibg=#528bff ctermbg=69 gui=NONE cterm=NONE

set colorcolumn=120
au BufRead,BufNewFile *.c,*.cpp,*h,*.hpp set colorcolumn=80
au BufRead,BufNewFile *.py set colorcolumn=100
"execute "set colorcolumn=".join(range(101,999), ',')
highlight ColorColumn ctermbg=234

" to work in terminal
au VimEnter * IndentLinesToggle
let g:indentLine_char = '┆'
let g:indentLine_setColor = 0
let g:indentLine_color_term = 24


set foldlevel=99
"set foldlevelstart=4
set foldmethod=indent
"if (&ft=="python")
"set foldmethod=indent
"else
  "set foldmethod=syntax
"endif

"hi Folded ctermfg=239
"hi Comment ctermfg=238
hi Comment ctermfg=240

" Add the virtualenv's site-packages to vim path
"if has('python')
  "py << EOF
  "import os.path
  "import sys
  "import vim
  "if 'VIRTUAL_ENV' in os.environ:
    "project_base_dir = os.environ['VIRTUAL_ENV']
    "sys.path.insert(0, project_base_dir)
    "activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    "execfile(activate_this, dict(__file__=activate_this))
    "EOF
  "endif

"" Load up virtualenv's vimrc if it exists
"if filereadable($VIRTUAL_ENV . '/.vimrc')
  "source $VIRTUAL_ENV/.vimrc
"endif

if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\|DEBUG\|OPTIMIZE\)')
    autocmd Syntax * call matchadd('ImprovedTodo', '\W\zs\(NOTE\|INFO\|IDEA\)')
  endif
endif

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


function! s:pythonBreakpoint()
  "execute "normal! Oimport pdb; pdb.set_trace()  # [DEBUG | TO REMOVE] Breakpoint"
  execute "normal! O# fmt: off"
  execute "normal! oimport pdb; pdb.set_trace()"
  execute "normal! o# fmt: on"
endfunction
nnoremap <leader>b :call <SID>pythonBreakpoint()<CR>

function! s:pyDebug()
  execute "normal! O# [DEBUG]"
  execute "normal! omy_file = open('/tmp/pydebug.txt', 'w')"
  execute "normal! omy_file.write(str(response))"
  execute "normal! omy_file.close()"
endfunction
nnoremap <leader>deb :call <SID>pyDebug()<CR>

" coverage highlight
highlight NoCoverage ctermbg=2
highlight NoCoverage ctermbg=0

set path+=../../**

cnoreabbrev Ack Ack!

nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :TagbarToggle<CR>
nnoremap <F4> :nohl<CR>
set pastetoggle=<F5>

"source ~/.wisebim_vimrc

"""  Current work specific config

set tags+=/home/nicolas/00_Tools/wisebim_tags/py37_PlansToBim_core_tags
set tags+=/home/nicolas/00_Tools/wisebim_tags/plans2bim_front_tags
set tags+=/home/nicolas/00_Tools/wisebim_tags/plans2bim_middleware_tags
set tags+=/home/nicolas/00_Tools/wisebim_tags/plans2bim_core_tags
set tags+=/home/nicolas/00_Tools/wisebim_tags/cpp_headers_tags

