func! CompilRun()
	exec "!clear"
	exec "w"
	exec "!gcc % -o %< -lstdc++"
	exec "!./%<"
	exec "!rm %<"
endfunc

func! Debug()
	exec "w"
	exec "!gcc % -o %<"
	exec "!gdb %<"
endfunc
set smartindent
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

function! TitleInsert()
call setline(1,"//coding:utf-8")
call append(1,'/***********************************************************')
call append(2,"Program: ")
call append(3,"Description: ")
call append(4,"Shanbo Cheng: cshanbo@gmail.com")
call append(5,"Date: " . strftime("%Y-%m-%d %H:%M:%S"))
call append(6,"Last modified: " . strftime("%Y-%m-%d %H:%M:%S"))
call append(7,"GCC version: 4.9.3")
call append(8,'***********************************************************/')
endfunction

function! DateInsert()
"normal ms
call cursor(7,1)
if search('Last modified') != 0
	let line = line('.')
	call setline(line,"Last modified: " . strftime("%Y-%m-%d %H:%M:%S"))
endif
"normal `s
endfunction

:autocmd FileWritePre,BufWritePre *.cpp ks|call DateInsert()|'s
:nmap <silent> <F2> :call TitleInsert()<CR>ggjjA
:nmap <silent> <F5> :call CompilRun()<CR>
:nmap <silent> <C-F5> :call Debug()<CR>
:nmap <silent> <C-m> o//

" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
nmap <F8> :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=26 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签

autocmd VimEnter * nested :TagbarOpen
