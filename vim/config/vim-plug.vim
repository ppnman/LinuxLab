""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugins Management                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:basic = 1
let s:appearance = 1
let s:text = 1
let s:python = 1
let s:git = 1

call plug#begin('~/.vim/plugged')

if s:basic > 0
    " 目录树
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

    " 搜索文件
    Plug 'Yggdroot/LeaderF', { 'do': './install.sh', 'on': 'Leaderf' }

    " 异步执行
    Plug 'skywind3000/asyncrun.vim', { 'on': 'AsyncRun' }

    " 快速注释
    Plug 'tpope/vim-commentary', { 'on': '<Plug>Commentary' }

    " vim-tmux快速导航
    Plug 'christoomey/vim-tmux-navigator'

    " 光标快速移动
    Plug 'easymotion/vim-easymotion', { 'on': '<Plug>(easymotion-bd-w)' }

    " 自动补全
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py', 'on': [] }
endif

if s:appearance > 0
    " 配色方案
    Plug 'lifepillar/vim-solarized8'

    " 彩虹括号
    Plug 'luochen1990/rainbow'

    " 状态栏
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Plug 'edkolev/tmuxline.vim'
endif

if s:text > 0
    " 代码片段补全
    Plug 'SirVer/ultisnips'
    Plug 'ppnman/vim-snippets'

    " 自动括号
    Plug 'jiangmiao/auto-pairs'

    " 操作成对符号
    Plug 'tpope/vim-surround'

    " 重复一个插件的操作
    Plug 'tpope/vim-repeat'

    " 去除行尾空格
    Plug 'ntpeters/vim-better-whitespace'

    " 文本对象
    Plug 'kana/vim-textobj-user'
    Plug 'kana/vim-textobj-indent'
    Plug 'sgur/vim-textobj-parameter'
endif

if s:python > 0
    " 代码检错
    Plug 'w0rp/ale', { 'for': 'python' }

    " 代码格式化
    Plug 'Chiel92/vim-autoformat', { 'on': 'Autoformat' }
endif

if s:git > 0
    " 显示gitdiff
    Plug 'mhinz/vim-signify'

    " git命令包装器
    Plug 'tpope/vim-fugitive'
endif

call plug#end()