"nnoremap <F9> :call <SID>compile_and_run()<CR>
"function! s:compile_and_run()
"    exec 'w'
"    if &filetype == 'c'
"        exec "AsyncRun! gcc % -o %<; time ./%<"
"    elseif &filetype == 'cpp'
"       exec "AsyncRun! g++ -std=c++11 % -o %<; time ./%<"
"    elseif &filetype == 'java'
"       exec "AsyncRun! javac %; time java %<"
"    elseif &filetype == 'sh'
"       exec "AsyncRun! time bash %"
"    elseif &filetype == 'python'
"       exec "AsyncRun! -mode=term -pos=bottom -rows=8 -focus=1  python %"
"    endif
"endfunction
