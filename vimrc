
set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'jc00ke/taglist.vim'
Bundle 'ervandew/supertab'
Bundle 'msanders/snipmate.vim'


" Enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Have Vim jump to the last position when reopening a file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Have Vim load indentation rules and plugins according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
  set ofu=syntaxcomplete#Complete
endif

" Indentation settings
set expandtab		" Expand tabs as spaces
set softtabstop=4	" 4 columns for tab in insert mode
set shiftwidth=4        " 4 columns for shifting
set autoindent
set smartindent

" Misc settings
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden              " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set foldmethod=indent   " Enable code folding
set foldlevel=99
