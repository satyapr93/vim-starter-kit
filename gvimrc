set background=dark
"set the font
if has('macunix')
  set guifont=Monaco:h12
  nnoremap<D-/> <leader>ci
else  "linux
  set guifont=Droid\ Sans\ Mono\ 11
endif
