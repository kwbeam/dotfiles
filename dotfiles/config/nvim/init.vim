call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'jpalardy/vim-slime'
Plug 'puremourning/vimspector'

Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

set number
set nobackup
set expandtab
set softtabstop=2
set shiftwidth=2
set shiftround
set clipboard^=unnamed

let g:python3_host_prog = '~/.pyenv/versions/py3nvim/bin/python'

" nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" FZF
nnoremap <Leader><Leader> :Files<cr>
nmap <leader><tab> <plug>(fzf-maps-n)

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

" vim-slime
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

" vimspector
let g:vimspector_enable_mappings='HUMAN'

" vim-javascript settings
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_arrow_function = "⇒"
set conceallevel=1

" coc settings
source $HOME/.config/nvim/coc.vim

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
