" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" tab = 4 space
set tabstop=4
set shiftwidth=4
set expandtab

let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsSnippetDirectories=["/root/.vim/plugged/vim-snippets/UltiSnips", "/root/.vim/my-snippets/UltiSnips"]
