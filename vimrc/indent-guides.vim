" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white ctermbg=white
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=red ctermbg=red
hi IndentGuidesOdd ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle


