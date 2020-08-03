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
Plug 'rust-lang/rust.vim'

Plug 'puremourning/vimspector'

Plug 'neovim/nvim-lsp'

call plug#end()

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
set clipboard^=unnamed

" Enable Python extensions
let g:python3_host_prog = '~/.pyenv/versions/py3nvim/bin/python'

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Turn off search highlights
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

" neovim lsp
lua require'nvim_lsp'.pyls.setup{}
" lua require'nvim_lsp'.tsserver.setup{}
lua << EOF
local nvim_lsp = require'nvim_lsp'
nvim_lsp.tsserver.setup{
  cmd = { "npx", "javascript-typescript-stdio" }
}
EOF
" cmd = { "npx", "typescript-language-server", "--stdio" }

nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gt    <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gh    <cmd>lua vim.lsp.buf.document_symbol()<CR>

" Use LSP omni-completion in Python files.
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd Filetype typescript setlocal omnifunc=v:lua.vim.lsp.omnifunc
