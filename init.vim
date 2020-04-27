if exists('g:vscode')
  " VSCode extension
else
  " ordinary neovim
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
  Plug 'junegunn/fzf.vim'
  Plug 'neovim/nvim-lsp'
  call plug#end()

  lua << EOF
  require'nvim_lsp'.tsserver.setup{
    cmd = { "npx", "javascript-typescript-stdio" }
  }
EOF

  autocmd Filetype javascript setlocal omnifunc=v:lua.vim.lsp.omnifunc
  nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
  nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
  nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
  nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
  nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
  nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
  nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
  nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>

  if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
  endif
endif
