" ALE 配置
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\   'cpp': ['clang'],
\   'c': ['clang']
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['black'],
\}
let g:ale_fix_on_save = 1
