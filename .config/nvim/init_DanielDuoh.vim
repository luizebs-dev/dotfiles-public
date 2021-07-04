
" let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'


call plug#begin('~/.vim/plugged')

" Yes, I am a sneaky snek now
Plug 'ambv/black'


" Tag bar
Plug 'preservim/tagbar'

" Convenience for commenting things in and out
Plug 'scrooloose/nerdcommenter'

" Highlight trailing whitespaces
Plug 'ntpeters/vim-better-whitespace'

" Show git stuff in gutter
Plug 'airblade/vim-gitgutter'

" Plebvim lsp Plugins
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-compe'
" Plug 'nvim-lua/completion-nvim'
" Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
" Plug 'tjdevries/nlua.nvim'
"  Plug 'tjdevries/lsp_extensions.nvim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-vim-lsp'

" Neovim Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Debugger Plugins
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

" THANKS BFREDL
" Plug '/home/mpaulson/personal/contextprint.nvim'

Plug 'rust-lang/rust.vim'
Plug 'darrikonn/vim-gofmt'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'tpope/vim-dispatch'
Plug 'theprimeagen/vim-be-good'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-projectionist'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'

" HARPOON!!
" Plug '/home/mpaulson/personal/rfc-reader'
Plug 'mhinz/vim-rfc'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" Ycm installation was difficult. In the end, it worked. Use:
" git fetch
" git checkout legacy-c++11
" git submodule update --init --recursive
" python3 install.py --all
" python3 install.py --all --system-libclang
" Three useful websites:
" https://github.com/ycm-core/YouCompleteMe/issues/3584
" https://remarkablemark.org/blog/2021/04/25/youcompleteme-install-error-mojave/
" https://dev.to/rajat_naegi/configure-you-complete-me-and-ultisnips-for-vim-and-their-integration-4plf

" function! BuildYCM(info)
"   if a:info.status == 'installed' || a:info.force
"    !./install.py
"   endif
" endfunction
" Plug 'ycm-core/YouCompleteMe', { 'do': function('BuildYCM') }
" Plug 'ycm-core/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
" Plug 'dense-analysis/ale'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'rhysd/vim-lsp-ale'
" Use release branch (recommend)
" Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile'}
" Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }

" prettier
Plug 'sbdchd/neoformat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" airline
" file expl
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree-project-plugin'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'

" should I try another status bar???
"  Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" Plug 'hoob3rt/lualine.nvim'

call plug#end()





" Settings
set encoding=utf-8
set mouse=a
set title
set cursorline


" Solving * problem in autocommands?
set shortmess-=F

" Trigger configuration. Do not use <tab> if you use YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:vim_be_good_log_file = 1
let g:vim_apm_log = 1

if executable('rg')
    let g:rg_derive_root='true'
endif
" [mileszs/ack.vim]
" if executable('rg')
"   let g:ackprg = '/usr/local/bin/rg --vimgrep'
"   nnoremap <leader>r :Ack! 
" endif

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'murmur'


let loaded_matchparen = 1
let mapleader = " "

" Use arrow keys to switch tabs
nnoremap <Left> :tabprevious<CR>
nnoremap <Right> :tabnext<CR>

" FZF
if executable('fzf')
    nnoremap <C-p> :FZF<cr>
endif

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
nnoremap <leader>w :Gstatus<cr>


" LSP completion and linting
" Coc remaps
" LSP config (the mappings used in the default file don't quite work right)
let g:lsp_highlight_references_enabled = 1
" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=cI
nnoremap <leader>h :LspHover<cr>
nnoremap <leader>j :LspDefinition<cr>

" Don't use Ex mode, use Q for formatting
map Q gq

" Map filetypes
" autocmd BufRead,BufNewFile   *.wat set ft=lisp
" autocmd BufRead,BufNewFile   *.gyb set ft=swift

if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'whitelist': ['c', 'cpp', "h", "hpp", 'objc', 'objcpp'],
        \ })
endif

" [scrooloose/nerdcommenter] Use // for comments
" let g:NERDCustomDelimiters = { 'swift': { 'left': '// ' } }
" let g:NERDDefaultAlign = 'left'

let g:sourcekitlsp = 'sourcekit-lsp'
if executable(g:sourcekitlsp)
    " LSP and autocomplete
    au User lsp_setup call lsp#register_server({
        \ 'name': 'sourcekit-lsp',
        \ 'cmd': {server_info->[g:sourcekitlsp]},
        \ 'whitelist': ['swift'],
        \ })
endif

" Error detection
set efm=
set efm+=%f:%l:%c:\ %trror:%m
set efm+=%f:%l:%c:\ %tarning:%m
set efm+=%f:%l:\ %trror:%m
set efm+=%f:%l:\ %tarning:%m

if executable('rust-analyzer')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rust-analyzer',
        \ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rust-analyzer']},
        \ 'whitelist': ['rust'],
        \ })
endif

if executable('cmake-language-server')
  au User lsp_setup call lsp#register_server({
  \ 'name': 'cmake',
  \ 'cmd': {server_info->['cmake-language-server']},
  \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'build/'))},
  \ 'whitelist': ['cmake'],
  \ 'initialization_options': {
  \   'buildDirectory': 'build',
  \ }
  \})
endif




 nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
 nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
 nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
 nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
 nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
" nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
" 
" " auto-format
" autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
" autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
" 
" inoremap <silent><expr> <C-Space> compe#complete()
" inoremap <silent><expr> <CR>      compe#confirm('<CR>')
" inoremap <silent><expr> <C-e>     compe#close('<C-e>')
" inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
" inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })






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
nnoremap <leader>gt <Plug>PlenaryTestFile

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

inoremap <C-c> <esc>
inoremap <C-s> :write<CR>

" Nerdtree remaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>nn :NERDTree<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

"
"
set mouse=


