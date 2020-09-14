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
Plug 'tpope/vim-dispatch'
Plug 'vim-test/vim-test'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

Plug 'puremourning/vimspector'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Use a new leader key
let mapleader=','

" Disable arrow keys
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

" Sane defaults
set number
set nobackup
set expandtab
set softtabstop=2
set shiftwidth=2
set shiftround
set clipboard^=unnamedplus

" Enable Python extensions
let g:python3_host_prog = '~/.pyenv/versions/py3nvim/bin/python'

" Theme
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Turn off search highlights
nnoremap <Leader>x :<C-u>nohlsearch<CR>

" FZF
nnoremap <C-p> :<C-u>FZF<CR>
nnoremap <Leader><Leader> :Files<cr>
nmap <leader><tab> <plug>(fzf-maps-n)

" NERDTree
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

" vim-slime
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

" vim-test
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
let test#strategy = "dispatch"
let test#python#runner = 'pyunit'
augroup test
  autocmd!
  autocmd BufWrite * if test#exists() |
    \   TestFile |
    \ endif
augroup END

" vimspector
let g:vimspector_enable_mappings='HUMAN'

" vim-javascript settings
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_arrow_function = "⇒"
set conceallevel=1

" coc settings
source $HOME/.config/nvim/coc.vim
