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
call plug#end()

colorscheme gruvbox

let mapleader = " "
nnoremap <F5> :UndotreeToggle<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"highlight Normal guibg=none

