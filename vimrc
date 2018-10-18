set autoindent
set autowriteall
set backspace=indent,eol,start
set cindent
set cmdheight=2
set encoding=utf8
set expandtab
set hidden
set incsearch
set laststatus=2
set nobackup
set nocompatible
set noerrorbells
set nomodeline
set nostartofline
set novisualbell
set pastetoggle=<F2>
set ruler
set showcmd
set scrolloff=3
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set smarttab
set softtabstop=4
set statusline=[%n]\ %<%F\ \ [%M%R%H%W%Y][%{&ff},\ %{strlen(&fenc)?&fenc:'none'}]\ %=
               \\ line:%l/%L\ col:%c\ \ %p%%
set t_vb=
set tabstop=4
set title
set ttyfast
set viminfo=%,'50
set viminfo+=\"100,:100
set viminfo+=n~/.viminfo
set wildignore=*.o,*~,*.pyc
set wildmenu

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'godlygeek/tabular'
  Plugin 'puppetlabs/puppet-syntax-vim'
  Plugin 'rodjek/vim-puppet'
  Plugin 'tpope/vim-fugitive'
  Plugin 'hashivim/vim-hashicorp-tools'
  Plugin 'vim-scripts/vibrantink'
  Plugin 'stephpy/vim-yaml'
  Plugin 'w0rp/ale'
call vundle#end()

syntax on
filetype plugin indent on

if has("gui_running")
    if has("gui_gtk2")
        set guifont=Consolas\ 10
    elseif has("gui_photon")
        set guifont=Consolas:s10
    elseif has("gui_kde")
        set guifont=Consolas/10/-1/5/50/0/0/0/1/0
    else
        set guifont=Consolas:h10:cDEFAULT " Assuming windows at this point
    endif

    set lines=50
    set columns=100
    set background=dark
    set selectmode=cmd,key,mouse
    set keymodel=
else
    highlight StatusLine ctermbg=15  ctermfg=13
    highlight LineNr ctermfg=Grey
    highlight ColorColumn ctermbg=Red

    set t_Co=256
    set background=dark
endif

autocmd BufWritePre *.py %s/\s\+$//e
