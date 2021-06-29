
" left mouse select  to copy, shift+insert and ctrl+v and right click to paste in insert mode, 
" middle mouse key is paste by default (works in normal, insert, visual, and command mode)
vmap <LeftRelease> "*ygv
imap <S-Insert> <C-R>*
nmap <S-Insert> "*p
vmap <S-Insert> "*p
vmap <C-Insert> "*ygv
imap <C-v> <C-R>*
imap <RightMouse> <C-R>*
cmap <RightMouse> <MiddleMouse>
cmap <S-Insert> <MiddleMouse>
cmap <C-v> <C-R>"
" set clipboard^=unnamed,unnamedplus

inoremap jj <Esc>
tnoremap jj <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
cnoremap jj <Esc>
let mapleader = " "
set mouse=a
set completeopt=menuone,noselect
set number
set autoread
set cursorline    
set nowrap         
set splitbelow
set wildmenu 
set nohlsearch
set ignorecase
set smartcase 
set incsearch
set hidden
set shortmess+=c
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set foldmethod=indent
set foldlevel=99
set completeopt=longest,noinsert,menuone,noselect,preview
set lazyredraw 
set showmatch
set visualbell
set virtualedit=block
" set switchbuf=useopen,usetab,newtab
set display+=lastline

runtime macros/matchit.vim
filetype on
filetype plugin on
filetype plugin indent on
set scrolloff=5
set laststatus=2
set statusline=%<%n.\ \[\ %{expand('%:p:h:t')}\ \]\ \ %t\ %r%m%w\ %=%y\ %l\/%L\ %p%%
set showtabline=1
set autochdir
set backspace=2
set backspace=indent,eol,start
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

nnoremap K 4<C-y>
vnoremap K 4k
nnoremap J 4<C-e>
vnoremap J 4j
nnoremap <Leader>J J
noremap H b
noremap L w
nnoremap Y y$
vnoremap Y "+y
noremap gk gg
noremap gj G
noremap gh ^
noremap gl $

noremap - <C-x>
noremap = <C-a>
nnoremap < <<
nnoremap > >>
nnoremap s <nop>
nnoremap S :w<CR>
nnoremap Q :q<CR>
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-l> <C-w>l
inoremap <C-k> <up>
inoremap <C-j> <down>
cnoremap <C-k> <C-t>
cnoremap <C-j> <C-g>
nnoremap <C-up> <C-w>p5<C-e><C-w>p
nnoremap <C-down> <C-w>p5<C-y><C-w>p

noremap zn :set foldlevel=

nnoremap ;; /<++><CR>"_c4l
inoremap ;; <C-g>u<ESC>/<++><CR>"_c4l
nnoremap ;' /<++><CR>
inoremap ;' <C-g>u<++>

noremap <Leader>h :set hlsearch<CR>
noremap <Leader>H :set nohlsearch<CR>
noremap <Space> <nop>
nnoremap <Space><Space><Space> i<Space><Esc><Right>
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>sc :<C-r>=printf("source %s/", stdpath('config'))<CR>
nnoremap <Leader>ev :e $MYVIMRC<CR>
nnoremap <Leader>ec :<C-r>=printf("e %s/", stdpath('config'))<CR>
vnoremap <Leader>n :normal<Space>
nnoremap <Leader>r :reg<CR>
noremap <Leader>c "zc
noremap <Leader>C "zC
noremap <Leader>d "zd
noremap <Leader>D "zD
noremap <Leader>p "zp
noremap <Leader>P "zP
nnoremap <Leader>x "zx
vnoremap <Leader>x "zxxXi
nnoremap <Leader>/ "zyiw/<C-R>z
vnoremap <Leader>/ "zy/<C-R>z
nnoremap <LEADER>sw :set wrap<CR>
nnoremap <LEADER>sW :set unwrap<CR>
nnoremap <LEADER>sf :set ff=unix<CR>
nnoremap <expr> <Leader>sM (expand("#1:p:t") ==? ".vimsession" ? ':execute ":mks!" expand("#1:p")' : ":mks .vimsession")."\|<CR>" 
nnoremap <expr> <Leader>sO (expand("%") ==? ".vimsession" ? ':so %<CR>' : ":so ")
nnoremap <Leader>sy A
    \<Enter>⎛╔╦╗═  ┌┬┐─ ⎞ αβγδϵζηθικλμνξοπρστυϕχψω
    \<Enter>⎜╠╬╣║  ├┼┤│ ⎟ ABΓΔEZHΘIKΛMNΞOΠPΣTΥΦXΨΩ
    \<Enter>⎜╚╩╝   └┴┘  ⎟ ←↑→↓↔⇒⇔⇵∎∴∵∷≅≈
    \<Enter>⎝⋅×÷√       ⎠ ∏∐∑√∛∞∠∥∫∬∭∮∯∰ ±⊕⊖⊗⊘⊙⊞⊢⊣⊤⊥

nnoremap ss :set splitright<CR>:vsplit<CR>
nnoremap sv :set splitbelow<CR>:split<CR>
"  close the buffer at the bottom right corner
nnoremap sX <C-w>j<C-w>l:bd!<CR>
nnoremap sx <C-w>j<C-w>l:q!<CR>
" move the split screen to tab
nnoremap st <C-w>T

nnoremap bt :set splitright<CR>:vsplit<CR><C-w>T
nnoremap ba :tab sball<CR>
" noremap bN :tab drop<Space>
nnoremap bh :tabprev<CR>
nnoremap bl :tabnext<CR>
nnoremap bp <C-w>p
nnoremap bH :-tabmove<CR>
nnoremap bL :+tabmove<CR>
" noremap be :tabe<Space>
nnoremap bd :bd!<Space>
nnoremap br :oldfiles<CR>
nnoremap bu :b#<CR>
nnoremap bj :bn<CR>
nnoremap bk :bp<CR>
nnoremap b<Space> :b<Space>
nnoremap bb :ls<CR>
nnoremap bx :bd!<CR>    " close the current buffer and window
nnoremap bX :bp<CR>:bdelete! #<CR>   " close the current buffer and return to the previous one, without closing the window
nnoremap b<up> :res +5<CR>
nnoremap b<down> :res -5<CR>
nnoremap b<left> :vertical resize -5<CR>
nnoremap b<right> :vertical resize +5<CR>
" open the previous buffer in left split and current buffer in right
" noremap bs :set nosplitright<CR>:vert sbp<CR>
" open buffer in tab (enter name or number of the buffer) 
" noremap bi :tab sb<Space>
" using ctrl-arrow key to scroll split without focusing

nnoremap tT :term<CR>
   

nnoremap <silent><F5> :call CompileRun()<CR>
func! CompileRun()
    exec ":w"
	if &filetype == 'julia'
		exec ":AsyncRun julia %"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'vimwiki'
		exec "MarkdownPreview"
	endif
endfunc


call plug#begin(stdpath('data') . '/plugged')
	Plug 'JuliaEditorSupport/julia-vim'
	Plug 'mbbill/undotree'
	Plug 'mhinz/vim-startify'   " start screen for vim, :h startify
	" Plug 'liuchengxu/vista.vim'    " taglist, require 
	Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }    "find word in current buffer and other files, and preview them. require rg to search other files.
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'    " 
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown','vim-plug']}    " note: wait a while after running ':PlugInstall', it's downloading binary files
    Plug 'airblade/vim-gitgutter'    " Add + ~ to number bar
    Plug 'voldikss/vim-translator'     " translator, :Translate
    Plug 'RRethy/vim-illuminate'      " highlight words under cursor
    Plug 'skywind3000/asyncrun.vim'   " run command in background,  :AsyncRun
    Plug 'tpope/vim-commentary'         " comment 
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'liuchengxu/vim-which-key'
call plug#end()


"   git gutter
highlight GitGutterDelete guifg=#ffffff ctermfg=15

"            undo tree
nnoremap tu :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nmap <buffer> r <plug>UndotreeNextState
	nmap <buffer> u <plug>UndotreePreviousState
	nmap <buffer> R 5<plug>UndotreeNextState
	nmap <buffer> U 5<plug>UndotreePreviousState
endfunc

"      color scheme
set t_Co=256
colorscheme codedark
hi statusline ctermfg=015 ctermbg=016 guifg=#ffffff guibg=#000000
hi TabLine ctermfg=black ctermbg=white guifg=black guibg=white
" hi TabLineSel ctermfg=black ctermbg=Yellow guifg=black guibg=Yellow
" hi Search guibg=#444444 ctermbg=238
" hi normal guifg=gray94 ctermfg=254
" hi link juliaFunctionCall Identifier

" === Leaderf
" let g:Lf_WindowPosition = 'popup'
" nnoremap <Leader>fs :Leaderf --stayOpen line<CR>
" nnoremap <Leader>fS :Leaderf --stayOpen rg<CR>
nnoremap <Leader>fl :Leaderf line<CR>
nnoremap <Leader>fL :Leaderf rg<CR>
nnoremap <Leader>fc :<C-u><C-R>=printf("Leaderf rg --current-buffer -e %s", expand("<cword>"))<CR>
nnoremap <Leader>fC :<C-u><C-R>=printf("Leaderf rg -e %s", expand("<cword>"))<CR>
vnoremap <Leader>fc :<C-u><C-R>=printf("Leaderf rg --current-buffer -e %s", leaderf#Rg#visual())<CR>
vnoremap <Leader>fC :<C-u><C-R>=printf("Leaderf rg -e %s", leaderf#Rg#visual())<CR>
nnoremap <Leader>ft :<C-u><C-R>=printf("Leaderf rg -t ")<CR>
nnoremap <Leader>fm :Leaderf mru<CR>
nnoremap <Leader>fb :Leaderf buffer<CR>
nnoremap <Leader>fj :Leaderf --next<CR>
nnoremap <Leader>fk :Leaderf --previous<CR>
nnoremap <Leader>fr :<C-u><C-R>=printf("Leaderf --recall ")<CR><CR>
nnoremap <Leader>fR :<C-u><C-R>=printf("Leaderf --recall ")<CR>
let g:Lf_ShortcutF = "<leader>ff"
let g:Lf_ShortcutB=''
let g:Lf_PreviewInPopup = 1
let g:Lf_WindowPosition = 'bottom'
let g:Lf_ShowHidden = 0
let g:Lf_PreviewResult = {'File': 1,'Buffer': 0,'Mru': 1,'Tag': 1,'BufTag': 1,'Function': 1,'Line': 1,'Rg': 1,'Gtags': 1}
let g:Lf_WildIgnore = {
            \ 'dir': ['$RECYCLE.BIN', 'System Volume Information'],
            \ 'file': ['*.exe', '*.o', '*.so', 'fort.[0-9]*', '*[0-9][0-9][0-9][0-9][0-9][0-9][0-9]*']}
let g:Lf_WindowHeight = 0.30


"    translator
" ==================
let g:translator_target_lang ='zh'
nmap <silent> <Leader>T <Plug>TranslateW
vmap <silent> <Leader>T <Plug>TranslateWV
let g:translator_default_engines=['google']

"    startify
nnoremap <Leader>so :SLoad <C-d>
nnoremap <Leader>sm :SSave <C-d>
nnoremap <Leader>sx :SClose<CR>
nnoremap <Leader>sd :SDelete <C-d>
let g:startify_session_sort = 1
let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },]
let g:startify_files_number = 20
let g:startify_enable_special = 0

" === vim-illuminate
" ===
let g:Illuminate_delay = 400
hi link illuminatedWord Search

"   git gutter
highlight GitGutterDelete guifg=#ffffff ctermfg=15

"  AsyncRun
"  :AsyncRun
let g:asyncrun_open=15


" nvim-compe
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:compe = {'debug': v:true, 'source': {'path': v:true, 'buffer': v:true, 'calc': v:true, 'nvim_lsp': v:true, 'nvim_lua': v:true, 'ultisnips': v:true}}




"         vim-commentary
xmap g/  <Plug>Commentary
nmap g/  <Plug>Commentary
omap g/  <Plug>Commentary
nmap g// <Plug>CommentaryLine
" autocmd FileType apache setlocal commentstring=#\ %s

"         tabular
vnoremap <Leader>A :Tabularize<CR>
vnoremap <Leader>a :Tabularize /
nnoremap <Leader>A :Tabularize<CR>
nnoremap <Leader>a :Tabularize /

"         markdown-preview
let g:mkdp_open_to_the_world = 0


"                    LSPconfig
" luafile D:\\init.lua
lua << EOF
    require'lspconfig'.pyright.setup{}
    require'lspconfig'.vimls.setup{}
EOF
    " require'lspconfig'.julials.setup{}
    " require'lspconfig'.julials.setup{
      " server_path = "C:/Users/leimg/.julia/packages/LanguageServer/jiDTR/src"
    " }

"               Gitgutter
nnoremap g<Space> :!git<Space>
nnoremap ga :!git add %<CR>
nnoremap gc :!git commit -am ""<left>
nnoremap gs :!git status<CR>
nnoremap go :!git log %<CR>
nnoremap gb :!git blame %<CR>
" nnoremap gp :!git push<CR>
nnoremap gr :!git config credential.helper store<CR>
" nnoremap gp :<C-u><C-R>=printf("!git push")<CR>
" git config --global user.name "mlei"
" git config --global user.email "leimglg@gmail.com"
" git reset HEAD file_to_unstage
" git remote add origin https://github.com/leimglg/study-notes
" git config credential.helper store
" git clone repository_address



"    vim-which-key
exec 'source ' stdpath('config').'/whichkey.vim'



autocmd Filetype vim exec 'source ' stdpath('config').'/vim.vim'
autocmd Filetype markdown exec 'source ' stdpath('config').'/markdown.vim'
autocmd Filetype julia exec 'source ' stdpath('config').'/julia.vim'
autocmd Filetype python exec 'source ' stdpath('config').'/python.vim'
autocmd Filetype fortran exec 'source ' stdpath('config').'/fortran.vim'


au FileType * set fo-=c fo-=r fo-=o
