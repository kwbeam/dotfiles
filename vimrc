set t_Co=256
set number
set nobackup
set hlsearch
set expandtab
set softtabstop=2
set shiftwidth=2
set shiftround

" Sync with clipboard
set clipboard^=unnamed

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
