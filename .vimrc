syntax on
set noerrorbells
set relativenumber
set nu
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartcase
set smartindent
set expandtab
set noswapfile
set incsearch
set scrolloff=8
set signcolumn=yes
set laststatus=2
set undodir=~/.vim/undodir
set undofile
set nobackup
set colorcolumn=0
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
"Plug 'Valloric/YouCompleteMe'
"Plug 'kien/ctrlp.vim.git'
"Plug 'nvim-telescope/telescope.nvim'
call plug#end()


colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "
"let g:netrw_browse_split=2
"let g:netrw_banner = 0
"let g:netrw_winsize = 25
"let g:ctrlp_use_caching = 0
" Find files using Telescope command-line sugar.
 "nnoremap <leader>ff <cmd>Telescope find_files<cr>
 "nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v <bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>= :vertical resize +5<CR>

nnoremap <silent> <leader>gd:YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf:YcmCompleter FitIt <CR>

"nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

