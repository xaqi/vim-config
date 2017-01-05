" Switch syntax highlighting on, when the terminal has colors
syntax on

" Javascript syntax hightlight
syntax enable

" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Syntax javascript set syntax=jquery

" Color scheme
colorscheme molokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0




" Backspace deletes like most programs in insert mode
set backspace=2
" Show the cursor position all the time
set ruler
" Display incomplete commands
set showcmd
" Set fileencodings
set fileencodings=utf-8,bg18030,gbk,big5

filetype plugin indent on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab


" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

set matchpairs+=<:>
set hlsearch




" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn



" NERD tree
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F5> :NERDTreeToggle<cr>






" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
let g:tagbar_ctags_bin = '$VIMRUNTIME/../conf/ctags'  
nmap <F6> :TagbarToggle<CR>


" ctrap
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'




" winmanager
let g:winManagerWindowLayout='NERDTree|Tagbar'
let g:winManagerWidth=30
let g:AutoOpenWinManager = 1 "这里要配合修改winmanager.vim文件，见下方说明"
 
let g:NERDTree_title = "[NERDTree]"
function! NERDTree_Start()
    exe 'q' "执行一个退出命令，关闭自动出现的窗口"
    exe 'NERDTree'
endfunction
 
function! NERDTree_IsValid()
	return 1
endfunction
 
"noremap <f7> call s:ToggleWindowsManager()|1wincmd w<cr>
 
let g:Tagbar_title = "[Tagbar]"
function! Tagbar_Start()
    exe 'q' "执行一个退出命令，关闭自动出现的窗口"
    exe 'TagbarOpen'
endfunction
 
function! Tagbar_IsValid()
    return 1
endfunction
let g:tagbar_vertical = 30
