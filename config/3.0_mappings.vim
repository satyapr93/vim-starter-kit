"----------overrriding existing mappings--------------------------------------
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap ; :
nnoremap q; q:
cnoremap jk <ESC>
inoremap jk <ESC>

"----------update existing mappings--------------------------------------------
" do not leave visual mode after visually shifting text
vnoremap < <gv
vnoremap > >gv

"make Y consistent with C and D
nmap Y y$

"re-select text block that was just pasted/edited
nnoremap <leader>gv `[v`]

"re-format paragraphs of text
nnoremap <leader>gq gqip

"move through display lines with j and k (Vim's default is semantic jump)
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

"----------leader mappings----------------------------------------------------
nnoremap <leader>q :bd<CR>

"move through tabs
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-Tab>   :tabnext<CR>
nnoremap <C-S-Tab> :tabprev<CR>

" Up down movements in command mode
cnoremap <C-j> <Up>
cnoremap <C-k> <Down>

" File browsing
nmap <leader>o :CtrlPMixed<CR>

" Split windows
nnoremap <leader>vp :vsp<CR>
nnoremap <leader>sp :sp<CR>

" easymotion search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)


nmap <leader><CR> <Plug>(wildfire-quick-select)

if has('macunix')
    map <D-d> :vsp<CR>
    map <D-S-d> :sp<CR>
    map <D-l> :buffers<CR>
    nnoremap<D-j> <C-w>l
    nnoremap<D-k> <C-w>h
    nnoremap<D-b> :SCCompile<CR>
    nnoremap<D-r> :SCCompileRun<CR>
endif

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END


"use <C-h> to clear the highlight of search hits
nnoremap <C-h> :nohls<CR>

"------------------------------------------------------------------------------------------------
