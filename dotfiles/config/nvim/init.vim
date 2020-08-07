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

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

Plug 'puremourning/vimspector'

Plug 'dense-analysis/ale'

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
set clipboard+=unnamedplus

" Enable Python extensions
let g:python3_host_prog = '~/.pyenv/versions/main/bin/python'

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

" ALE
nmap gd :ALEGoToDefinition<CR>
nmap gt :ALEGoToTypeDefinition<CR>
nmap gr :ALEFindReferences<CR>
nmap gs :ALESymbolSearch<CR>
nmap K :ALEHover<CR>
let g:ale_completion_enabled=1
let g:ale_completion_tsserver_autoimport=1
let g:ale_completion_delay=500
let g:ale_sign_column_always=1
