" NVIM configuration by Lucas Rouckhout
"
" This file should be placed here $HOME/.config/nvim/init.vim
call plug#begin('~/.config/nvim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'cespare/vim-toml'
Plug 'martinda/jenkinsfile-vim-syntax'
Plug 'gruvbox-community/gruvbox'
Plug 'Chiel92/vim-autoformat'
call plug#end()

" Basic settings
syntax on
set noerrorbells
set nu
set cindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set mouse=a
set noswapfile
set nowrap
set smartcase
set incsearch
set cursorline

" For coc.nvim
set nobackup
set nowritebackup

" Fzf keybind
nnoremap <C-p> :Files<CR>

" Theme
set background=dark
colorscheme gruvbox

" SuperTab pressing enter does completion and scroll down when pressing tab.
let g:SuperTabCrMapping = 1
let g:SuperTabDefaultCompletionType = "<c-n>"

" NERDTree toggle with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Coc LSP completion settings.
set cmdheight=2
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gt <Plug>(coc-references)

" For vim format
let g:python3_host_prog='/usr/bin/python3'

" Automatically organize go imports on save
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

" Format code key-binding
noremap <C-f> :Autoformat<CR>

" Remeber where you were in buffer
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
