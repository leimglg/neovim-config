let mapleader = " "

exec 'source ' stdpath('config').'/clipboard.vim' 

set mouse=a
set mmp=2000
set completeopt=menu,menuone,noselect
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
set updatetime=100
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set shiftround
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
set title
" au BufEnter * let &titlestring=substitute(getcwd(), $HOME, '~', '')."   "
au BufEnter * let &titlestring=expand('%:p:h:t')

inoremap jk <Esc>
tnoremap jk <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
cnoremap jk <Esc>

nnoremap K 4<C-y>
vnoremap K 4k
nnoremap J 4<C-e>
vnoremap J 4j
nnoremap <Leader>J J
noremap H b
noremap L w
nnoremap Y y$
vnoremap Y "+ygv
nnoremap s <nop>
nnoremap S :w<CR>
inoremap <C-s> <Esc>:w<CR>
nnoremap <C-s> :w<CR>
vnoremap S <Esc>:w<CR>gv
nnoremap Q :q<CR>

noremap gk {
noremap gj }
noremap gh ^
noremap gl $
noremap gp `[
noremap gP `]

noremap c "_c
noremap C "_C
noremap zc "zc
noremap zC "zC
noremap zd "zd
noremap zD "zD
noremap zp "zp
noremap zP "zP
nnoremap zx "zx
nnoremap x "_x
nnoremap zy viw"zygv
nnoremap zY "zY
vnoremap zy "zy
vnoremap p pgvy

noremap zn :set foldlevel=

noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-l> <C-w>l
inoremap <C-k> <up>
inoremap <C-j> <down>
nnoremap <C-up> <C-w>p5<C-e><C-w>p
nnoremap <C-down> <C-w>p5<C-y><C-w>p

noremap - <C-x>
noremap = <C-a>
nnoremap < <<
nnoremap > >>
vnoremap < <gv
vnoremap > >gv


nnoremap <Leader>q <C-w>j:q<CR>
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>
vnoremap <Leader>n :normal<Space>
nnoremap <Leader>r :reg<CR>
nnoremap <Leader>t :term<CR>
nnoremap <Leader>z za
noremap <Space> <nop>
nnoremap <Space><Space><Space> i<Space><Esc><Right>

vnoremap <Leader>[ <Esc>`><Right>"_xi<++><Esc>`<"_Xi
vnoremap <Leader>] <Esc>`>a<++><Esc>`<i
nnoremap <Leader>/ "zyiw/<C-R>z
vnoremap <Leader>/ "zy/<C-R>z

nnoremap <Leader>s<Space> :source %<CR>
noremap <Leader>sh :set hlsearch<CR>
noremap <Leader>sH :set nohlsearch<CR>
nnoremap <LEADER>sw :set wrap<CR>
nnoremap <LEADER>sW :set unwrap<CR>
nnoremap <LEADER>sf :set ff=unix<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>se :e $MYVIMRC<CR>
nnoremap <Leader>sc :<C-r>=printf("e %s/", stdpath('config'))<CR>
nnoremap <expr> <Leader>sM (expand("#1:p:t") ==? ".vimsession" ? ':execute ":mks!" expand("#1:p")' : ":mks .vimsession")."\|<CR>" 
nnoremap <expr> <Leader>sO (expand("%") ==? ".vimsession" ? ':so %<CR>' : ":so ")

nnoremap ;; /<++><CR>
nnoremap ;: /<++><CR>N
inoremap ;; <C-g>u<ESC>/<++><CR>"_c4l
inoremap ;: <C-g>u<ESC>?<++><CR>N"_c4l
vnoremap ;' c<++><Esc>
inoremap ;' <C-g>u<++>
inoremap <CR> <C-g>u<CR>

nnoremap <Leader>sy A
    \<Enter>⎛╔╦╗═  ┌┬┐─ ⎞ αβγδϵζηθικλμνξοπρστυϕχψω
    \<Enter>⎜╠╬╣║  ├┼┤│ ⎟ ABΓΔEZHΘIKΛMNΞOΠPΣTΥΦXΨΩ
    \<Enter>⎜╚╩╝   └┴┘  ⎟ ←↑→↓↔⇒⇔⇵∎∴∵∷≅≈ 𝜕∇       
    \<Enter>⎝⋅×÷√       ⎠ ∏∐∑√∛∞∠∥∫∬∭∮∯∰ ±⊕⊖⊗⊘⊙⊞  

nnoremap ss :set splitright<CR>:vsplit<CR>
nnoremap sv :set splitbelow<CR>:split<CR>
" rotate split screen
nnoremap sr <C-w>r
nnoremap sR <C-w>R
" move the split screen to tab
nnoremap st <C-w>T
" move to split window
nnoremap sk <C-w>k
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sl <C-w>l
" move split window
nnoremap sK <C-w>K
nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sL <C-w>L

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
nnoremap bm :set nosplitright<CR>:vert sbp<CR>
" open the previous buffer in current windown and current buffer in new tab
nnoremap bw :b #<CR>:tab sb #<CR>

" open buffer in tab (enter name or number of the buffer) 
" noremap bi :tab sb<Space>
" using ctrl-arrow key to scroll split without focusing

   
nnoremap dm :delmarks<Space>

nnoremap <silent><F5> :call CompileRun()<CR>
func! CompileRun()
    exec ":w"
	if &filetype == 'julia'
		exec ":AsyncRun julia %"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'vimwiki'
		exec "MarkdownPreview"
	elseif match(expand('%'), "[.]mcr$") == 1
		exec ":AsyncRun tec360 %"
	endif
endfunc


call plug#begin(stdpath('data') . '/plugged')
    " Plug 'junegunn/fzf'
    " Plug 'junegunn/fzf.vim'
    " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Plug 'nvim-treesitter/playground'
    " Plug 'airblade/vim-rooter'
    " Plug 'Mofiqul/vscode.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
	Plug 'JuliaEditorSupport/julia-vim'
	Plug 'mbbill/undotree'
	Plug 'mhinz/vim-startify'   " start screen for vim, :h startify
	" Plug 'liuchengxu/vista.vim'    " taglist, require 
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'    " 
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown','vim-plug']}    " note: wait a while after running ':PlugInstall', it's downloading binary files
    Plug 'airblade/vim-gitgutter'    " Add + ~ to number bar
    Plug 'voldikss/vim-translator'     " translator, :Translate
    Plug 'RRethy/vim-illuminate'      " highlight words under cursor
    Plug 'skywind3000/asyncrun.vim'   " run command in background,  :AsyncRun
    Plug 'tpope/vim-commentary'         " comment 
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'liuchengxu/vim-which-key'
call plug#end()


"       vim rooter
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_patterns = ['=src', '.git', 'Grid.x', 'Makefile']

"       telescope
" <C-s> open in vertical split
" <C-v> open in horizontal split
" <C-t> open in new tab
" <up> scroll up in preview window
" <down> scroll down in preview window
" <C-f> delete buffer
" <C-c> close telescope
nnoremap bb <cmd>Telescope buffers<cr>
nnoremap br <cmd>Telescope oldfiles<Cr>
nnoremap <Leader>r <cmd>Telescope registers<Cr>
nnoremap <Leader>e <cmd>Telescope file_browser<cr>
nnoremap <Leader>E <cmd>Telescope find_files<cr>
" nnoremap sw <cmd>Telescope grep_string<Cr>
nnoremap <Leader>f <cmd>Telescope current_buffer_fuzzy_find<Cr>
nnoremap <Leader>F <cmd>Telescope live_grep<cr>
nnoremap <Leader>? <cmd>Telescope help_tags<cr>
" nnoremap s/ <cmd>Telescope search_history<Cr>
nnoremap <Leader>: <cmd>Telescope command_history<Cr>
" nnoremap s: <cmd>Telescope commands<Cr>
" nnoremap sm <cmd>Telescope man_pages<Cr>
nnoremap sm <cmd>Telescope marks<Cr>
nnoremap sq <cmd>Telescope quickfix<Cr>
" nnoremap sL <cmd>Telescope loclist<Cr>
" nnoremap sa <cmd>Telescope autocommands<Cr>
nnoremap s<Space>o <cmd>Telescope vim_options<Cr>
nnoremap s<Space>s <cmd>Telescope spell_suggest<CR>
nnoremap sT <cmd>Telescope current_buffer_tags<Cr>
nnoremap sgc <cmd>Telescope git_commits<Cr>
nnoremap sgb <cmd>Telescope git_bcommits<Cr>
nnoremap sgB <cmd>Telescope git_branches<Cr>
nnoremap sgs <cmd>Telescope git_status<Cr>
nnoremap sgS <cmd>Telescope git_stash<Cr>
" nnoremap sr <cmd>Telescope lsp_references<Cr>


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
let g:codedark_italics = 1
colorscheme codedark
hi statusline ctermfg=015 ctermbg=016 guifg=#ffffff guibg=#000000
hi TabLine ctermfg=black ctermbg=grey cterm=bold guifg=black guibg=grey gui=bold
hi TabLineSel cterm=bold gui=bold
hi TabLineFill ctermbg=grey guibg=grey
" hi TabLineSel ctermfg=black ctermbg=Yellow guifg=black guibg=Yellow
hi Search guibg=#444444 ctermbg=238
" hi normal guifg=gray94 ctermfg=254
" hi link juliaFunctionCall Identifier


"               Gitgutter
" <leader>hp to preview change, ]c, [c to jump to next and previous changes, 
highlight GitGutterDelete guifg=#ffffff ctermfg=15
function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    if (a + m + r > 0)
        return printf('+%d ~%d -%d  ', a, m, r)
    endif
    return ""
endfunction
set statusline=%<%n.\ \[\ %{expand('%:p:h:t')}\ \]\ \ %t\ %r%m%w\ %=%{GitStatus()}%y\ \ %l\/%L\ \ %p%%

nnoremap <Leader>g<Space> :!git<Space>
nnoremap <Leader>ga :!git add %<CR>
nnoremap <Leader>gc :!git commit -am ""<left>
nnoremap <Leader>gs :!git status<CR>
nnoremap <Leader>gl :!git log %<CR>
nnoremap <Leader>gb :!git blame %<CR>
nnoremap <Leader>gp :!git pull<CR>
nnoremap <Leader>gr :!git config credential.helper store<CR>
" nnoremap gp :<C-u><C-R>=printf("!git push")<CR>
" git config --global user.name "leimglg"
" git config --global user.email "leimglg@gmail.com"
" git reset HEAD file_to_unstage
" git remote add origin https://github.com/leimglg/study-notes
" git config credential.helper store
" git clone repository_address

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

"  AsyncRun
"  :AsyncRun
let g:asyncrun_open=12
nnoremap <F6> :AsyncStop!<CR>


" nvim-compe
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" let g:compe = {'debug': v:true, 'source': {'path': v:true, 'buffer': v:true, 'calc': v:true, 'nvim_lsp': v:true, 'nvim_lua': v:true, 'ultisnips': v:true}}




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


"    vim-which-key
exec 'source ' stdpath('config').'/whichkey.vim'


autocmd Filetype vim exec 'source ' stdpath('config').'/vim.vim'
autocmd Filetype markdown exec 'source ' stdpath('config').'/markdown.vim'
autocmd Filetype julia exec 'source ' stdpath('config').'/julia.vim'
autocmd Filetype python exec 'source ' stdpath('config').'/python.vim'
autocmd Filetype fortran exec 'source ' stdpath('config').'/fortran.vim'

au FileType * set fo-=c fo-=r fo-=o

" vim-vsnip
" exec 'let g:vsnip_snippet_dir = "'.stdpath('config').'/vsnip"' 
let g:vsnip_snippet_dir = stdpath('config') . '/vsnip'


"                    Lua
" luafile D:\\init.lua
    " require'lspconfig'.pyright.setup{}
    " require'lspconfig'.julials.setup{}
    " require'lspconfig'.vimls.setup{}
lua << EOF
    require("telescope").setup { defaults = {  mappings = { 
        i = { ["<c-f>"] = "delete_buffer", ["<c-j>"] = "move_selection_next", ["<c-k>"] = "move_selection_previous", ["<up>"] = "preview_scrolling_up", ["<down>"] = "preview_scrolling_down", ["<C-/>"] = "which_key", ["<esc>"] = "close", ["jk"] = "close",
            ["<Tab>"] = "move_selection_previous", ["<S-Tab>"] = "move_selection_next",  ["<C-l>"] = "add_selection",  ["<C-h>"] = "remove_selection",  ["<C-s>"] = "select_vertical", ["<C-v>"] = "select_horizontal",}, 
        n = { ["<c-f>"] = "delete_buffer", ["<c-j>"] = "move_selection_next", ["<c-k>"] = "move_selection_previous", ["<up>"] = "preview_scrolling_up", ["<down>"] = "preview_scrolling_down", ["<C-/>"] = "which_key", ["<esc>"] = "close", ["jk"] = "close",
            ["<Tab>"] = "move_selection_previous", ["<S-Tab>"] = "move_selection_next",  ["<C-l>"] = "add_selection",  ["<C-h>"] = "remove_selection", ["<C-s>"] = "select_vertical", ["<C-v>"] = "select_horizontal",},}}}
    local cmp = require('cmp')
    cmp.setup{
        snippet = { expand = function(args) vim.fn["vsnip#anonymous"](args.body) end },
        mapping = {
            -- ['<CR>'] = cmp.mapping.confirm({ select = false }),
            ['<Tab>'] = cmp.mapping(function(fallback) if cmp.visible() then cmp.select_next_item() elseif vim.fn['vsnip#available']() == 1 then vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>(vsnip-expand-or-jump)', true, true, true), '') else fallback() end end, {"i", "s",}),
            ['<S-Tab>'] = cmp.mapping(function(fallback) if cmp.visible() then cmp.select_prev_item() else fallback() end end, {"i", "s",}),
            ['<CR>'] = cmp.mapping(function(fallback) if vim.fn['vsnip#available']() == 1 then vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>(vsnip-expand-or-jump)', true, true, true), '') else fallback() end end, {"i", "s",}),
        },
        sources = {
            { name = 'buffer', max_item_count = 20, keyword_length = 2},
            { name = 'vsnip', max_item_count = 20, keyword_length = 1},
            { name = 'path', max_item_count = 20 },
        },
    }
    cmp.setup.cmdline('/', { sources = {{ name = 'buffer', max_item_count = 20 }, }})
    cmp.setup.cmdline(':', { sources = {{ name = 'path', max_item_count = 20 }, { name = 'cmdline', max_item_count = 20 }, }})
EOF
    " require'lspconfig'.julials.setup{}
    " require'lspconfig'.julials.setup{
      " server_path = "C:/Users/leimg/.julia/packages/LanguageServer/jiDTR/src"
    " }



