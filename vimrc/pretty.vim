nmap <Leader>py <Plug>(Prettier)
let g:prettier#exec_cmd_async = 1
let g:prettier#autoformat = 0
let g:prettier#config#single_quote = 'true'
" 尾逗号
let g:prettier#config#trailing_comma = 'all'
" 括号之间的打印空间
let g:prettier#config#bracket_spacing = 'true'
" 将>放到行末而不是新的一行
let g:prettier#config#jsx_bracket_same_line = 'true'


" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css
