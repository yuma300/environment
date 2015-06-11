set enc=utf-8
set fenc=utf-8
set fencs=utf-8,iso-2022-jp,euc-jp,cp932

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

set termencoding=utf-8
set encoding=utf-8 

" viとの互換性をとらない(vimの独自拡張機能を使う為)
set nocompatible
" " 改行コードの自動認識
set fileformats=unix,dos,mac
" " ビープ音を鳴らさない
set vb t_vb=

set tabstop=4
set shiftwidth=4
au BufNewFile,BufRead *.rb    set nowrap tabstop=2 shiftwidth=2
set expandtab
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

" インクリメンタルサーチ
set incsearch

" タイトルをウインドウ枠に表示する
set title


set nu
"set list

" 括弧入力時の対応する括弧を表示
set showmatch

" " 検索結果文字列のハイライトを有効にする
set hlsearch

" (行がそれより長くなると、この幅を超えないように空白の後で改行される)を無効にする
set textwidth=0


" ウィンドウの幅より長い行は折り返して、次の行に続けて表示する
set wrap


" バッファを切替えてもundoの効力を失わない
set hidden


" 他で書き換えられたら自動で読み直す
set autoread

filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

" ここにインストールしたいプラグインのリストを書く
NeoBundle 'Shougo/unite.vim'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'Align'
NeoBundle 'YankRing.vim'
:

filetype plugin on
filetype indent on
