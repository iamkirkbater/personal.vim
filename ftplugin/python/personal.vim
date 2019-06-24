" vim:foldmethod=marker:fen:
scriptencoding utf-8

" if get(g:, 'loaded_personal_ftplugin_python')
"     finish
" endif
" let g:loaded_personal_ftplugin_python = 1

set omnifunc=pythoncomplete#Complete
setlocal expandtab
setlocal shiftwidth=4
setlocal tabstop=4
setlocal smartindent
setlocal colorcolumn=81
setlocal textwidth=79

let python_highlight_all = 1

if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

nnoremap <leader>r :execute "!pytest"<cr>
nnoremap <leader>rf :execute "!pytest %"<cr>
nnoremap <leader>r. :execute "!pytest %::" . cfi#format("%s", "")<cr>
