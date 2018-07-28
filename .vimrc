execute pathogen#infect()

syntax enable
filetype plugin indent on

colorscheme alduin
set t_Co=256
set noshowmode

" set leader
:let mapleader=";"

" setting tabs
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set expandtab

" displays line numbers
set number relativenumber
" switch between number modes depending on mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" allow switching through unsaved buffers
set hidden
" provides menu for autocompletion
set wildmenu
" highlight matching parenthesis/brace
set showmatch
" search characters as entered
set incsearch

" set mouse functionality
set ttymouse=xterm2
set mouse=a

" remap command mode
:imap jj <Esc>

" set shorter alias for Bclose
:cabbr bc Bclose

" simplify buffer navigation
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>

" NERDTree stuff
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" airline stuff
let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'
"let g:airline_left_sep=''
"let g:airline_right_sep=''
let g:airline_detect_modified=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
