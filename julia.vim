inoremap <buffer> ;F <C-g>u<Esc>ccfunction (<++>)<Enter><++><Enter>end<Enter><++><Esc><up><up><up>0f(i
inoremap <buffer> ;f <C-g>u<Esc>ccfor  = <++><Enter><++><Enter>end<Enter><++><Esc><up><up><up>0fr<right><right>i
inoremap <buffer> ;w <C-g>u<Esc>ccopen(, "w") do io<Enter>println(io, <++>)<Enter><++><Enter>end<Enter><++><Esc><up><up><up><up>^f,i
inoremap <buffer> ;i <C-g>u<Esc>ccif <CR><++><CR>end<CR><++><Esc><up><up><up>0A






nnoremap <buffer>                                     ; H
                  \  o    PROGRAM_FILE                ; @__DIR__                    ; @isdefined               ; isassigned(A, 2)
                  \<Enter>LinearAlgebra               ; FortranFiles                ; Printf                   ; BenchmarkTools    ; InteractiveUtils         ;
                  \<Enter>  ⋅ ×                       ; FortranFile("Grid.x","w")   ; @sprintf "%15.6f" 1.1    ; @btime println()  ; @code_warntype println() ;
                  \<Enter>eachrow                     ; eachcol                     ; true ? 1 : 2             ; while !eof(mfile) ;
                  \<Enter>reshape(A,(3,5))            ; permutedims(A, [3,2,1])     ; argmax(A)                ; maximum(A)        ;
                  \<Enter>cat(dims=3, A, A)           ; hcat(A,A)                   ; vcat(A,A)                ; pop!(A)           ; popfirst!(A)
                  \<Enter>deleteat!(A, i)             ;
                  \<Enter>Array{Array{Int}}(undef,0)  ; Union{Nothing, Float64}[]   ; Array{Int}[]             ; <++>              ;
                  \<Enter><++>                        ; <++>                        ; <++>                     ;
                  \<Enter>[i for i = 1:3 for j = i:3] ; [i for j = 1:2 for i = 1:3] ; [i for i = 1:3, j = 1:2] ;
                  \<Enter>[1,2,3]                     ; [1 2                        ; 3 4]
                  \<Enter>r"^marker.*[0-9]$"          ; r"[^0-9]"                   ; <++>                     ;
                  \<Enter>findfirst("ZONE ", "ZONE 1") != nothing
                  \<Enter>filter(x -> x > 0, [1, -1, 1])
                  \<Enter>split("1a b2 dsaf ", r"[^0-9]", keepempty=false)
                  \<Enter>filter(x -> x != nothing, tryparse.(Int64, split("1a b2 dsaf ", r"[^0-9]", keepempty=false)))
                  \<Enter>f(a::T1, b::T2 = 5) where T1<:Real where T2<:Integer = a + b
                  \<Esc>


let g:which_key_map[';'] = {
        \ 'name' : '<++>...',
        \ ";" : [":normal ;;", 'Search <++> and replace'],
        \ "'" : [":normal ;'", 'Search <++>'],
        \ 'F' : [':normal ;F', 'function'],
        \ 'f' : [':normal ;f', 'for'],
        \ 'w' : [':normal ;w', 'open, w'],
        \ 'i' : [':normal ;i', 'if'],
      \ }
        " \ '<++>' : [':normal <++>', '<++>'],
