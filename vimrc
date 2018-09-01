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

" Basic color scheme and status line stuff
call minpac#add('itchyny/lightline.vim')
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

call minpac#add('arcticicestudio/nord-vim')
colorscheme nord

" Use NERDTree
call minpac#add('scrooloose/nerdtree')
set laststatus=2
map <C-n> :NERDTreeToggle<CR>

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

" Elixir
call minpac#add('elixir-editors/vim-elixir')

" Haskell
" None

" JavaScript
" None

" PureScript
call minpac#add('purescript-contrib/purescript-vim')
call minpac#add('FrigoEU/psc-ice-vim')
let purescript_indent_if = 3
let purescript_indent_case = 5
let purescript_indent_let = 4
let purescript_indent_where = 6
let purescript_indent_do = 3
let purescript_indent_in = 1
let purescript_indent_dot = v:true

" TypeScript
call minpac#add('leafgarland/typescript-vim')
call minpac#add('Quramy/tsuquyomi')
