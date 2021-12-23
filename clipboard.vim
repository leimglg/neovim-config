" wsl clipboard support
" left mouse select  to copy, shift+insert and ctrl+v and right click to paste in insert mode, 
" middle mouse key is paste by default (works in normal, insert, visual, and command mode)
vmap <LeftRelease> "*ygv
imap <S-Insert> <C-R>*
nmap <S-Insert> "*p
vmap <S-Insert> "*p
vmap <C-Insert> "*ygv
imap <C-v> <C-R>"
imap <RightMouse> <C-R>*
cmap <RightMouse> <MiddleMouse>
cmap <S-Insert> <MiddleMouse>
cmap <C-v> <C-R>"

if has('win32')

elseif isdirectory("/mnt/c/Windows") " wsl on windows
    let g:clipboard = {
              \   'name': 'win32yank-wsl',
              \   'copy': {
              \      '+': 'win32yank.exe -i --crlf',
              \      '*': 'win32yank.exe -i --crlf',
              \    },
              \   'paste': {
              \      '+': 'win32yank.exe -o --lf',
              \      '*': 'win32yank.exe -o --lf',
              \   },
              \   'cache_enabled': 0,
              \ }

endif
