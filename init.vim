call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']
"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" vim-tsx will do all the coloring for jsx in the .tsx file
Plug 'ianks/vim-tsx'
"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" typescript-vim will do all the coloring for typescript keywords
Plug 'leafgarland/typescript-vim'
"------------------------ THEME ------------------------
" most importantly you need a good color scheme to write good code :D
Plug 'dikiaap/minimalist'

Plug 'preservim/nerdtree'

Plug 'tpope/vim-fugitive'

call plug#end()

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab

command! -nargs=0 Prettier :CocCommand prettier.formatFile

:nmap <space>b :CocCommand explorer<cr>
:nmap <space>f :CocCommand f<cr>
:nmap <c-b> :NERDTreeToggle<cr>
