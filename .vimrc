syntax on





" VIM SETTINGS
" Provides tab-completion for all file-related tasks
set path+=**
" Displays all matching files when we tab complete
set wildmenu
set wildignore+=**/node_modules/*
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number
set background=dark
set autochdir
set spelllang=en_us
set relativenumber
set encoding=utf-8
set cmdheight=2
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c





if has("patch-8.1.1564")
    set signcolumn=number
else
    set signcolumn=yes
endif





" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"





function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction





" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif





" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'StanAngeloff/php.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-commentary'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kaicataldo/material.vim'
Plug 'pangloss/vim-javascript'
Plug 'StanAngeloff/php.vim'
Plug 'jwalton512/vim-blade'
call plug#end()





" NETRW 
let g:netrw_banner=0 " disable annoying banner





" preservim/nerdtree config
noremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
let NERDTreeQuitOnOpen=1





highlight Comment ctermfg=green





" kaicaltaldo/material.vim config
colorscheme material
let g:material_theme_style = 'palenight'
let g:material_terminal_italics = 1





" pangloss/vim-javascript config
let g:javascript_plugin_jsdoc = 1





" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif





" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif





" Makes CTRL+P work faster by using the_silver_searcher
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
