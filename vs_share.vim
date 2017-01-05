
let mapleader = "\<Space>"

" ctrl+s保存
:imap   <C-S>   <ESC>:w<CR>
:map    <C-S>   :w<CR>

" 定义快捷键到行首和行尾
nmap <Leader>h ^
nmap <Leader>l $
vmap <Leader>h ^
vmap <Leader>l $


" 
nmap <Leader>f F
nmap <Leader>t T
vmap <Leader>f F
vmap <Leader>t T

" 设置快捷键将选中文本块复制至系统剪贴板
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

noremap <Leader>n nzz
noremap <Leader>N Nzz

nmap j gj
nmap k gk
vmap j gj
vmap k gk

" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %


" 设置vv=viw
vmap v iw
