"" Setup Vundle to manage plugins
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"" The bundles you install will be listed here
" Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" " see :h vundle for more details or wiki for FAQ

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

"" Settings for vim-airline
Plugin 'bling/vim-airline'
"" git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
"" (run in vim) :helptags ~/.vim/bundle/vim-airline/do
set laststatus=2

Plugin 'tpope/vim-fugitive'

Plugin 'Efficient-python-folding'
set nofoldenable

Plugin 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

Plugin 'klen/python-mode'
let g:pymode_folding = 0
"zf#j creates a fold from the cursor down # lines.
"zf/string creates a fold from the cursor to string .
"zj moves the cursor to the next fold.
"zk moves the cursor to the previous fold.
"zo opens a fold at the cursor.
"zO opens all folds at the cursor.
"zc close a fold at the cursor.
"zm increases the foldlevel by one.
"zM closes all open folds.
"zr decreases the foldlevel by one.
"zR decreases the foldlevel to zero -- all folds will be open.
"zd deletes the fold at the cursor.
"zE deletes all folds.
"[z move to start of open fold.
"]z move to end of open fold.
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"Linting
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pyflakes', 'mccabe']
let g:pymode_lint_sort = ['E', 'C', 'I']
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_trim_whitespaces = 1
"Don't use rope
let g:pymode_rope = 0
"Run code in vim
let g:pymode_run = 0
"let g:pymode_run_bind = '<leader>r'
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
"" " Keys:
"" " K             Show python docs
"" " [[            Jump on previous class or function (normal, visual, operator
"" modes)
"" " ]]            Jump on next class or function (normal, visual, operator
"" modes)
"" " [M            Jump on previous class or method (normal, visual, operator
"" modes)
"" " ]M            Jump on next class or method (normal, visual, operator modes)
"" " Support virtualenv
"let g:pymode_virtualenv = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"" The rest of your config follows here
"
"" ============================================================================
"" Vim Basic sytle setup
"" ============================================================================
"
"" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"" Better copy & paste
"" When you want to paste large blocks of code into vim, press F2 before you
"" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

"" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

"" Rebind <Leader> key
"" I like to have it here becuase it is easier to reach than the default and
"" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

"" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

"" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

"" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
"" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"" easier moving of code blocks
"" Try to go into visual mode (v), thenselect several lines of code here and
"" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

"" Color scheme
"" mkdir -p ~/.vim/colors 
"" curl -so ~/.vim/colors/wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

"" Enable syntax highlighting
"" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

"" Showing line numbers and length
set number  " show line numbers
set tw=99   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=100
highlight ColorColumn ctermbg=233

"" Useful settings
set history=700
set undolevels=700

"" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Disable stupid backup and swap files - they trigger too many events
"" for file system watchers
set nobackup
set nowritebackup
set noswapfile

set cursorline
highlight Cursorline cterm=bold

"" automatically change window's cwd to file's dir
set autochdir

"" insert a new-line after the current line by pressing Enter (Shift-Enter for
"" inserting a line before the current line):
"nmap <S-Enter> O<Esc>
"nmap <CR> o<Esc>

"" Removes highlight of your last search
"" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>
