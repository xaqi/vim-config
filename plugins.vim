set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Lokaltog/vim-easymotion'

Plugin 'vim-ruby/vim-ruby'
Plugin 'endwise.vim'
"Plugin 'Valloric/YouCompleteMe' "强大的自动补全，谁用谁知道

Plugin 'winmanager'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'

Plugin 'tomasr/molokai'

Plugin 'kien/ctrlp.vim'	 "强大的文件搜索
Plugin 'terryma/vim-multiple-cursors'	 "多光标同时编辑
Plugin 'bronson/vim-trailing-whitespace'	 "显示以及去除行尾空格




"Plugin 'SirVer/ultisnips'	//代码片段补全
"Plugin 'Lokaltog/vim-powerline'	//漂亮的状态栏
"Plugin 'erikw/tmux-powerline'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'elzr/vim-json'
"Plugin 'ervandew/supertab'
"Plugin 'flazz/vim-colorschemes'



"Plugin 'tpope/vim-unimpaired'
"Plugin 'tpope/vim-repeat'	//更为强大的重做功能
"Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-rails.git'
"Plugin 'tpope/vim-surround'	//符号自动环绕
"Plugin 'tpope/vim-speeddating'
"Plugin 'tpope/vim-bundler'
"Plugin 'tpope/vim-ragtag'
"Plugin 'tpope/vim-endwise'
"Plugin 'tpope/vim-commentary'
"Plugin 'tpope/vim-cucumber'
"Plugin 'tpope/vim-markdown'
"Plugin 'tpope/vim-haml'
"Plugin 'tpope/timl'
"Plugin 'jgdavey/vim-blockle'
"Plugin 'godlygeek/tabular'	//快速对齐
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'pangloss/vim-javascript'		//更好的js语法 锁进支持
"Plugin 'jgdavey/vim-turbux'
"Plugin 'mileszs/ack.vim'
"Plugin 'Lokaltog/vim-easymotion' " ,,w	 //强大的搜索定位
"Plugin 'duff/vim-bufonly'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'mattn/gist-vim'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'slim-template/vim-slim'
"Plugin 'rizzatti/dash.vim'
"Plugin 'mattn/emmet-vim'
"Plugin 'bling/vim-airline'



call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line





let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
map <Leader><leader>. <Plug>(easymotion-repeat)


map <leader>h <Plug>(easymotion-linebackward)
map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <leader>l <Plug>(easymotion-lineforward)
map <leader>. <Plug>(easymotion-repeat)
