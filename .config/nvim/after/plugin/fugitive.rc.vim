" Status line
if !exists('*fugitive#statusline')
  set statusline=%F\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}[L%l/%L,C%03v]
  set statusline+=%=
  set statusline+=%{fugitive#statusline()}
endif

" cunmap g
"cnoreabbrev <expr> gb getcmdtype() == ":" && getcmdline() == 'gb' ? 'Gblame' : 'gb'

"cnoreabbrev g Git
"cnoreabbrev gopen GBrowse
