" NVIM configuration by Lucas Rouckhout
"
" This file should be placed here $HOME/.config/nvim/init.vim
call plug#begin('~/.config/nvim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'
Plug 'shougo/deoplete.nvim'
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
call plug#end()

" Basic settings
set number
set autoindent
set cindent
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set termguicolors

" Ale Linters
let g:ale_fixers = { 'rust': ['rustfmt'], 'go': ['gofmt'], 'javascript': ['eslint'] }
let g:ale_fix_on_save = 1

" Theme
let g:gruvbox_italic=1
set termguicolors
colorscheme gruvbox

" SuperTab pressing enter does completion and scroll down when pressing tab.
let g:SuperTabCrMapping = 1
let g:SuperTabDefaultCompletionType = "<c-n>"

" NERDTree toggle with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
