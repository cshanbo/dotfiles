set nocompatible
filetype on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Bundle 'gmarik/Vundle'
"Bundle 'vim-pandoc/vim-pandoc'

Plugin 'vim-scripts/The-NERD-tree'

Plugin 'vim-scripts/VOoM'
"Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
"Plugin "moll/vim-bbye"
"Plugin "tmhedberg/SimpylFold"
Plugin 'https://github.com/scrooloose/syntastic.git'
"Plugin 'vim-scripts/winmanager'
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'https://github.com/vim-scripts/bbye.git'
Plugin 'Valloric/YouCompleteMe'

"Plugin 'https://github.com/tpope/vim-fugitive.git'
"Plugin 'https://github.com/msanders/snipmate.vim.git'
"Plugin 'https://github.com/tpope/vim-surround.git'
"Plugin 'https://github.com/tpope/vim-git.git'
Plugin 'https://github.com/ervandew/supertab.git'
Plugin 'https://github.com/rizzatti/dash.vim.git'
"Plugin 'https://github.com/kshenoy/vim-signature.git'
Bundle 'majutsushi/tagbar'

"Plugin 'https://github.com/sontek/minibufexpl.vim.git'
"Plugin 'https://github.com/wincent/Command-T.git'
"Plugin 'https://github.com/mitechie/pyflakes-pathogen.git'
"Plugin 'https://github.com/nathanaelkane/vim-indent-guides'
"Plugin 'https://github.com/mileszs/ack.vim.git'
"Plugin 'https://github.com/sjl/gundo.vim.git'
"Plugin 'https://github.com/fs111/pydoc.vim.git'
"Plugin 'https://github.com/vim-scripts/pep8.git'
"Plugin 'https://github.com/alfredodeza/pytest.vim.git'
"Plugin 'https://github.com/reinh/vim-makegreen'
"Plugin 'https://github.com/vim-scripts/TaskList.vim.git'
"Plugin 'https://github.com/sontek/rope-vim.git'

call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
filetype plugin indent on
colorscheme desert 
""colorscheme molokai
""let g:molokai_original = 1
syntax enable
syntax on

""set cursorcolumn
set cursorline
""highlight CursorLine  cterm=bold
""hi CursorLine ctermbg=8 ctermfg=15
hi CursorLine term=bold cterm=bold ctermbg=238 guibg=NONE
hi Visual term=reverse cterm=reverse ctermbg=black
set backspace=indent,eol,start

set showcmd
set ruler

:map G Gzz


"编码方式
""set encoding=utf8
""set fileencoding=utf8
""set fileencodings=utf8
""set formatoptions+=m
""set formatoptions+=B
set fileencodings=utf-8,ucs-bom,gb2312,gb18030,gbk,cp936,latin1                                                                                                                 
set termencoding=utf-8                                                                                                                                                          
set encoding=utf-8                                                                                                                                                              
set tabstop=4                                                                                                                                                                   
set softtabstop=4                                                                                                                                                               
set shiftwidth=4          
set expandtab

:map <c-j> <c-w>j
:map <c-k> <c-w>k
:map <c-l> <c-w>l
:map <c-h> <c-w>h


set showmatch
:inoremap ( ()<ESC>i
:inoremap { {}<ESC>i
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i

au FileType python set omnifunc=pythoncomplete#Complete
:let g:SuperTabDefaultCompleteType="context"
":let g:pep8_map='<Leader>8'



:nmap <silent> <F10> :NERDTree<CR>
:nmap <silent> <F9> :NERDTreeClose<CR>

"configuration for the NERD
let NERDChristmasTree=1
let NERDTreeShowBookmarks=1
let NERDTreeAutoCenter=1
let NERDTreeWinPos = 'right'
let NERDTreeShowFiles=1
let NERDTreeShowLineNumbers=1
auto VimEnter * NERDTree

"let g:indentLine_color_term=239

auto VimEnter * wincmd w


"BBye
nnoremap bd :Bd<CR>


" airline设置
set laststatus=2
" 使用powerline打过补丁的字体
"let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nnoremap <c-o> :bp<CR>
nnoremap <c-p> :bn<CR>


" Recommended settings for Syntastic
set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
set statusline+=%*

""let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
""let Tlist_Show_One_File=1
""let Tlist_Exit_OnlyWindow=1
""let Tlist_Auto_Open=1

let g:tagbar_width = 26
nmap <F8> :TagbarToggle<CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'                      
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 1


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=["flake8"]
let g:syntastic_javascript_checkers=["jshint","jslint"]

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

set ignorecase
set smartcase
set incsearch
set hlsearch
""set fileencodings=utf-8,gb2312,utf-16,big5

