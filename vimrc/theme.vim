" 设置状态栏主题风格
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
if !has('gui_running')
  set t_Co=256
  let g:dracula_italic=0
  let g:dracula_colorterm = 0
  if has('termguicolors') && !exists('$TMUX')
    set termguicolors
  end
  colorscheme molokai
  "set guifont=Monaco:h20
  set guifont=Fira\ Mono\ for\ Powerline:h30
  let lightlineColor = 'molokai'

  if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\e[4 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif

  "set background=dark
  set timeoutlen=1000 ttimeoutlen=0
else
  if strftime('%H') >= 21 || strftime('%H') <= 9
    set background=dark
  else
    set background=light
  endif
  colorscheme molokai
  "set guifont=Monaco:h20
  set guifont=Fira\ Mono\ for\ Powerline:h30
  let lightlineColor = 'molokai'
endif
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif
