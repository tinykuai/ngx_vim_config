set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" All of your Plugins must be added before the following line

Plugin 'AutoComplPop'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Tagbar'

" 用于编辑HTML,xml,css等结构化的文件（主要是定义了一些缩写）
Plugin 'luofei614/Emmet.vim'
Plugin 'L9'

" Plugin 'FuzzyFinder'
Plugin 'kien/ctrlp.vim'

Plugin 'mattn/webapi-vim'

Plugin 'PDV--phpDocumentor-for-Vim'

Plugin 'luofei614/html5css3.git'

"bookmark  mm 添加书签,  mn 移动书签  mp 移动到前一个书签  ma 删除所有书签
Plugin 'MattesGroeger/vim-bookmarks'

"Bundle 'JavaScript-syntax'
Plugin 'pangloss/vim-javascript'

" jquery , angularjs 等语法
Plugin 'othree/javascript-libraries-syntax.vim.git'

Plugin 'Mark'

"css私有前缀
Plugin 'prefixer.vim'

"能缩减HTML代码
Plugin 'xml.vim'

"安装此插件解决macvim下没有加号寄存器的问题。
Plugin 'kana/vim-fakeclip.git'

Plugin 'terryma/vim-multiple-cursors.git'

Plugin 'phpunit'

"状态栏插件
"Plugin 'bling/vim-airline.git'
Plugin 'Lokaltog/vim-powerline'

Plugin 'luofei614/vim-golang.git'

Plugin 'burnettk/vim-angular.git'

"检查程序语法错误
Plugin 'scrooloose/syntastic.git'
Plugin 'suan/vim-instant-markdown'
"主题
Plugin 'altercation/vim-colors-solarized'
            

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"<localleader>
let maplocalleader='-'
let mapleader='-'

"autocomplpop 设置
let g:AutoComplPop_IgnoreCaseOption=1
set ignorecase
let g:acp_behaviorKeywordCommand="\<C-n>"

set wildignore=vendor/**,bower_components/**,node_modules/**,tags
let g:used_javascript_libs = 'jQuery,AngularJS,AngularUI,RequireJS'

"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
"php只做语法检查
let g:syntastic_php_checkers = ['php']

"emmet 设置
let g:user_emmet_expandabbr_key = '<C-Y>'
let g:use_emmet_complete_tag = 1
let g:user_emmet_settings = {"lang":"zh-cn"}

"php函数自动提示
autocmd FileType php set complete+=k | set dictionary=~/.vim/extend/phpclist.txt

"javascript自动提示，包括了jquery
autocmd FileType javascript set dictionary=~/.vim/my/extend/javascript.dict
autocmd FileType html set dictionary=~/.vim/my/extend/html.dict

"查找手册

autocmd FileType php set keywordprg=~/.vim/my/extend/phpman
autocmd FileType javascript,html set keywordprg=~/.vim/my/extend/man
autocmd FileType css set keywordprg=~/.vim/my/extend/cssman

inoremap <C-D> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <Leader>d :call PhpDocSingle()<CR> 
vnoremap <Leader>d :call PhpDocRange()<CR> 

"清除所有的bookmark
nnoremap mc :BookmarkClearAll<CR> 

"快捷键设置
map <F9> :TagbarOpen j<CR>
map! <F9> <Esc> :TagbarOpen j<CR>
map <F10> :TagbarToggle<CR>
map! <F10> <Esc>:TagbarToggle<CR>
map <F11> :NERDTreeToggle<CR>
map! <F11> <Esc>:NERDTreeToggle<CR>

"快速生成tag文件
map <F3> :! ctags -R<CR>
map! <F3> <Esc>:! ctags -R<CR>

"基本设置
"语法高亮
syntax enable
syntax on
set autoindent
set number
set smartindent

" 设置主题
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
set laststatus=2
let g:Powerline_colorscheme='solarized256'

set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

"自动换行
set wrap 
"设置无备份
set nobackup
set nowritebackup

"关闭光标闪动
set gcr=a:blinkon0

"====================================================
"（1）linux下使用的文件编码设置
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set ambiwidth=double

"===================================================
"(1) or (2)
"===================================================
"（2）windows下gvim中设置文件编码以及解决乱码的设置
"set encoding=utf-8
"set termencoding=utf-8
"set fileencoding=utf-8
"set fileencodings=ucs-bom,utf-8,chinese,cp936
"vim的菜单乱码解决：
"同样在 _vimrc文件里以上的中文设置后加上下列命令，
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
"vim提示信息乱码的解决
"language messages zh_CN.utf-8
