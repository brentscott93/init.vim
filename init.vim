" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" List of plugins.
" Make sure you use single quotes

" Shorthand notation
Plug 'jalvesaq/Nvim-R'
Plug 'preservim/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'navarasu/onedark.nvim'
Plug 'itchyny/lightline.vim'
"Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()

" Set a Local Leader

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "
let g:mapleader = " "

" Line Numbers & Indentation
set backspace=indent,eol,start  " To make backscape work in all conditions.
set ma                          " To set mark a at current cursor location.
set number                      " To switch the line numbers on.
set expandtab                   " To enter spaces when tab is pressed.
set smarttab                    " To use smart tabs.
set autoindent                  " To copy indentation from current line 
                                " when starting a new line.
set si                          " To switch on smart indentation.
set cursorline

" Search
set ignorecase                  " To ignore case when searching.
set smartcase                   " When searching try to be smart about cases.
set hlsearch                    " To highlight search results.
set incsearch                   " To make search act like search in modern browsers.
set magic                       " For regular expressions turn magic on.

" Brackets
set showmatch                   " To show matching brackets when text indicator                               " is over them.
set mat=2                       " How many tenths of a second to blink 
                                " when matching brackets.
" Errors
set noerrorbells                " No annoying sound on errors.

" Files & Backup
set nobackup                     " Turn off backup.
set nowb                         " Don't backup before overwriting a file.
set noswapfile                   " Don't create a swap file.
set ffs=unix,dos,mac             " Use Unix as the standard file type.

" Color & Fonts
syntax on
syntax enable                   " Enable syntax highlighting.
set encoding=utf8                " Set utf8 as standard encoding and 

" onedark theme
let g:onedark_config = {
  \ 'style': 'warmer',
  \ 'toggle_style_key': '<leader>ts',
  \ 'ending_tildes': v:true,
  \ 'diagnostics': {
    \ 'darker': v:false,
    \ 'background': v:false,
  \ },
\ }
colorscheme onedark                " Enable onedark theme.

" Plugin Related Settings

" NERD Tree
map <leader>nn :NERDTreeToggle<CR>                  " Toggle NERD tree.

" LightLine.vim 
set noshowmode                " To remove -- Insert -- message in status
set laststatus=2              " To tell Vim we want to see the statusline.
let g:lightline = {
   \ 'colorscheme':'one',
   \ }


" General NVIM/VIM Settings
" Mouse Integration
set mouse=i                   " Enable mouse support in insert mode.
" Tabs & Navigation
map <leader>tn :tabnew<cr>    " To create a new tab.
map <leader>to :tabonly<cr>     " To close all other tabs (show only the current tab).
map <leader>tc :tabclose<cr>    " To close the current tab.
map <leader>tm :tabmove<cr>     " To move the current tab to next position.
map <leader>tl :tabn<cr>        " To swtich to next tab.
map <leader>th :tabp<cr>        " To switch to previous tab.



"nvim-r things
let R_assign = 2
let R_objbr_place = 'console,right'
let R_nvimpager = 'tab'
let R_args = ['--vanilla']
let R_hi_fun_globenv = 1 " Highlight after an InsertEnter event
let R_rmd_environment = 'new.env()'
let R_clear_line = 1
let R_openhtml = 1

