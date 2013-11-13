" ~/.vim/sessions/default.vim: Vim session script.
" Created by session.vim 1.5 on 18 February 2013 at 13:14:23.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egmrLtT
silent! set guifont=Menlo\ Regular:h15
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'vividchalk' | colorscheme vividchalk | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /Volumes/HD2/dev/mysageone_na
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +11 ~/.vim/README.md
badd +1 ~/dev/mysageone_na/mysageone_na/app/assets/stylesheets/mysageone_na/application.css
badd +119 sageid/Views.pre-production/App_LocalResources/Change.aspx.resx
badd +145 sageid/Views.pre-production/App_LocalResources/SignOn.aspx.resx
badd +47 sageid/Views.production/SignOn.aspx
badd +73 sageid/Views.production/App_LocalResources/SignOn.aspx.resx
badd +0 sageid/Views.pre-production/TroposRegExistingUser/SignOnAdditional.aspx
args ~/.vim/README.md
set lines=49 columns=183
edit sageid/Views.pre-production/TroposRegExistingUser/SignOnAdditional.aspx
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 30 + 91) / 183)
exe 'vert 2resize ' . ((&columns * 152 + 91) / 183)
argglobal
enew
" file NERD_tree_2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 31 - ((30 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 043l
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 30 + 91) / 183)
exe 'vert 2resize ' . ((&columns * 152 + 91) / 183)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
1wincmd w
let s:bufnr = bufnr("%")
NERDTree /Volumes/HD2/dev
execute "bwipeout" s:bufnr
1resize 47|vert 1resize 30|2resize 47|vert 2resize 152|
tabnext 1
2wincmd w

" vim: ft=vim ro nowrap smc=128
