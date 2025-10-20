" ========================================
" 基础设置 - Vim 性能和用户体验优化
" ========================================
set nocompatible              " 使用 Vim 的增强模式
syntax on                     " 启用语法高亮
filetype plugin indent on     " 启用文件类型检测、插件和缩进
set encoding=utf-8            " 设置编码为 UTF-8
set fileencoding=utf-8
set fileencodings=utf-8,gbk,gb18030,big5
set termencoding=utf-8

" 性能优化
set lazyredraw                " 宏执行时不重绘屏幕
set updatetime=300            " 减少更新时间（用于 gitgutter 等）
set complete-=i               " 自动补全时不搜索 include 文件

" 外观设置
set number                    " 显示行号
set relativenumber            " 显示相对行号
set cursorline                " 高亮当前行
set background=dark           " 深色背景
set ruler                     " 显示光标位置
set laststatus=2              " 总是显示状态栏
set showcmd                   " 显示命令
set showmode                  " 显示模式
set wildmenu                  " 命令行补全增强
set title                     " 设置窗口标题

" 缩进和制表符设置
set autoindent                " 自动缩进
set smartindent               " 智能缩进
set tabstop=4                 " Tab 宽度为 4 个空格
set shiftwidth=4              " 缩进宽度为 4 个空格
set softtabstop=4             " 编辑时 Tab 键的宽度
set expandtab                 " 将 Tab 转换为空格
set smarttab                  " 智能 Tab
set shiftround                " 缩进对齐到 shiftwidth 的倍数

" 搜索设置
set ignorecase                " 搜索时忽略大小写
set smartcase                 " 搜索包含大写字母时区分大小写
set incsearch                 " 增量搜索
set hlsearch                  " 高亮搜索结果

" 编辑体验
set backspace=indent,eol,start " 允许退格键删除缩进、换行和插入点前的内容
set autoread                  " 文件外部修改时自动读取
set hidden                    " 隐藏缓冲区而不是关闭
set history=1000              " 命令历史记录
set confirm                   " 退出时确认保存
set visualbell                " 错误时闪烁屏幕而不是蜂鸣

" 文件处理
set nobackup                  " 不创建备份文件
set noswapfile                " 不创建交换文件
set nowritebackup             " 不创建写入备份
set undofile                  " 启用撤销文件
set undodir=~/.vim/undo       " 撤销文件目录

" 文本渲染
set linebreak                 " 避免单词中间换行
set scrolloff=3               " 光标上下保留 3 行
set sidescrolloff=5           " 光标左右保留 5 列
set display+=lastline         " 显示长行的最后一行
set wrap                      " 启用换行

" 折叠设置
set foldmethod=indent         " 基于缩进折叠
set foldnestmax=3             " 最大折叠层数
set nofoldenable              " 默认不折叠

" 鼠标支持
set mouse=a                   " 启用鼠标

" 其他
set spelllang=en,cjk          " 拼写检查语言
set nrformats-=octal          " 数字增减时使用十进制
set formatoptions+=j          " 连接行时删除注释字符

" ========================================
" 插件管理 - vim-plug
" ========================================
call plug#begin('~/.vim/plugged')
" tabular 插件默认映射 ,t 用于表格对齐
    " 模糊查找
    Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
    " Git 集成
    Plug 'tpope/vim-fugitive'
    " 包围符号操作
    Plug 'tpope/vim-surround'
    " 快速移动
    Plug 'Lokaltog/vim-easymotion'
    " 代码片段 (UltiSnips 注释掉，使用 coc-snippets)
    " Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    " AI 插件

    " 文件树
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    " 异步运行
    Plug 'skywind3000/asyncrun.vim'
    " LSP 支持
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " 标签生成
    Plug 'ludovicchabant/vim-gutentags'


    " 预览 quickfix 窗口 ctrl-w z 关闭
    Plug 'skywind3000/vim-preview'
    " 表格对齐
    Plug 'godlygeek/tabular'
    " Markdown 支持
    Plug 'plasticboy/vim-markdown'
    " Git 差异显示
    Plug 'airblade/vim-gitgutter'
    " 状态栏增强
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " 颜色主题
    Plug 'morhetz/gruvbox'
    " 多光标编辑
    Plug 'terryma/vim-multiple-cursors'
    " 注释操作
    Plug 'scrooloose/nerdcommenter'
    " 自动括号
    Plug 'jiangmiao/auto-pairs'
    " 浮动终端
    Plug 'voldikss/vim-floaterm'
    " 调试器
    Plug 'puremourning/vimspector'
    " 语法检查
    Plug 'dense-analysis/ale'
call plug#end()

" ========================================
" 主题和状态栏配置
" ========================================
set background=dark
colorscheme gruvbox

" Airline 配置
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='gruvbox'

" ========================================
" 自定义快捷键
" ========================================
" 设置 leader 键
let mapleader = ","

" 快速保存
nmap <leader>w :w!<cr>

" 快速退出
nmap <leader>q :q<cr>

" 清除搜索高亮
nmap <leader><space> :nohlsearch<cr>

" 分屏快捷键
nmap <leader>vs :vsplit<cr>
nmap <leader>sp :split<cr>

" 窗口切换
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Amp integration (requires Amp CLI installed)
" Run amp with selected text or word under cursor
nnoremap <leader>amp :AsyncRun amp -x "<C-R><C-W>"<CR>
vnoremap <leader>amp :<C-U>AsyncRun amp -x "<C-R>*"<CR>

" 多光标快捷键
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<Leader>m'
let g:multi_cursor_select_all_word_key = '<Leader>m'
let g:multi_cursor_start_key           = 'g<Leader>m'
let g:multi_cursor_select_all_key      = 'g<Leader>m'
let g:multi_cursor_next_key            = '<Leader>m'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" 浮动终端
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_keymap_new    = '<F13>'
let g:floaterm_keymap_prev   = '<F14>'
let g:floaterm_keymap_next   = '<F15>'

for s:path in split(glob('~/.vim/vimrc/*.vim'), '')
  exe 'source ' . s:path
endfor
