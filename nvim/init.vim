syntax enable
set encoding=utf-8
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set guicursor=
set number
set hidden
set noswapfile
set undofile
"set termguicolors
set scrolloff=8
set completeopt=menuone,preview,noinsert,noselect
set colorcolumn=80
set signcolumn=yes
set cmdheight=2
set updatetime=200
call plug#begin('C:/Users/Quisl/AppData/Local/nvim/autoload/plugged')

"req fuer telescope
Plug 'BurntSushi/ripgrep'
Plug 'nvim-lua/plenary.nvim'
Plug 'sharkdp/fd'
Plug 'nvim-treesitter/nvim-treesitter'

""""""""""""""""""""
Plug 'mbbill/undotree'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'davidhalter/jedi-vim'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins' }
Plug 'psf/black'
call plug#end()

nnoremap <leader>pv :SEX!<CR>

colorscheme gruvbox

let mapleader = " "
" Undo tree
nnoremap <F5> :UndotreeToggle<CR>
" Telescope
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" Semshi
nmap <silent> <leader>rr :Semshi rename<CR>

nmap <silent> <Tab> :Semshi goto name next<CR>
nmap <silent> <S-Tab> :Semshi goto name prev<CR>

nmap <silent> <leader>c :Semshi goto class next<CR>
nmap <silent> <leader>C :Semshi goto class prev<CR>

nmap <silent> <leader>f :Semshi goto function next<CR>
nmap <silent> <leader>F :Semshi goto function prev<CR>

nmap <silent> <leader>gu :Semshi goto unresolved first<CR>
nmap <silent> <leader>gp :Semshi goto parameterUnused first<CR>

nmap <silent> <leader>ee :Semshi error<CR>
nmap <silent> <leader>ge :Semshi goto error<CR>


"highlight Normal guibg=none

"autocmd FileType python setlocal completeopt-=preview
autocmd BufWritePost *.py execute ':Black'
