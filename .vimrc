set nocompatible              " be iMproved, required
filetype off                  " required

set number
syntax on
hi Search ctermbg=Yellow
hi Search ctermfg=Black

:command PDF w|!(pdflatex %)

imap jj <Esc>
imap <C-V> <Del>
cmap jj <Esc>

let g:vim_markdown_folding_disabled = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'sheerun/vim-polyglot'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
