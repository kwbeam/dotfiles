syntax on
filetype plugin indent on
set autoindent
set number
set nobackup
set hlsearch
packadd matchit

" Use minpac to manage packages (and itself!)
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type':'opt'})

" Basic color scheme and status line stuff
call minpac#add('itchyny/lightline.vim')
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

call minpac#add('arcticicestudio/nord-vim')
colorscheme nord

" Use NERDTree
call minpac#add('scrooloose/nerdtree')
set laststatus=2
map <C-n> :NERDTreeToggle<CR>

" Languages
" Everything
" call minpac#add('sheerun/vim-polyglot')
"
" TypeScript
call minpac#add('leafgarland/typescript-vim')
call minpac#add('Quramy/tsuquyomi')
