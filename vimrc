set nocompatible
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/joshdick/onedark.vim'
call plug#end()

colorscheme onedark
set encoding=utf-8
set shiftwidth=4
set smartindent
set ignorecase
set autoindent
set tabstop=4
set mouse=a
set colorcolumn=80
set showmatch
set incsearch
set smartcase
set hlsearch
set wildmenu
set cindent
set expandtab
set number
set autoread
set clipboard=unnamedplus
set hlsearch
set title
syntax on

let g:airline_theme='tomorrow'
"let g:airline#extensions#tabline#enabled = 1

map <F2> :nohlsearch<CR>
set pastetoggle=<F3>
nnoremap<F5> <Esc>:w<CR>:!chmod u+x %:p<enter>:!clear<enter>:!%:p<enter>
nnoremap<C-T> :tabnew<CR>
nnoremap<C-W> :tabclose<CR>
nnoremap<C-Left> :tabprevious<CR>
nnoremap<C-Right> :tabnext<CR>
nnoremap<Tab> :tabnext<CR>

"go run F9
inoremap <F9> <Esc>:w<CR>:!clear<CR>:!go run .<CR>
nnoremap <F9> <Esc>:w<CR>:!clear<CR>:!go run .<CR>

"rust run F8
inoremap <F8> <Esc>:w<CR>:!clear<CR>:!cargo run -r<CR>
nnoremap <F8> <Esc>:w<CR>:!clear<CR>:!cargo run -r<CR>

"c++ run F7
inoremap <F7> <Esc>:w<CR>:!clear<CR>:!g++ -std=c++20 -O2 -Wall -Wextra %:p; if [ $? -eq 0 ]; then ./a.out; fi<CR>
nnoremap <F7> <Esc>:w<CR>:!clear<CR>:!g++ -std=c++20 -O2 -Wall -Wextra %:p; if [ $? -eq 0 ]; then ./a.out; fi<CR>


"nim run F6
inoremap <F6> <Esc>:w<CR>:!clear<CR>:!nim r -d:release %:p<CR>
nnoremap <F6> <Esc>:w<CR>:!clear<CR>:!nim r -d:release %:p<CR>

inoremap<F5> <Esc>:w<enter>:!chmod u+x %:p<enter>:!clear<enter>:!%:p<enter>
inoremap ( ()<Esc>i
inoremap ;; ;<CR>
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>ko
