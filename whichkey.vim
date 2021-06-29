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
        \       'y' : [':normal s sy', 'Print symbol'],
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
        \ 'name' : 'Buffer...',
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
        \ 'r' : [':normal br', 'Recent buffers'],
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
        \ '//' : [':normal g//', 'Comment'],
        \ ' ' : [':echo "git "', 'git<Space>'],
        \ 'a' : [':normal ga', 'git add %'],
        \ 'c' : [':echo "git commit -am "', 'git commit -am ""'],
        \ 's' : [':normal gs', 'git status'],
        \ 'l' : [':normal gl', 'git log %'],
        \ 'b' : [':normal gb', 'git blame %'],
        \ 'p' : [':echo "git push"', 'git push'],
        \ 'r' : [':normal gr', 'git config credential.helper store'],
      \ }
" let g:which_key_map['<++>'] = {
        " \ 'name' : '<++>',
        " \ '<++>' : [':normal <++>', '<++>'],
        " \ '<++>' : {
        " \       'name' : '<++>',
        " \       '<++>' : [':normal <++>', '<++>'],
        " \   },
      " \ }
