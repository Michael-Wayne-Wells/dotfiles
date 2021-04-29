set nocompatible              " be iMproved, required
" set the runtime path to inclule and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required

" Plugin 'rust-lang/rust.vim'
" Plugin 'rizzatti/dash.vim'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
" Plugin 'rust-lang/rls'
Plugin 'mattn/vim-lsp-settings'
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'vim-ruby/vim-ruby'
Plugin 'JamshedVesuna/vim-markdown-preview'
" Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'neoclide/coc.nvim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'yuezk/vim-js'
Plugin 'tpope/vim-fugitive'
Plugin 'jiangmiao/auto-pairs'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
" Files structure tree
Plugin 'preservim/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
call vundle#end()            " required
if !has('nvim')
  set ttymouse=xterm2
endif
let vim_markdown_preview_github=1
let vim_markdown_preview_toggle=1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
autocmd VimEnter * NERDTree | wincmd p
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
filetype plugin indent on    " required
filetype on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
colo delek
syntax on
set background=dark
set number
filetype indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
set hidden
set splitbelow
set splitright 
packloadall
