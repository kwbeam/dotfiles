set t_Co=256
" Use minpac to manage packages (and itself!)
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type':'opt'})

" Defaults, please
call minpac#add('tpope/vim-sensible')
set number
set nobackup
set hlsearch
set expandtab
set softtabstop=2
set shiftwidth=2
set shiftround

" Sync with clipboard
set clipboard^=unnamed

" Use color schemes in the terminal
call minpac#add('godlygeek/csapprox')

" Basic color scheme and status line stuff
call minpac#add('itchyny/lightline.vim')
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

call minpac#add('chriskempson/vim-tomorrow-theme')
colorscheme Tomorrow-Night-Eighties

" Use NERDTree
call minpac#add('scrooloose/nerdtree')
set laststatus=2
map <C-n> :NERDTreeToggle<CR>

" git
call minpac#add('airblade/vim-gitgutter')

" Cross-language plugins
call minpac#add('w0rp/ale')

call minpac#add('janko-m/vim-test')
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" Elm
call minpac#add('ElmCast/elm-vim')
let g:elm_format_autosave = 1

" TypeScript
call minpac#add('leafgarland/typescript-vim')
call minpac#add('Quramy/tsuquyomi')
