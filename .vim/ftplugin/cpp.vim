""func! CompilRun()
""    g++ -std=c++11 % -o /tmp/a.out && /tmp/a.out<CR>
""
""
""
""
""endfunc


"func! Debug()
"    exec "w"
"    exec "!g++ % -g -o %<"
"    exec "!gbd %<"
"endfunc

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
    call append(7,"Using cpp.vim]]")
    call append(11,'***********************************************************/')
endfunction


function! DateInsert()
    call cursor(7,1)
    if search("Last modified") != 0
	let line = line(".")
	call setline(line,"Last modified: " . strftime("%Y-%m-%d %H:%M:%S"))
    endif
endfunction


:autocmd FileWritePre,BufWritePre *.cpp ks|call DateInsert()|'s
::nmap <silent> <F2> :call TitleInsert()<CR>ggjjA
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
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }


" 基于语法进行代码折叠
set foldmethod=syntax

"启动vim时关闭折叠代码
set nofoldenable

""let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
""let Tlist_Show_One_File=1
""let Tlist_Exit_OnlyWindow=1
""let Tlist_Auto_Open=1

""nnoremap <silent> <F8> :TlistToggle<CR>
autocmd VimEnter * nested :TagbarOpen

:inoremap , , <ESC>a
