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

call minpac#add('chriskempson/base16-vim')
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" git
call minpac#add('tpope/vim-fugitive')
call minpac#add('airblade/vim-gitgutter')
