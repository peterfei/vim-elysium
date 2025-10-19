" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
set tags=./.tags;,.tags

set autochdir
let g:gutentags_define_advanced_commands = 1
let g:gutentags_trace = 0
let g:gen_tags#verbose = 1

let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
    let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
    let g:gutentags_modules += ['gtags_cscope']
endif

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif


let $GTAGSLABEL = 'native'
"let $GTAGSCONF = '/usr/local/etc/gtags.conf'
"let g:gutentags_trace = 1
let g:gutentags_define_advanced_commands = 1


" 配置 ctags 的参数，老的 Exuberant-ctags 不能有 --extra=+q，注意
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']


let g:ctags_version = system('ctags --version')[0:8]

" 如果使用 universal ctags 需要增加下面一行，老的 Exuberant-ctags 不能加下一行
if g:ctags_version == "Universal"
  let g:gutentags_ctags_extra_args += ['--extras=+q', '--output-format=e-ctags']
endif
"let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 1
"Change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
"Enable advanced commands: GutentagsToggleTrace, etc.
let g:gutentags_define_advanced_commands = 1
"let g:gutentags_trace = 0

""cscope
if has("cscope")
    if executable('gtags-cscope') && executable('gtags')
        "禁用原GscopeFind按键映射
        let g:gutentags_plus_nomap = 1
        "Find this C symbol 查找C语言符号，即查找函数名、宏、枚举值等出现的地方
        nmap <C-\>s :GscopeFind s <C-R>=expand("<cword>")<CR><CR>
        "Find this difinition 查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
        nmap <C-\>g :GscopeFind g <C-R>=expand("<cword>")<CR><CR>
        "Find functions called by this function 查找本函数调用的函数
        nmap <C-\>d :GscopeFind d <C-R>=expand("<cword>")<CR><CR>
        "Find functions calling this function 查找调用本函数的函数
        nmap <C-\>c :GscopeFind c <C-R>=expand("<cword>")<CR><CR>
        "Find this text string 查找指定的字符串
        nmap <C-\>t :GscopeFind t <C-R>=expand("<cword>")<CR><CR>
        "Find this egrep pattern 查找egrep模式，相当于egrep功能，但查找速度快多了
        nmap <C-\>e :GscopeFind e <C-R>=expand("<cword>")<CR><CR>
        "Find this file 查找并打开文件，类似vim的能
        nmap <C-\>f :GscopeFind f <C-R>=expand("<cfile>")<CR><CR>
        "Find files #including this file 查找包含本文件的文件
        nmap <C-\>i :GscopeFind i ^<C-R>=expand("<cfile>")<CR>$<CR>
    else
        set csto=1
        set cst
        set nocsverb
        " add any database in current directory
        if filereadable("cscope.out")
            cs add cscope.out
        endif
        set csverb

        nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
        nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
        nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
        nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
        nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
        nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
        nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
        nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

        nmap <C-F12> :cs add cscope.out<CR>
        "F12用ctags生成tags
        nmap <F12> :!ctags -R --c++-kinds=+p --fields=+ialS --extra=+q -f .tags<CR>
        "--language-force=C++
        nmap <S-F12> :!cscope -Rbkq<CR>
        " cscope参数
        "-R: 在生成索引文件时，搜索子目录树中的代码
        "-b: 只生成索引文件，不进入cscope的界面
        "-d: 只调出cscope gui界面，不跟新cscope.out
        "-k: 在生成索引文件时，不搜索/usr/include目录
        "-q: 生成cscope.in.out和cscope.po.out文件，加快cscope的索引速度
        "-i: 如果保存文件列表的文件名不是cscope.files时，需要加此选项告诉cscope到哪儿去找源文件列表。可以使用"-"，表示由标准输入获得文件列表。
        "-I dir: 在-I选项指出的目录中查找头文件
        "-u: 扫描所有文件，重新生成交叉索引文件
        "-C: 在搜索时忽略大小写
        "-P path: 在以相对路径表示的文件前加上的path，这样，你不用切换到你数据库文件所在的目录也可以使用
    endif
endif
