call which_key#register('?', "g:which_key_map")
nnoremap ?       :<c-u>WhichKey '?'<CR>
vnoremap ? :<c-u>WhichKeyVisual '?'<CR>
let g:which_key_map =  {'name' : 'Which key...'}
let g:which_key_map[' '] = {
        \ 'name' : '<Leader>...',
        \ 'h' : [':normal s h', 'Set hlsearch'],
        \ 'H' : [':normal s H', 'Set nohlsearch'],
        \ 'r' : [':normal s r', 'Open register'],
        \ 'T' : [':normal s T', 'Translate word'],
        \ 'a' : [':Tabularize', 'Tabularize lines'],
        \ '/' : [':normal s /', 'Search the word under cursor'],
        \ 'q' : [':normal s q', 'Quit the window under cursor'],
        \ 'e' : {
        \       'name' : 'Edit...',
        \       'c' : [':echo "e stdpath(\"config\")"', 'edit file in "config"'],
        \       'v' : [':normal 0 ev', 'Edit $MYVIMRC'],
        \   },
        \ 's' : {
        \       'name' : 'Set & Sesstion...',
        \       ' ' : [':normal s s ', 'Source current buffer'],
        \       'c' : [':echo "source stdpath(\"config\")"', 'source file in "config"'],
        \       'f' : [':normal s sf', 'Set filetype = unix'],
        \       'v' : [':normal s sv', 'Source $MYVIMRC'],
        \       'w' : [':normal s sw', 'Set wrap'],
        \       'W' : [':normal s sW', 'Set unwrap'],
        \       'o' : [':echo "SLoad <C-d>"', 'startify load session'],
        \       'm' : [':echo "SSave <C-d>"', 'startify make session'],
        \       'x' : [':normal s sx', 'Startify close session'],
        \       'y' : [':normal s sy', 'Print symbols'],
        \       'd' : ['echo "SDelete <C-d>"', 'startify delete session'],
        \       'M' : [':normal s sM', 'Make .vimsession'],
        \       'O' : [':normal s sO', 'Source .vimsession'],
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
        \ 'g' : {
        \       'name' : 'Git...',
        \       ' ' : [':echo "git "', 'git<Space>'],
        \       'a' : [':normal s ga', 'git add %'],
        \       'c' : [':echo "git commit -am "', 'git commit -am ""'],
        \       'l' : [':normal s gl', 'git log %'],
        \       's' : [':normal s gs', 'git status'],
        \       'b' : [':normal s gb', 'git blame %'],
        \       'p' : [':normal s gp', 'git pull'],
        \       'r' : [':normal s gr', 'git config credential.helper store'],
        \   },
        \}
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
        \ 'p' : [':normal bp', 'Back to recent split'],
        \ 'r' : [':normal br', 'Recent buffers'],
        \ 'u' : [':normal bu', 'Open recent buffer'],
        \ 'x' : [':normal bx', 'Close the buffer and window'],
        \ 'X' : [':normal bX', 'Close the buffer, keep the window'],
        \ 'm' : [':normal bm', 'Open 2 buffers in split window'],
        \ 'w' : [':normal bw', 'Open current buffer in new tab'],
        \ '↑' : [':res +5', 'Increase split screen width'],
        \ '↓' : [':res -5', 'Decrease split screen width'],
        \ '←' : [':vertical resize -5', 'Increase split screen height'],
        \ '→' : [':vertical resize +5', 'Decrease split screen height'],
        \}
let g:which_key_map['d'] = {
        \ 'name' : 'Delete...',
        \ 'm' : [':echo "delmarks<space>"', 'delete mark'],
        \ 'i' : {
        \       'name' : 'Delete in...',
        \       'p' : [':normal dip', 'Delete in paragraph'],
        \   },
        \}
let g:which_key_map['s'] = {
        \ 'name' : 'Search & Split...',
        \ 'e' : [':normal se', 'File explorer'],
        \ 's' : [':normal ss', 'Vertical split screen'],
        \ 'o' : [':normal so', 'Rotate split screen'],
        \ 'T' : [':normal sT', 'Move split screen to tab'],
        \ 'v' : [':normal sv', 'Split screen'],
        \ 'f' : [':normal sf', 'Find file in current path'],
        \ 'w' : [':normal sw', 'Find word under cursor in cwd'],
        \ 'l' : [':normal sl', 'Find line in current buffer'],
        \ 'L' : [':normal sL', 'Find line in cwd'],
        \ 'H' : [':normal sH', 'Find help tag'],
        \ ':' : [':normal s:', 'Find vim command'],
        \ ';' : [':normal s;', 'Find in command history'],
        \ '/' : [':normal s/', 'Find in search history'],
        \ 'm' : [':normal sm', 'Find in marks'],
        \ 'q' : [':normal sq', 'Find in quickfix'],
        \ 'O' : [':normal sO', 'Find vim options'],
        \ 't' : [':normal st', 'Find in ctags'],
        \ 'g' : {
        \       'name' : 'Search git...',
        \       'c' : [':normal sgc', 'Search git commits'],
        \       'b' : [':normal sgb', 'Search git commits in current buffer'],
        \       'B' : [':normal sgB', 'Search git branches'],
        \       's' : [':normal sgs', 'Search git status'],
        \       'S' : [':normal sgS', 'Search git stash'],
        \   },
        \ '<++>' : [':normal <++>', '<++>'],
        \}
let g:which_key_map['t'] = {
        \ 'name' : 'Term & Toggle...',
        \ 'T' : [':normal tT', 'Open terminal at current window'],
        \ 'u' : [':normal tu', 'Toggle undotree'],
        \   },
        \}
let g:which_key_map['g'] = {
        \ 'name' : 'Go to...',
        \ '//' : [':normal g//', 'Comment'],
        \ 'g' : [':normal gg', 'Go to buffer start'],
        \ 'h' : [':normal gh', 'Go to line start, ^'],
        \ 'l' : [':normal gl', 'Go to line end, $'],
        \ 'j' : [':normal gj', 'Go to next paragraph, }'],
        \ 'k' : [':normal gk', 'Go to previous paragraph, {'],
        \ 'f' : [':normal gf', 'Go to file'],
        \ 'v' : [':normal gv', 'Go to last visual selection'],
        \ 'i' : [':normal gi', 'Go to last insert position'],
        \ ";" : [":normal g;", 'Go to previous change position'],
        \ "," : [":normal g,", 'Go to next change position'],
        \}
let g:which_key_map['z'] = {
        \ 'name' : 'Fold...',
        \ 'n' : [':normal zn', 'set foldlevel= '],
        \}
let g:which_key_map[';'] = {
        \ 'name' : '<++>...',
        \ ';' : [':normal ;;', 'Search <++> and replace'],
        \ "'" : [":normal ;'", 'Search <++>'],
        \ " " : [":normal ;", 'Find next, ;'],
        \}
let g:which_key_map["m"] = {
        \ 'name' : 'Make mark...',
        \ "'" : [":normal ''", "Mark as a jump position '"],
        \ "a-zA-z" : [":normal <++>", 'Mark a-zA-z'],
        \}
let g:which_key_map["'"] = {
        \ 'name' : 'Jump to mark...',
        \ "a-zA-z" : [":normal 'a-zA-z", 'Jump to mark a-zA-z'],
        \ "0-9" : [":normal '0-9", 'Jump to previous edit file 0-9'],
        \ "'" : [":normal ''", "Jump back"],
        \ "[" : [":normal '[", 'Jump to last yank start'],
        \ "]" : [":normal ']", 'Jump to last yank end'],
        \ "." : [":normal '.", 'Jump to last change position'],
        \ "^" : [":normal '^", 'Jump to last insert position'],
        \ "<" : [":normal '<", 'Jump to start of last visual selection'],
        \ ">" : [":normal '>", 'Jump to start of last visual selection'],
        \}
let g:which_key_map['S'] = [':normal S', 'Save current buffer']
let g:which_key_map['Q'] = [':normal Q', 'Quit current buffer']
let g:which_key_map['Y'] = [':normal Y', 'Yank to line end']
" let g:which_key_map['<++>'] = ['<++>', '<++>']
" let g:which_key_map['<++>'] = {
        " \ 'name' : '<++>',
        " \ '<++>' : [':normal <++>', '<++>'],
        " \ '<++>' : {
        " \       'name' : '<++>',
        " \       '<++>' : [':normal <++>', '<++>'],
        " \   },
        " \}
