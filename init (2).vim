
" left mouse select  to copy, shift+insert and ctrl+v and right click to paste in insert mode, 
" middle mouse key is paste by default (works in normal, insert, visual, and command mode)
vmap <LeftRelease> "*ygv
imap <S-Insert> <C-R>*
nmap <S-Insert> "*p
vmap <S-Insert> "*p
vmap <C-Insert> "*ygv
imap <C-v> <C-R>*
" imap <C-Insert> <C-R>*
imap <RightMouse> <C-R>*
cmap <RightMouse> <MiddleMouse>
cmap <S-Insert> <MiddleMouse>
cmap <C-v> <C-R>"
" set clipboard^=unnamed,unnamedplus

inoremap jj <Esc>
tnoremap jj <C-\><C-n>
cnoremap jj <Esc>
let mapleader = " "
set mouse=a
set completeopt=menuone,noselect
set number
set autoread
set cursorline    
set nowrap         
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
set lazyredraw "same as above
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
" set statusline=%<%n.\ %f%r%m%w\ %=%y\ %l\ %p%%
set statusline=%<%n.\ 【%{expand('%:p:h:t')}\ 】\ %t\ %r%m%w\ %=%y\ %l\/%L\ %p%%
set showtabline=1
" set tabline=%{expand('%:p:h:t')}/%t
set guitablabel=%{expand('%:p:h:t')}/%t
set autochdir
set backspace=2
set backspace=indent,eol,start
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif



nnoremap K 4<C-y>
vnoremap K 4k
nnoremap J 4<C-e>
vnoremap J 4j
nnoremap H b
nnoremap L w
vnoremap H b
vnoremap L w
nnoremap Y y$
vnoremap Y "+y
noremap gk gg
noremap gj G
noremap gh ^
noremap gl $
nnoremap D J

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

" noremap <LEADER>a za  " flod lines
noremap zn :set foldlevel=

noremap <Leader>h :set hlsearch<CR>
noremap <Leader>H :set nohlsearch<CR>
noremap <Space> <nop>
nnoremap <Space><Space><Space> i<Space><Esc><Right>
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>sc :<C-r>=printf("source %s/", stdpath('config'))<CR>
nnoremap <Leader>ev :tabe $MYVIMRC<CR>
nnoremap <Leader>ec :<C-r>=printf("e %s/", stdpath('config'))<CR>
vnoremap <Leader>n :normal<Space>
nnoremap <Leader>r :reg<CR>
nnoremap <Leader>x "_x
nnoremap <Leader>X "_X
nnoremap <Leader>c "_c
nnoremap <Leader>C "_C
nnoremap <Leader>d "_d
nnoremap <Leader>D "_D
vnoremap <Leader>x d"_x"_Xi
nnoremap <Leader>/ yiw/<C-R>"<CR>
vnoremap <Leader>/ y/<C-R>"<CR>
nnoremap <LEADER>sw :set wrap<CR>
nnoremap <LEADER>sW :set unwrap<CR>
nnoremap <LEADER>sf :set ff=unix<CR>

onoremap ( i(
onoremap ) i)
onoremap [ i[
onoremap ] i]
onoremap { i{
onoremap } i}
onoremap < i<
onoremap > i>



noremap ss :set splitright<CR>:vsplit<CR>
noremap sv :set splitbelow<CR>:split<CR>
"  close the buffer at the bottom right corner
nnoremap sX <C-w>l<C-w>j:bd!<CR>
nnoremap sx <C-w>l<C-w>j:q!<CR>
" move the split screen to tab
noremap st <C-w>T

nnoremap <expr> sM (expand("#1:p:t") ==? ".vimsession" ? ':execute ":mks!" expand("#1:p")' : ":mks .vimsession")."\|<CR>" 
nnoremap <expr> sO (expand("%") ==? ".vimsession" ? ':so %<CR>' : ":so ")

noremap bt :set splitright<CR>:vsplit<CR><C-w>T
noremap ba :tab sball<CR>
" noremap bN :tab drop<Space>
noremap bh :tabprev<CR>
noremap bl :tabnext<CR>
noremap bH :-tabmove<CR>
noremap bL :+tabmove<CR>
" noremap be :tabe<Space>
noremap bd :bd!<Space>
noremap br :oldfiles<CR>
noremap bu :b#<CR>
noremap bj :bn<CR>
noremap bk :bp<CR>
noremap b<Space> :b<Space>
noremap bb :ls<CR>
noremap bX :bd!<CR>    " close the current buffer and window
noremap bx :bp<CR>:bdelete! #<CR>   " close the current buffer and return to the previous one, without closing the window
noremap b<up> :res +5<CR>
noremap b<down> :res -5<CR>
noremap b<left> :vertical resize -5<CR>
noremap b<right> :vertical resize +5<CR>
" open the previous buffer in left split and current buffer in right
" noremap bs :set nosplitright<CR>:vert sbp<CR>
" open buffer in tab (enter name or number of the buffer) 
" noremap bi :tab sb<Space>

nnoremap tT :term<CR>
   
nnoremap ;; /<++><CR>"_c4l
inoremap ;; <C-g>u<ESC>/<++><CR>"_c4l
nnoremap ;' /<++><CR>
inoremap ;' <C-g>u<++>


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
    Plug 'airblade/vim-gitgutter'
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
nnoremap <C-z> :UndotreeToggle<CR>
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
" set t_ut=
" set background=dark    " Setting dark mode
colorscheme codeDark
hi statusline ctermfg=015 ctermbg=016 guifg=#ffffff guibg=#000000
hi TabLine ctermfg=black ctermbg=grey guifg=black guibg=grey
" hi TabLineSel ctermfg=black ctermbg=Yellow guifg=black guibg=Yellow
" hi Search guibg=#444444 ctermbg=238
" hi normal guifg=gray94 ctermfg=254

hi link juliaFunctionCall Identifier

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
nmap <silent> <Leader>tw <Plug>TranslateW
vmap <silent> <Leader>tw <Plug>TranslateWV
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
let g:Illuminate_delay = 500
hi link illuminatedWord Search

"   git gutter
highlight GitGutterDelete guifg=#ffffff ctermfg=15

"  AsyncRun
"  :AsyncRun
let g:asyncrun_open=10


" nvim-compe
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:compe = {'debug': v:true, 'source': {'path': v:true, 'buffer': v:true, 'calc': v:true, 'nvim_lsp': v:true, 'nvim_lua': v:true, 'ultisnips': v:true}}


let commentCharacter='#'
autocmd Filetype vim exec 'source ' stdpath('config').'/vim.vim'
autocmd Filetype markdown exec 'source ' stdpath('config').'/markdown.vim'
autocmd Filetype julia exec 'source ' stdpath('config').'/julia.vim'
autocmd Filetype python exec 'source ' stdpath('config').'/python.vim'
autocmd Filetype fortran exec 'source ' stdpath('config').'/fortran.vim'



"         vim-commentary
xmap g/  <Plug>Commentary
nmap g/  <Plug>Commentary
omap g/  <Plug>Commentary
nmap g// <Plug>CommentaryLine
" autocmd FileType apache setlocal commentstring=#\ %s

" autocmd Filetype vim let commentCharacter='"'
" nnoremap g? I<Del><Del><Esc>
" vnoremap g? :normal ^xx<CR>
" nnoremap g/ :execute "normal I".commentCharacter." "<Esc>
" vnoremap g/ :normal g/<CR>
" func!

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
nnoremap gl :!git log %<CR>
nnoremap gb :!git blame %<CR>
nnoremap gp :!git push<CR>



"    vim-which-key
call which_key#register('?', "g:which_key_map")
nnoremap ?       :<c-u>WhichKey '?'<CR>
vnoremap ? :<c-u>WhichKeyVisual '?'<CR>
let g:which_key_map =  {'name' : 'Which key...'}
let g:which_key_map[' '] = {
        \ 'name' : '<Leader>...',
        \ 'h' : [':normal s h', 'Set hlsearch'],
        \ 'H' : [':normal s H', 'Set nohlsearch'],
        \ 'r' : [':normal s r', 'Open register'],
        \ 'tw' : [':normal s tw', 'Translate word'],
        \ 'a' : [':Tabularize', 'Tabularize lines'],
        \ '/' : [':normal s /', 'Search the word under cursor'],
        \ 'e' : {
        \       'name' : 'Edit...',
        \       'c' : [':echo "e config/"', 'edit file in "config"'],
        \       'v' : [':normal 0 ev', 'Edit $MYVIMRC'],
        \   },
        \ 's' : {
        \       'name' : 'Set & Sesstion...',
        \       'f' : [':normal s sf', 'Set filetype = unix'],
        \       'v' : [':normal s sv', 'Source $MYVIMRC'],
        \       'w' : [':normal s sw', 'Set wrap'],
        \       'W' : [':normal s sW', 'Set unwrap'],
        \       'o' : [':echo "SLoad <C-d>"', 'startify load session'],
        \       'm' : [':echo "SSave <C-d>"', 'startify make session'],
        \       'x' : [':normal s sx', 'Startify close session'],
        \       'd' : ['echo "SDelete <C-d>"', 'startify load session'],
        \   },
        \ 'f' : {
        \       'name' : 'LeaderF...',
        \       'l' : [':normal s fl', 'Search in opened buffers'],
        \       'L' : [':normal s fL', 'Rg search in current folder'],
        \       'c' : [':Leaderf rg --current-buffer -e', 'Rg search current buffer'],
        \       'C' : [':Leaderf rg -e', 'Rg search current buffer'],
        \       'm' : [':normal s fm', 'Search MRUs'],
        \       'b' : [':normal s fb', 'Search opened buffers'],
        \       'r' : [':normal s fr', 'Recall last search history'],
        \       'j' : [':normal s fj', 'Next iterm in search results'],
        \       'k' : [':normal s fk', 'Previous iterm in search results'],
        \       't' : [':echo "Leaderf rg -t<Space>"', 'rg search with filetype'],
        \       'R' : [':echo "Leaderf --recall<Space>"', 'recall search history by parameter'],
        \   },
      \ }
let g:which_key_map['b'] =  {
        \ 'name' : 'buffer...',
        \ 'h' : [':normal bh', 'Move to left tab'],
        \ 'l' : [':normal bl', 'Move to right tab'],
        \ 't' : [':normal bt', 'New tab'],
        \ 'H' : [':normal bH', 'Move tab left'],
        \ 'L' : [':normal bL', 'Move tab right'],
        \ 'a' : [':normal ba', 'Turn all buffer to tab'],
        \ 'd' : [':echo "bd!<Space>"', 'delete buffer by name or #'],
        \ 'j' : [':normal bj', 'Next buffer'],
        \ 'k' : [':normal bk', 'Previous buffer'],
        \ ' ' : [':echo "b<Space>"', 'open existing buffer by name or #'],
        \ 'b' : [':normal bb', 'List existing buffer'],
        \ 'r' : [':normal br', 'Show recent used files'],
        \ 'u' : [':normal bu', 'Open recent buffer in right split'],
        \ 'x' : [':normal bx', 'Close the buffer, keep the window'],
        \ 'X' : [':normal bX', 'Close the buffer and window'],
        \ '↑' : [':res +5', 'Increase split screen width'],
        \ '↓' : [':res -5', 'Decrease split screen width'],
        \ '←' : [':vertical resize -5', 'Increase split screen height'],
        \ '→' : [':vertical resize +5', 'Decrease split screen height'],
        \}
let g:which_key_map['s'] = {
        \ 'name' : ' Split & Session...',
        \ 'x' : [':normal sx', 'Close the bottom right screen'],
        \ 'X' : [':normal sX', 'Close and delete the bottom right screen'],
        \ 't' : [':normal st', 'Move split screen to tab'],
        \ 'M' : [':normal sM', 'Make vim session'],
        \ 'O' : [':normal sO', 'Source vim session'],
        \ 's' : [':normal ss', 'Vertical split screen'],
        \ 'v' : [':normal sv', 'Split screen'],
        \ '<++>' : [':normal <++>', '<++>'],
      \ }
let g:which_key_map['t'] = {
        \ 'name' : 'Term & Toggle...',
        \ 'T' : [':normal tT', 'Open terminal at current window'],
        \ '<++>' : {
        \       'name' : '<++>',
        \       '<++>' : [':normal <++>', '<++>'],
        \   },
      \ }
let g:which_key_map['g'] = {
        \ 'name' : 'Git & Comment & Go...',
        \ '?' : [':normal g?', 'Uncomment'],
        \ '/' : [':normal g/', 'Comment'],
        \ ' ' : [':echo "!git "', 'git<Space>'],
        \ 'a' : [':normal ga', 'git add %'],
        \ 'c' : [':echo "!git commit -am "', 'git commit -am ""'],
        \ 's' : [':normal gs', 'git status'],
        \ 'l' : [':normal gl', 'git log %'],
        \ 'b' : [':normal gb', 'git blame %'],
        \ 'p' : [':normal gp', 'git push'],
      \ }
" let g:which_key_map['<++>'] = {
        " \ 'name' : '<++>',
        " \ '<++>' : [':normal <++>', '<++>'],
        " \ '<++>' : {
        " \       'name' : '<++>',
        " \       '<++>' : [':normal <++>', '<++>'],
        " \   },
      " \ }

au FileType * set fo-=c fo-=r fo-=o fo-=t
