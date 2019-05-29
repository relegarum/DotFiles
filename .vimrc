set enc=utf-8
set nocompatible
filetype off

source ~/.vim/plugins.vim

filetype plugin indent on

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2

syntax on
set number relativenumber
set list
set showmatch
set cursorline
set t_Co=256
set cc=80


let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:tagbar_autofocus = 1 


let g:pymode_python = 'python3'


inoremap <Nul> <C-n>

nmap <leader>kf ggvG==


nmap <leader>r :source ~/.vimrc<CR>

nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i

" NERDTree
nmap <C-d> :NERDTreeToggle<CR>
imap <C-d> <ESC>:NERDTreeToggle<CR>i

autocmd StdinReadPre * let s:std_in =1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Git gutter
nmap <leader>hn <Plug>GitGutterNextHunk
nmap <leader>hp <Plug>GitGutterPreviousHunk
nmap <leader>hs <Plug>GitGutterStageHunk
nmap <leader>hu <Plug>GitGutterUndoHunk

" Quickfix loop
nmap <leader>q <Plug>window:quickfix:loop

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Formatters
autocmd FileType c nmap <leader>cf :!clang-format.exe --style=file -i %<CR>
autocmd FileType h nmap <leader>cf :!clang-format.exe --style=file -i %<CR>
autocmd FileType cpp nmap <leader>cf :!clang-format.exe --style=file -i %<CR>
autocmd FileType python nmap <leader>cf :!yapf.exe -i %<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map } ]}
map { [{

nmap 1 :bp<CR>
nmap 2 :bn<CR>


colorscheme gruvbox
set background=dark


if has("persistent_undo")
    set undodir=$HOME."/.undodir"
    set undofile
endif

