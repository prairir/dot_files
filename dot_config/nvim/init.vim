call plug#begin('~/.config/nvim/plugged') 
"auto completion 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-java', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-rls', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}

"delimitor
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'

"nerd tree
Plug 'scrooloose/nerdtree'

"colour scheme
Plug 'w0ng/vim-hybrid'

"syntax linter
Plug 'w0rp/ale'

"latex
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()


"path declarations
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
set hidden

"json comment highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+

"colour scheme
syntax enable
set background=dark
colorscheme hybrid

"nerd tree configuration 
autocmd vimenter * NERDTree
autocmd bufenter * if(winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"latex 
let g:vimtex_compiler_progname = 'nvr'
let g:livepreview_previewer = 'okular'
let g:livepreview_engine = 'pdflatex'


"key mappings
let g:mapleader = ","

"reversing text
vnoremap hrv c<C-O>:set revins<CR><C-R>"<Esc>:set norevins<CR>

"usage of complete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

"nerd tree toggle
noremap <C-n> :NERDTreeToggle<CR>

"split navagation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"live preview toggle
nnoremap <Leader>l :LLPStartPreview

"exit term mode
tnoremap <Esc> <C-\><C-n>

"setting tab spaces
set tabstop=2
set shiftwidth=0
set expandtab

"line numbering
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END
set nuw=3
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE
