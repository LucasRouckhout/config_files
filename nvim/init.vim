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
Plug 'leafgarland/typescript-vim'
Plug 'cespare/vim-toml'
Plug 'martinda/jenkinsfile-vim-syntax'
Plug 'morhetz/gruvbox'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-scripts/mako.vim'
Plug 'mrk21/yaml-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'elixir-editors/vim-elixir'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'sophacles/vim-bundle-mako'
call plug#end()

" Basic settings
syntax enable
filetype plugin indent on
set noerrorbells
set nu
set cindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set mouse=a
set noswapfile
set nowrap
set smartcase
set incsearch

" Use ripgrep
nnoremap <C-p> :Rg<Cr>

" Theme
set background=dark
"set termguicolors
"let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox


" This super handy piece of code simply selects the current python interpreter
" you are using (i.e your venv). This means that you will have to install:
" neovim in each venv you create though. This will also automatically use the
" Microsoft Python Language Server instead of jedi
call coc#config('python', {
\   'jediEnabled': v:false,
\   'pythonPath': split(execute('!which python'), '\n')[-1]
\ })

" Correct comment highlighting for coc configuration file
autocmd FileType json syntax match Comment +\/\/.\+$+

" Reset the cursor style to whatever
" the terminal emulator is setting
" when exiting VIM.
"augroup restore_cursor_shape
"  autocmd!
"  au VimLeave * set guicursor=a:ver10-blinkoff0
"augroup END

" SuperTab pressing enter does completion and scroll down when pressing tab.
let g:SuperTabCrMapping = 1
let g:SuperTabDefaultCompletionType = "<c-n>"

" NERDTree toggle with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" NERDTree show hidden files
let NERDTreeShowHidden=1

" Coc LSP completion settings.
set cmdheight=2
nmap <silent>gd <Plug>(coc-definition)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Automatically organize go imports on save
"autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

" Format code key-binding
noremap <C-f> :Autoformat<CR>

" Remeber where you were in buffer
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Add missing imports on save (golang)
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
