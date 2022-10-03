call plug#begin()
" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Nerd Tree
Plug 'preservim/nerdtree'
" Dev Icons
Plug 'kyazdani42/nvim-web-devicons'
" Css Color
Plug 'gko/vim-coloresque'
" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter'
" Api Testing
Plug 'NTBBloodbath/rest.nvim'
Plug 'diepm/vim-rest-console'
" Nvim Terminal
Plug 's1n7ax/nvim-terminal'
" Show tabs
Plug 'Yggdroot/indentLine'
"""""""""""""""" THEMES 
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'Everblush/everblush.nvim', { 'as': 'everblush' }
Plug 'AhmedAbdulrahman/vim-aylin'
Plug 'sainnhe/everforest'
Plug 'ericbn/vim-solarized'
Plug 'ray-x/aurora'
""""""""""""""" React Autocomplets
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" Vim Airline
Plug 'vim-airline/vim-airline'
call plug#end()


set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

"Map Nerd Tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-g> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
" Aurora config
set termguicolors            " 24 bit color
let g:aurora_italic = 1     " italic
let g:aurora_transparent = 1     " transparent
let g:aurora_bold = 1     " bold
let g:aurora_darker = 1     " darker background


" Airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1

" Rest KeyBinding
set encoding=utf8

set number

colorscheme tokyonight  
