" Filetype, indent 
filetype plugin indent on

syntax enable
" Wild menu
set wildmenu
" Not compatible (?)
set nocp
" Modify tab key 
set expandtab
set tabstop=4
set sw=2

" Enable use of mouse
set mouse=a
" Confirmation
set confirm


" Color & background
if has('gui_running')
"   set background=light
    set guifont=Inconsolata:h12
    set nu
    colorscheme solarized
else
"    colorscheme solarized
"    set background=dark
endif
" Ignore case when searching
set ignorecase 
set smartcase 
" For gui use ( MacVim)
" set guifont=Source\ Code\ Pro:h10
set guioptions-=r
set guioptions-=L
" Honestly no idea what this does- launch other plugins 
execute pathogen#infect()
" Toggle Nerdtree with Ctrl + _ 
nnoremap <C-_> :NERDTreeToggle<CR>
" Mapping for move around windows 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
set splitbelow
set splitright

" Paste outside of vim 
" set clipboard=unnamed

" Change airline theme
let g:airline_theme='solarized'
" Make airline show up even with just one window
set laststatus=2

" Compile tex and open pdf, two carriages to return to edit
autocmd FileType plaintex,tex map <F8> :!pdflatex % && open %:r.pdf<CR>
autocmd FileType      fortran map <F8> :!makenek %:r<CR>
autocmd FileType       python map <F8> :!python3.5 %<CR>
" autocmd Filetype c,cpp  inoremap <buffer> <F5> <C-o>:update<Bar>execute '!make '.shellescape(expand('%:r'), 1)<CR>

" map <F8> :!pdflatex % && open %:r.pdf<CR><CR>
" map <F8> :!pdflatex % && open %:r.pdf<CR>
"
" Set path to include nek source
" set path+=~/nek5_svn/trunk/nek/
" Set path to include new Nek5000
set path+=~/Nek5000/core/

" Multiple files from one deep down directory
let mapleader='\'
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %% 
map <leader>es :sp %% 
map <leader>ev :vsp %% 
map <leader>et :tabe %% 

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"
autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us
