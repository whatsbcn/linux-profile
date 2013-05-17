" Colors "
syntax on
 " No fer wrap de les linees
set nowrap
" Colors clars "
set bg=dark
" Tabulador de 4 espais "
retab 4
set tabstop=4
set shiftwidth=4
" Posar espais en comptes de tabs
set expandtab
" Canviar tots els tabs d'inici de línia per espais
" :%retab
" Compativilitat amb vi off. ex: el undo esta limitat "
set nocompatible
set history=50 " Guardem les darreres 50 comandes
set ignorecase smartcase " Ignorem majus/minus a les cerques
set incsearch " Cerca incremental tipus Firefox
set hls is
set ruler " Mostrem la posicio del cursor sempre

" permet el backspace sobre qualsevol cosa en insert mode
set bs=2
set nobackup

" pq quan hagis fet una cerca, no et quedi tot resaltat, en el moment de la
" ceca si, dspres no
nohl

function InsertTabWrapper() 
let col = col('.') - 1 
if !col || getline('.')[col - 1] !~ '\k' 
echo "TAB!!" 
return "\<tab>" 
else 
echo "COMPLETION!!"
return "\<c-p>" 
endif 
endfunction 

"inoremap <tab> <c-r>=InsertTabWrapper()<cr>

imap ;im int main(int argc, char *argv[]) {<CR>}<Esc>ko
imap ;sw switch(){<CR>case: <CR>break;<CR>case: <CR>break;<CR>default:<CR>}<Esc>kkkkkkf(a
imap ;inc #include <.h><ESC>2hi
imap ;def #define
imap ;for for (;;;){<CR>}<Esc>kf(a
imap ;w while(){<CR>}<Esc>kf(a
imap ;bash #!/bin/bash<CR><Esc>:r ! date +\#\ \%d/\%m/\%Y<CR>o#<ESC>:r ! whoami<CR>i <ESC>o
imap ;perl #!/usr/bin/perl<CR><Esc>:r ! date +\#\ \%d/\%m/\%Y<CR>o#<ESC>:r ! whoami<CR>i <ESC>o
imap ;python #!/usr/bin/python<CR><Esc>:r ! date +\#\ \%d/\%m/\%Y<CR>o#<ESC>:r ! whoami<CR>i <ESC>o
map <F9> :make<CR>

"vim -b : edit binary using xxd-format!
augroup Binary
	au!
	au BufReadPre  *.hex let &bin=1
	au BufReadPost *.hex if &bin | %!xxd
	au BufReadPost *.hex set ft=xxd | endif
	au BufWritePre *.hex if &bin | %!xxd -r
	au BufWritePre *.hex endif
	au BufWritePost *.hex if &bin | %!xxd
	au BufWritePost *.hex set nomod | endif
augroup END

" per a que es pugui enganxar sense problemes. No funciona els ;main
" set paste
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
"set spelllang=ca
"set spell
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab
