set nocompatible              " be iMproved, required
filetype off                  " required

set number
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set backspace=indent,eol,start
syntax on
hi Search ctermbg=Yellow
hi Search ctermfg=Black

:command PDF w|!(pdflatex %)
noremap! <C-?> <C-h>

imap jj <Esc>
imap <C-V> <Del>
cmap jj <Esc>

" Null reg remap
cmap "" "_

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" Turns on line number in :Explore for some reason...
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

highlight ExtraWhitespace ctermbg=darkblue
match ExtraWhitespace /\s\+$/

set splitbelow

let g:vim_markdown_folding_disabled = 1

" add visual block to next occurence register with '//'
vnoremap * y/\V<C-R>=escape(@",'/\')<CR><CR>

" synchronizing the clipboard register and the default register
set clipboard^=unnamed

" copy path into register:
:command P :let @+ = expand("%:p")
cmap uu %:p:h

filetype plugin indent on    " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'lervag/vimtex'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-fugitive'     " Git integration
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'godlygeek/tabular'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
