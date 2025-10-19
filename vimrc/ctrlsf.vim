"Ctrlsf 配置
nnoremap <Leader>f :CtrlSF<Space>
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_default_view_mode = 'compact'

let g:ctrlsf_default_root = 'project'
let g:ctrlsf_search_mode = 'async'
"let g:ctrlsf_position = 'right'
let g:ctrlsf_winsize = '35%'

let g:ctrlsf_auto_preview = 0

let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }

let g:ctrlsf_mapping = {
    \ "next": "n",
    \ "prev": "N",
    \ }
let g:ctrlsf_context = '-B 5 -A 3'
let g:ctrlsf_auto_close = {
    \ "normal" : 0,
    \ "compact": 1
    \}
let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_extra_backend_args = {
    \ 'pt': '--home-ptignore'
    \ }
