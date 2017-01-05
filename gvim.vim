
"GVim 客户端配置
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"Toggle Menu and Toolbar
if has("gui_running")
	"au GUIEnter * simalt ~x " 窗口启动时自动最大化
	"set guioptions-=m " 隐藏菜单栏
	set guioptions-=T " 隐藏工具栏
	"set guioptions-=L " 隐藏左侧滚动条
	"set guioptions-=r " 隐藏右侧滚动条
	"set guioptions-=b " 隐藏底部滚动条
	"set showtabline=0 " 隐藏Tab栏
endif


" 配色
colo desert
set guifont=Consolas:h12:cANSI


"  关闭自动备份 
set nobackup
set noundofile
set noswapfile
