if !has('nvim')
  set ttymouse=xterm2
endif
set nocompatible              " be iMproved, required
set hidden
set splitbelow
set splitright
set noerrorbells
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set tabstop=2
set shiftwidth=2
set expandtab
set background=dark
set number
set relativenumber
set scrolloff=8
set path+=**
"______________/**** SEARCH ****\_____________________
set incsearch
set ignorecase
set smartcase
set hlsearch
highlight clear search
highlight search ctermfg=164
"______________/**** FORMAT ****\_____________________
set list listchars=tab:⇥␣,trail:␣ " Highlight whitespace
set autoindent                    " Retain indentation on next line
set smartindent                   " Turn on autoindenting of blocks
set copyindent

let mapleader = " "
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \| PlugInstall --sync | source $MYVIMRC
      \| endif

call plug#begin()
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'ycm-core/YouCompleteMe'
Plug 'hashivim/vim-terraform'
Plug 'rust-lang/rust.vim'
Plug 'rust-lang/rls'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'mbbill/undotree'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
call plug#end()

nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>t :TerraformFmt<CR>
autocmd VimEnter * NERDTree | wincmd p
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
filetype on
colo delek
syntax on
filetype indent on
let g:rustfmt_autosave = 1
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>

if executable('rls')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif 

if has("persistent_undo")
  let target_path = expand('~/.vim/undodir')
  if !isdirectory(target_path)
    call mkdir(target_path, "p", 0700)
  endif

  let &undodir=target_path
  set undofile
endif

packloadall
