inoremap <buffer> ;1 <C-g>u============================================================<Enter><Enter>
inoremap <buffer> ;2 <C-g>u------------------------------------------------------------<Enter><Enter>
inoremap <buffer> ;b ____ <++><Esc>F_hi
inoremap <buffer> ;s ~~~~ <++><Esc>F~hi
inoremap <buffer> ;i __ <++><Esc>F_i
inoremap <buffer> ;e ______ <++><Esc>F_hhi
inoremap <buffer> ;c `` <++><Esc>F`i
inoremap <buffer> ;C <C-g>u```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
" autocmd Filetype markdown inoremap <buffer> ;h ==== <++><Esc>F=hi
inoremap <buffer> ;p <C-g>u![](<++>) <++><Esc>F[a
inoremap <buffer> ;l <C-g>u[](<++>) <++><Esc>F[a
" autocmd Filetype markdown inoremap <buffer> ;l --------<Enter>
inoremap <buffer> ;x <C-g>u- [ ]<Space>
inoremap <buffer> ;k $$<++><left><left><left><left><left>
inoremap <buffer> ;K <C-g>u$$<Enter><Enter>$$<Enter><++><Esc>kkA
inoremap <buffer> ;f <C-g>u\frac{}{<++>}<++><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
inoremap <buffer> ;\ <C-g>u\{<++>}<++><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
inoremap <buffer> ;u <C-g>u\underbrace{}_{\text{<++>}}<++><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
inoremap <buffer> ;o <C-g>u\overbrace{}^{\text{<++>}}<++><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
inoremap <buffer> ;m <C-g>u\begin{pmatrix}<Enter><Enter>\end{pmatrix}<Enter><++><up><up>
noremap <buffer> ;x :call ToggleCheckbox()<CR>
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

function! ToggleCheckbox()
  execute "normal 0f[l"
  if getline('.')[col('.')-1] ==? 'x'
    execute "normal r "
  else
    execute "normal rx"
  endif
endfunction

let g:which_key_map[';'] = {
        \ 'name' : '<++>...',
        \ "'" : [":normal ;'", 'Search <++>'],
        \ '1' : [':normal ;1', 'Heading 1'],
        \ '2' : [':normal ;2', 'Heading 2'],
        \ 'b' : [':normal ;b', 'Bold'],
        \ 'c' : [':normal ;c', 'Code'],
        \ 'C' : [':normal ;C', 'Code block'],
        \ 'e' : [':normal ;e', 'Emphasize'],
        \ 'l' : [':normal ;l', 'Link'],
        \ 's' : [':normal ;s', 'Strikethrough'],
        \ 'p' : [':normal ;p', 'Picture'],
        \ 'l' : [':normal ;l', 'Name link'],
        \ 'x' : [':normal ;x', 'Check list (toggle)'],
        \ 'k' : [':normal ;k', 'Equation'],
        \ 'K' : [':normal ;K', 'Equation block'],
        \ 'f' : [':normal ;f', 'frac'],
        \ '\' : [':normal ;\', '\'],
        \ 'm' : [':normal ;m', 'matrix'],
        \ 't' : [':normal ;t', 'Table'],
      \ }
        " \ '<++>' : [':normal <++>', '<++>'],
