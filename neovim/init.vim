" line numbers
set number

" prevent neovim from changing cursor type
set guicursor=

" fix cursor position
let g:indentLine_noConcealCursor=1


" for neobundle
if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  " Required:
  set runtimepath+=~/.nvim/bundle/neobundle.vim/
endif



" ================= neobundle plugins ==================
" Required:
call neobundle#begin(expand('~/.nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Syntax highlight for nerdtree
NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" ======================================================



" ============== vim-plug plugins enable ===============
call plug#begin('~/.local/share/nvim/plugged')


" ---------------- deoplete.nvim plugin ----------------
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
" ------------------------------------------------------


" ------------- deoplete C/C++/Obj-C support -----------
Plug 'deoplete-plugins/deoplete-clang'

let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-11/lib/libclang.so.1'
let g:deoplete#sources#clang#clang_header = '/usr/include/clang/11/' 
" ------------------------------------------------------


" ------------- deoplete Python support ----------------
Plug 'zchee/deoplete-jedi'
" ------------------------------------------------------


" --------------------- neoformat ----------------------
Plug 'sbdchd/neoformat'

let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{IndentWidth: 4}"']
\}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']
" ------------------------------------------------------ 


" -------------------- ale (linter) --------------------
Plug 'dense-analysis/ale'
let g:ale_linters = {
    \ 'python': ['pylint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang']
\}

let g:ale_sign_column_always = 1
" ------------------------------------------------------


" -------------------- vim-airline ---------------------
Plug 'vim-airline/vim-airline'
" ------------------------------------------------------

" --------------------- markdown preview ---------------
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" ------------------------------------------------------

" ----------------- color schemes -----------------------
Plug 'kyoz/purify', { 'rtp': 'vim' }

Plug 'NLKNguyen/papercolor-theme'

Plug 'morhetz/gruvbox'
let g:gruvbox_contrast_dark = 'medium'
" ------------------------------------------------------

" ------------------- nerdtree -------------------------
Plug 'preservim/nerdtree'
" ------------------------------------------------------

" --------------- icons for nerdtree -------------------
Plug 'ryanoasis/vim-devicons'
" ------------------------------------------------------

call plug#end()
" ======================================================



set termguicolors
autocmd VimEnter * ++nested colorscheme gruvbox

" ----------------- nerdtree cfg -----------------------
" Start NerdTree and move cursor to a file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" ------------------------------------------------------

