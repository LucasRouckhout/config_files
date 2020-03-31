" NVIM configuration by Lucas Rouckhout
"
" This file should be placed here $HOME/.config/nvim/init.vim
call plug#begin('~/.config/nvim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'cespare/vim-toml'
Plug 'martinda/jenkinsfile-vim-syntax'
"Plug 'ayu-theme/ayu-vim'
call plug#end()

" Basic settings
set number
set autoindent
set cindent
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set termguicolors
set mouse=a

" Ale Linters
let g:ale_linters = { 'rust': ['rustfmt'] }
let g:ale_fixers = { 'rust': ['rustfmt'], 'go': ['gofmt'], 
\   'css': ['prettier'],
\	'html': ['prettier'],
\	'cpp': ['clang-format']
\}
let g:ale_c_clangformat_options = '-style="{IndentWidth: 4,TabWidth: 4,BasedOnStyle: Microsoft}"'
"let g:ale_typescript_standard_options = '--single-quote'
"let g:ale_javascript_prettier_options = '--single-quote'
"let g:ale_java_javac_executable = "javac -cp /usr/local/share/lombok/lombok.jar"
let g:ale_fix_on_save = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'

" Theme
set termguicolors     " enable true colors support
colorscheme gruvbox
let g:gruvbox_italic=1
set background=dark

" SuperTab pressing enter does completion and scroll down when pressing tab.
let g:SuperTabCrMapping = 1
let g:SuperTabDefaultCompletionType = "<c-n>"

" NERDTree toggle with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Coc LSP completion settings.
set cmdheight=2
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)

" Remeber where you were in buffer
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
