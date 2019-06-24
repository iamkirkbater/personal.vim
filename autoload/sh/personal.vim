function! sh#personal#GoToDeclaration()
    execute ":Ack -Q '" . expand('<cword>') . "(' " . g:NERDTree.ForCurrentTab().getRoot().path.str()
endfunction
