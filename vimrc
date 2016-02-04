" Set up vim-pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

" Basic settings
set textwidth=80
set autoindent
set cindent
set tabstop=8
set expandtab
set noerrorbells
set backup
set ruler
set showmode
set wildignore=*.o,*.obj,*.class,*~,.bak,*.pyc,*.pyo,_build,dist,cabal-dev

set autoread
set autowrite
set incsearch
set showmatch
set ignorecase

set spell spelllang=en

let &guicursor = &guicursor . ",a:blinkon0"

set encoding=utf-8

nnoremap <m-Down> :cnext<cr>zvzz
nnoremap <m-Up> :cprevious<cr>zvzz

" Git commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" Tagbar
let g:tagbar_width=28

" Neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Python
au FileType python set tabstop=4 expandtab shiftwidth=4
au FileType python set omnifunc=pythoncomplete#Complete
let g:python_highlight_all=1

" Haskell
au BufWritePost *.hs GhcModCheck
au BufWritePost *.hs GhcModLint
au FileType haskell nnoremap <leader>t :GhcModType<cr>
au FileType haskell nnoremap <leader>T :GhcModTypeInsert<cr>
au FileType haskell set omnifunc=necoghc#omnifunc
au FileType haskell set tabstop=4
au FileType haskell set expandtab
au FileType haskell set softtabstop=2
au FileType haskell set shiftwidth=2

let g:necoghc_enable_detailed_browse = 1

au FileType haskell nnoremap <silent> <leader>i :HoogleInfo<CR>

let g:cumino_default_terminal = "gnome-terminal"
let g:cumino_use_hsenv = 0
let g:cumino_use_cabal_repl = 1

" Support 'codex'
set tags=tags;/,codex.tags;/

colorscheme flatlandia

set foldmethod=indent
set foldlevel=2
set foldcolumn=1
set nofoldenable
set cursorline
set hlsearch
