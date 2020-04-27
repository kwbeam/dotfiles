set number
set nobackup
set expandtab
set softtabstop=2
set shiftwidth=2
set shiftround

" Sync with clipboard
set clipboard^=unnamed

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'chriskempson/base16-vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
" Plug 'junegunn/fzf', { 'do': './install --bin' }
" Plug 'junegunn/fzf.vim'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
call plug#end()

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
