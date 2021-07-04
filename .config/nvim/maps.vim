nnoremap <S-C-p> "0p
nnoremap <leader>x "_x

" Increment/decrement
nnoremap <leader>+ <C-a>
nnoremap <leader>- <C-x>

" Delete a word backwards
nnoremap dw vb"_d

" Select all
nmap <F1> gg<S-v>G

" Save with root permission
command! W w !sudo tee > /dev/null %

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"------------------------------
" Windows

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><C-h> <C-w><
nmap <C-w><C-l> <C-w>>
nmap <C-w><C-k> <C-w>+
nmap <C-w><C-j> <C-w>-



" Trigger configuration. Do not use <tab> if you use YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:vim_be_good_log_file = 1
let g:vim_apm_log = 1

if executable('rg')
    let g:rg_derive_root='true'
endif

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'murmur'


let loaded_matchparen = 1
let mapleader = " "

" Use arrow keys to switch tabs
nnoremap <Left> :tabprevious<CR>
nnoremap <Right> :tabnext<CR>

" FZF -- following website : https://dev.to/iggredible/how-to-search-faster-in-vim-with-fzf-vim-36ko
" if executable('fzf')
"     nnoremap <Leader>ff :FZF<cr>
" endif
" nnoremap <silent> <Leader>fb :Buffers<CR>
" nnoremap <silent> <Leader>f :Files<CR>
" nnoremap <silent> <Leader>rg :Rg<CR>
" nnoremap <silent> <Leader>/ :BLines<CR>
" nnoremap <silent> <Leader>' :Marks<CR>
" nnoremap <silent> <Leader>gc :Commits<CR>
" nnoremap <silent> <Leader>H :Helptags<CR>
" nnoremap <silent> <Leader>hh :History<CR>
" nnoremap <silent> <Leader>h: :History:<CR>
" nnoremap <silent> <Leader>h/ :History/<CR>
" To include file names in Rg searches, comment line below:
" command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
" " To tell vim to use rg: 
" set grepprg=rg\ --vimgrep\ --smart-case\ --follow
" How to search/replace in multiple files:
" (following the same website above)
" The first method is to replace ALL matching phrases in our project. We will need to use :grep. Let's say you want to replace all instance of "pizza" with "donut". Here's what you do:
" :grep "pizza"
" :cfdo %s/pizza/donut/g | update
" That's it? Yup! That's it. Let me break down the steps:
" 
" :grep pizza uses ripgrep to succinctly search for all instances of "pizza". By the way, this would still work even if we didn't reassign ripgrep to replace default grep. We would have to do :grep "pizza" . -R instead of :grep "pizza".
" We run :cfdo because :grep uses quickfix.:cfdo executes any command we pass (in this case, our command is %s/pizza/donut/g) on all entries in our quickfix list. To run multiple commands, we can chain it with pipe (|). The first command we are executing is pizza-donut substitution: %s/pizza/donut/g. The second command, update, saves each file after the first is finished.
" Let's discuss the second way.
" 
" The second method is to search and replace in select multiple files instead of all files using buffers. Here we can choose which files we want to perform select and replace.
" 
" Clear our buffers (:Buffers) first. Our buffers list should contain only the needed files. We can clear it with %bd | e# | bd# (or restart Vim).
" Run :Files.
" Select all files you want to perform search and replace on. To select multiple files, use Tab / Shift+Tab. This is only possible if we have -m in FZF_DEFAULT_OPTS.
" Run :bufdo %s/pizza/donut/g | update.
" Our command :bufdo %s/pizza/donut/g | update looks similar to :cfdo %s/pizza/donut/g | update. That's because they are. Instead of performing substitution on all quickfix (cfdo) entries, we perform our substitution on all buffer (bufdo) entries.

" Toggle quickfix windown
nnoremap <leader><leader> :call ToggleQuickfix()<cr>
function! ToggleQuickfix()
  for buffer in tabpagebuflist()
    if bufname(buffer) == ''
      " then it should be the quickfix window
      cclose
      return
    endif
  endfor

  copen
endfunction

" Git status
nnoremap <leader>gs :Gstatus<cr>


" -- lsp provider to find the cursor word definition and reference
" nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
" -- or use command LspSagaFinder
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
" -- code action
nnoremap <silent><leader>ca <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>ca :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>

" LSP completion and linting
" Coc remaps
" LSP config (the mappings used in the default file don't quite work right)
let g:lsp_highlight_references_enabled = 1




" ThePrimeagen remaps
nnoremap <silent> Q <nop>
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
nnoremap <Leader>cpu a%" PRIu64 "<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
" nnoremap <leader>gt <Plug>PlenaryTestFile

" greatest remap ever
vnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d

" vim TODO
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

nnoremap <Leader>ww ofunction wait(ms: number): Promise<void> {<CR>return new Promise(res => setTimeout(res, ms));<CR>}<esc>k=i{<CR>

inoremap <C-s> :write<CR>

" Nerdtree remaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>nn :NERDTree<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

