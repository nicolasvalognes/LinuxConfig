"
" -- Affichage
set title " Met a jour le titre de votre fenetre ou de
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

" mapping navigation entre fenetre
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move between rows in wrapped lines
noremap j gj
noremap k gk

let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","

nnoremap Q <nop>

" --- mapping recherche sur la barre espace (BUG with :Ex if active)
"map <space> /
map ; /

" --- map 0 on ^ to go to first non-blank character of the line
map 0 ^

" undo backup swap directory
set undodir=~/.nvim/.undo//
set backupdir=~/.nvim/.backups//
set directory=~/.nvim/.swaps//

set signcolumn=yes

" limit popup menu height
set pumheight=20
set cmdheight=2

set wildmenu
set wildmode=longest:full,list:full

set completeopt=longest,menuone

" Yank from cursor to end of line, to be consistent with C and D
nnoremap Y y$


" Write as root, when you forgot to sudoedit
cnoreabbrev w!! w !sudo tee % >/dev/null

""""""""""""""""""""
""""" PLUGINS """"""
""""""""""""""""""""
call plug#begin('~/.nvim/plugged')
" General plugins
Plug 'jlanzarotta/bufexplorer'
Plug 'ap/vim-css-color'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/indentLine'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'rbgrouleff/bclose.vim'
Plug 'kshenoy/vim-signature'
Plug 'junegunn/fzf.vim'
Plug 'Numkil/ag.nvim'

" perso
Plug 'nicolasvalognes/nv-vim-wisebim'
Plug 'nicolasvalognes/nv-vim-comment-improved'
Plug 'nicolasvalognes/nv-vim-json-format'

" Plugs for C/C++
"Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/c.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'justinmk/vim-syntax-extra'

" Plugs for Qt
Plug 'kosl90/qt-highlight-vim'

"Plug for Python
Plug 'vim-python/python-syntax'

" Plugs for Javascript
Plug 'leafgarland/typescript-vim'
Plug 'Galooshi/vim-import-js'

" Plug for markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

"Plug for HTML
Plug 'rstacruz/sparkup'

" Plugs for Node.js
" see https://github.com/nodejs/node/wiki/Vim-Plugs

" Color scheme
Plug 'vim-airline/vim-airline-themes'
Plug 'nicolasvalognes/nv-vim-jellyscheme'

call plug#end()

filetype plugin indent on    " required

" nv-vim-comment-improved
let g:developer_name="Nicolas Valognes"

" bufexplorer
map <S-Tab> :BufExplorerHorizontalSplit<CR>

" auto-save
let g:auto_save = 1 " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
let g:auto_save_silent = 1  " do not display the auto-save notification


"map <leader>tags :CtrlPTag<CR>
map <leader>tags :Tags<CR>
map <C-p> :Files<CR>

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
let g:airline_skip_empty_sections = 1


" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

" Ale
let g:ale_linters = {
    \'python':['flake8', 'mypy'],
    \'markdown':['markdownlint',],
    \'typescript':['prettier',],
    \'cpp':['clang++', 'clang',],
    \'html':['prettier',],
    \'css':['prettier',],
    \}

let g:ale_fixers = {
    \'python':['black', 'isort'],
    \'cpp':['clang-format',],
    \'typescript':['prettier'],
    \'css':['prettier',],
    \'php':['php_cs_fixer',],
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
let g:ale_fix_on_save = 1
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
let g:ale_cpp_clang_options = '-std=c++17 -isystem -I../**'
let g:ale_python_pylint_options = "--init-hook='import sys; sys.path.append(\".\")'"
let g:ale_python_auto_pipenv = 1


" vim-tmux-navigator
let g:tmux_navigator_save_on_switch = 2

" vimux
let g:VimuxHeight = "50"

" editor-config
let g:EditorConfig_exclude_patterns = ['fugitive://.*']


map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vs :VimuxInterruptRunner<CR>

" vim-lsp
"if executable('pyls')
    "" pip install python-language-server
    "au User lsp_setup call lsp#register_server({
                "\ 'name': 'pyls',
                "\ 'cmd': {server_info->['pyls']},
                "\ 'whitelist': ['python'],
                "\ })
"endif


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
set background=dark

colorscheme jellyscheme
let g:airline_theme='lucius'
set cursorline

set colorcolumn=120
au BufRead,BufNewFile *.c,*.cpp,*h,*.hpp set colorcolumn=80
au BufRead,BufNewFile *.py set colorcolumn=100
highlight ColorColumn ctermbg=234

" to work in terminal
au VimEnter * IndentLinesToggle
let g:indentLine_char = '┆'


set foldlevel=99
set foldmethod=indent
set foldlevelstart=6

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


nnoremap <F3> :nohl<CR>
set pastetoggle=<F4>

"""  Current work specific config
"set tags+=/home/nicolas/00_Tools/wisebim_tags/*
"set tags+=/home/nicolas/00_Tools/wisebim_tags/cpp_headers_tags
"set tags+=/home/nicolas/00_Tools/wisebim_tags/py37_PlansToBim_tags

"set tags+=/home/nicolas/00_Tools/wisebim_tags/plans2bim_front_tags
"set tags+=/home/nicolas/00_Tools/wisebim_tags/grid2bim_front_tags
"set tags+=/home/nicolas/00_Tools/wisebim_tags/middleware_lib_tags
"set tags+=/home/nicolas/00_Tools/wisebim_tags/wisebim_component_tags
"set tags+=/home/nicolas/00_Tools/wisebim_tags/plans2bim_controlcenter_tags
"set tags+=/home/nicolas/00_Tools/wisebim_tags/plans2bim_core_tags


" disable modeline for safety
" see https://github.com/numirias/security/blob/master/doc/2019-06-04_ace-vim-neovim.md
set modelines=0
set nomodeline


"### COC plugin ###

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" to work in terminal
au VimEnter * IndentLinesToggle
