if &term== 'xterm-256color' || &term == "screen-256color"
    set t_Co=256
    hi CursorLine ctermbg=233
    set ttymouse=xterm2
"    color inkpot_opengen2
endif

so $VIMRUNTIME/vimrc_example.vim
so $VIMRUNTIME/syntax/syntax.vim

set et ts=4 sw=4 sts=4

set autoindent smartindent number
set nobackup

set title
set foldmethod=marker
set nocompatible
set magic
set ruler
set hls
set fileencodings=utf-8,euc-kr
set bg=dark
set splitright

set tags=tags;/,./tags

syntax on
filetype plugin on

" for screen with mouse
if &term == "screen"
    set ttymouse=xterm2
endif

" mouse setting
if has("mouse")
    set mouse=a
endif

nnoremap <F5> :checkt<CR>
"nnoremap <F6> :!cd /opengen/ktng/ktng_law/; ant reload; cd -<CR>
"nnoremap <F7> :!cd /opengen/ktng/ktng_law/; ant; cd -<CR>
"nnoremap <F8> :!cd /opengen/qooxdoo/sample; ./generate.py source; cd -<CR>
nnoremap <F7> :!cd /opengen/webmail/mua/public/source/build; ./generate.py source -c mail/main.json; cd -<CR>
"nnoremap <F9> :!./%<CR>

"colorscheme evening
set t_Co=256
color zxoria256-pluk
color evening2

map <Leader>e :Sexplore<CR>
map <Leader>t :r !date '+\%Y/\%m/\%d \%T'<CR> <Up> <S-j>
"map <Leader>q :w<CR> :!python2 %<CR>
"map <Leader>u :w<CR> :!clear<CR> :!./%<CR>
"map <Leader>c :!cvs commit .<CR>
map <Leader>3 :s/^/#/g<CR>
map <Leader>4 :s/^#//g<CR>
map <Leader>5 :s/^/\/\//g<CR>
map <Leader>6 :s/^\/\///g<CR>
map <Leader>m :w<CR> :make clean<CR> :make<CR>
map <Leader>f :syn region myFold start="{" end="}" transparent fold<CR> :syn sync fromstart<CR> :set foldnestmax=2<CR> :set foldmethod=syntax<CR> :set foldmethod=manual<CR>
map <Leader>nt <ESC>:NERDTree<CR>
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=0
let g:NERDTreeWinSize=30
map <silent> <F9> :NERDTreeToggle<CR>


hi Directory guifg=#ff0000 guibg=#00ff00 
hi treeDir guifg=#96CBFE guibg=#00ff00
hi link treeDir  Keyword


" minibufexploerer
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplUseSingleClick = 1

au BufRead,BufNewFile *.phtml,*.inc set syntax=php filetype=html
au BufRead,BufNewFile *.phtml,*.inc runtime! indent/php.vim
au BufRead,BufNewFile *.html set filetype=phtml
au BufRead,BufNewFile *.phtml,*.html set syntax=phtml
au BufRead,BufNewFile *.inc set syntax=php
au! BufRead,BufNewFile *.json set filetype=json
