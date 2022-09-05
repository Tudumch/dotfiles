" ---------------------------------------- 
" PLUGINS INSTALL AND UPDATE
" for installing plugins type :PlugInstall
call plug#begin('~/.vim/plugged')

" Файловый менеджер. Замаплен на CTRL + N
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }  

" Цветовая схема
Plug 'morhetz/gruvbox' 

" Автозакрытие скобок и кавычек
Plug 'jiangmiao/auto-pairs'

" Статусбар снизу
Plug 'vim-airline/vim-airline'

" Автодополнение для языка Python
Plug 'davidhalter/jedi-vim'

" Всякие ништяки для Python
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

call plug#end()

" ---------------------------------------- 
" PLUGIN HOTKEYS AND SETUP
map <C-n> :NERDTreeToggle<CR>

colorscheme gruvbox
set background=dark

" Убрать автоматический выбор первого ворианта автодополнения jedi-vim 
let g:jedi#popup_select_first = 0

" ----------------------------------------
" MY STARTUP COMMANDS
set number
syntax on
"set hlsearch

" ---------------------------------------- 
" MY HOTKEYS
" отключить стрелочки:
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" ---------------------------------------- 

"=====================================================
" Python-mode settings
"=====================================================
" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
" провека кода после сохранения
let g:pymode_lint_write = 1

" поддержка virtualenv
let g:pymode_virtualenv = 1

" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" отключить autofold по коду
let g:pymode_folding = 0

" возможность запускать код
let g:pymode_run = 0
