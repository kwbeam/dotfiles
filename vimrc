set t_Co=256
" Use minpac to manage packages (and itself!)
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type':'opt'})
packloadall

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
colorscheme Tomorrow-Night-Bright

" git
call minpac#add('tpope/vim-fugitive')
call minpac#add('airblade/vim-gitgutter')

" Language Server Experiments

" call minpac#add('janko-m/vim-test')
" nmap <silent> t<C-n> :TestNearest<CR>
" nmap <silent> t<C-f> :TestFile<CR>
" nmap <silent> t<C-s> :TestSuite<CR>
" nmap <silent> t<C-l> :TestLast<CR>
" nmap <silent> t<C-g> :TestVisit<CR>

" call minpac#add('purescript-contrib/haskell-vim')
" call minpac#add('pangloss/vim-javascript')
" call minpac#add('purescript-contrib/purescript-vim')

" TypeScript
" call minpac#add('leafgarland/typescript-vim')
" call minpac#add('Quramy/tsuquyomi')

" Candidates
" https://vimawesome.com/plugin/surround-vim
" 'tpope/vim-surround'
" https://vimawesome.com/plugin/nerdtree-red
" 'scrooloose/nerdtree'
" https://vimawesome.com/plugin/ctrlp-vim-red
" 'kien/ctrlp.vim'
" https://vimawesome.com/plugin/vim-javascript
" 'pangloss/vim-javascript'
" https://vimawesome.com/plugin/vim-multiple-cursors
" 'terryma/vim-multiple-cursors'
" https://vimawesome.com/plugin/vim-jsx
" 'mxw/vim-jsx'
" https://vimawesome.com/plugin/vim-polyglot
" 'sheerun/vim-polyglot'
" https://vimawesome.com/plugin/html5-vim
" 'othree/html5.vim'
