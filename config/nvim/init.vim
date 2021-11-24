set number
set relativenumber
set autoindent
set tabstop=4
set mouse=a
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set smartindent
set autoindent
set background=dark
set nobackup
set nowritebackup
set clipboard=unnamedplus
set encoding=utf-8
set nowrap
set pumheight=15
set splitbelow
set splitright
set t_Co=256
syntax enable


call plug#begin()

"lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'https://github.com/onsails/lspkind-nvim'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" vim sneak
Plug 'https://github.com/justinmk/vim-sneak'

" indent guides
Plug 'https://github.com/yggdroot/indentline'

"which vim
Plug 'https://github.com/liuchengxu/vim-which-key'
Plug 'AckslD/nvim-whichkey-setup.lua'

" git
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/airblade/vim-gitgutter'

" vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" rainbow
Plug 'luochen1990/rainbow'

" Autopairs
Plug 'jiangmiao/auto-pairs'

"Nerd Tree
Plug 'https://github.com/preservim/nerdtree'

" Surround
Plug 'https://github.com/tpope/vim-surround'

" icons
Plug 'ryanoasis/vim-devicons'

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"startify
Plug 'mhinz/vim-startify'

" colorschems
Plug 'https://github.com/chriskempson/base16'
Plug 'dylanaraps/wal.vim'

"snippets
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/vim-vsnip-integ'

call plug#end()

set completeopt=menu,menuone,noselect

source ~/.config/nvim/lspconfig.vim
luafile ~/.config/nvim/lua/nvim-cmp.lua
luafile ~/.config/nvim/lua/plugins/treesitter.lua

" NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="-"

" air-line
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" rainbow
let g:rainbow_active = 1

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

tnoremap <Esc> <C-\><C-n>

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" sneak
let g:sneak#label = 1

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Colorscheme
colorscheme wal

" snippets
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

