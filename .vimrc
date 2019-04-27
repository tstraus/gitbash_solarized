syntax enable
set number
set ruler
set hlsearch
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set foldmethod=syntax
set foldlevel=99

set laststatus=2

ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O
ino {;<CR> {<CR>};<ESC>O
