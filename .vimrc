" 文字コードをUTF-8に設定
set fenc=utf-8

" 行番号を表示
set number

" カラースキーマ
" ~/.vim/colors/spring-night.vim
colorscheme spring-night

" シンタックスハイライト
:set term=xterm-256color
:syntax on

" 現在の行を強調表示
set cursorline

" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore

" タブ入力を複数の空白入力に置き換える
set expandtab

" 画面上でタブ文字が占める幅
set tabstop=2

" 自動インデントでずれる幅
set shiftwidth=2

" 改行時に前の行のインデントを継続する
set autoindent

" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

" Alias : ESC -> jj
inoremap <silent> jj <ESC>

" 検索をハイライト
:set hlsearch
