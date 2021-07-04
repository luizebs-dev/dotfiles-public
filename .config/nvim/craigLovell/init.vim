"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              ______           _          __                    ____           "
"             / ____/________ _(_)___ _   / /   ____ _   _____  / / /           "
"            / /   / ___/ __ `/ / __ `/  / /   / __ \ | / / _ \/ / /            "
"           / /___/ /  / /_/ / / /_/ /  / /___/ /_/ / |/ /  __/ / /             "
"           \____/_/   \__,_/_/\__, /  /_____/\____/|___/\___/_/_/              "
"                             /____/                                            "
"                                                                               "
" Sections:                           --------------------------------------    "
"    -> * [0]  General Settings  *    | These following keys are safe to   |    "
"    -> * [1]  Plugin Management *    | modify becuase they are pointless. |    "
"    -> * [2]  Autocommands      *    |                                    |    "
"    -> * [3]  Settings          *    | <space>, <cr>, <bs>, and -         |    "
"    -> * [4]  Mappings          *    --------------------------------------    "
"    -> * [5]  Custom Functions  *                                              "
"                                                                               "
"                                                                               "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "\<Space>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                                General Settings                               "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent                                             " Make new line the same indentation level as the last line
set background=dark                                        " Make the theme dark
set backspace=indent,eol,start                             " Sane backspace behavior
set belloff=all                                            " Turn all annoying bell sounds off
set colorcolumn=100                                        " Turn the color column on (which will be turned purple at column 100).
set cursorline                                             " Highlight current line
set foldcolumn=3                                           " Gutter wider by 3 columns
set foldenable                                             " Enable folding
set foldlevelstart=3                                       " Open most folds by default
set foldmethod=marker                                      " Make vim markers the defualt folding pattern (we overide this in ft fold files).
set hidden                                                 " Allow buffer change w/o saving
set history=1000                                           " Remember last 1000 commands
set hlsearch                                               " Highlight search items that match
set ignorecase                                             " Case insensitive searches (must be on for smartcase to work)
set inccommand=nosplit                                     " Add in live substitution
set laststatus=2                                           " Turn on the status line
set list                                                   " Allow us to see special characters
set listchars=eol:$,tab:▸␣,trail:~,extends:>,precedes:<    " Set tab character.
set mouse=a                                                " Turn mouse mode on for all modes (normal, visual, insert, ... etc).
set nobackup                                               " Some language servers have issues with backups
set noexpandtab                                            " Use spaces when tab is used in insert mode
set nospell                                                " Turn off spelling correction
set nowritebackup                                          " Some language servers have issues with backups
set number                                                 " Turn hybrid relative numbers on (makes current line show real line number)
set omnifunc=syntaxcomplete#Complete                       " Turn on Omnicompletion (it is off by defualt)
set relativenumber                                         " Make line numbers relative to the current line
set scrolloff=5                                            " Keep at least 4 lines below cursor
set shiftwidth=4                                           " Make an indent 4 spaces long
set shortmess+=c                                           " Suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
set showcmd                                                " Show key strokes as they are typed.
set signcolumn=yes                                         " Make it so the sign column always is visible so it doesn't shift text when it appears
set smartcase                                              " By adding a uppercase letter it will be case sensitive
set softtabstop=4                                          " Make an indent 4 spaces long in insert mode
set tabstop=4                                              " Make an tab 4 spaces long
set tags+=tags                                             " Tell vim to look for a tags file
set termguicolors                                          " Add true color support (this will make cterm colors stop working, so make sure gui colors are set)
set timeoutlen=400                                         " Shorten timeout length for which key. The default timeoutlen is 1000 ms
set undodir=~/.config/nvim/undo-dir                        " Give a directory for storing undo data for files
set undofile                                               " Tell vim that we can undo files even after re-opening it.
set updatetime=1500                                        " Decrease update time for plugins like gitgutter
set wildignore+=*/tmp/*,*.so,*.swp,*.zip                   " Ignore certain files
set wildmenu                                               " Adds tab completion for exe commands
" set winheight=5                                            " Sets the current split to fill most of the height
" set winminheight=5                                         " Sets all splits to have a min height of 5
set winwidth=60                                            " Sets the minimum number of columns to be filled in the current split
set winminwidth=30                                         " Set minimum number of columns to be filled for all splits

set encoding=UTF-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                               Plugin Management                               "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Visual stuff
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'unblevable/quick-scope'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Small vim changes, that makes it easier to use every day
Plug 'airblade/vim-rooter'                 " Go to the root of the project
Plug 'alvan/vim-closetag'                  " Auto close html tags
Plug 'christoomey/vim-sort-motion'         " Sort lines in vim
Plug 'christoomey/vim-system-copy'         " Copy into system clip board
Plug 'godlygeek/tabular'                   " Align symbols like = and :
Plug 'jiangmiao/auto-pairs'                " Insert or delete brackets, parens, quotes in pair
Plug 'liuchengxu/vim-which-key'            " Remember mappings
Plug 'mhinz/vim-startify'                  " Have a start screen
Plug 'sheerun/vim-polyglot'                " Syntax packs
Plug 'tpope/vim-commentary'                " Comment code
Plug 'tpope/vim-repeat'                    " Better repeat support
Plug 'tpope/vim-surround'                  " Can put quotes around verbs
"L Plug '~/.config/nvim/plugged/vim-center'   " Help center vim headers with delimiters on both sides
" Plug 'cxgslegend/vim-center'

" Notes
Plug 'fmoralesc/vim-pad', { 'branch': 'devel'}
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-after'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Programming related plugins
Plug 'dhruvasagar/vim-table-mode'                      " Toggle table mode for writing markdown tables
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'                                 " Expand with <c-y>,
Plug 'neoclide/coc.nvim', {'branch': 'release'}        " Support LSP protocol
Plug 'tpope/vim-fugitive'                              " Git support within vim
Plug 'editorconfig/editorconfig-vim'

" Learn to vim correctly
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'dahu/VimRegexTutor'

" Custom text objects
Plug 'kana/vim-textobj-user'               " Get a plugin for defining custom objects
" Predefined custom objects
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'sgur/vim-textobj-parameter'

call plug#end()
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                                  Autocommands                                 "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("autocmd")
	augroup cleargroup
		autocmd!
		" Quit vim if nerd tree is the only open window open
		autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

		" Resize window horizontaly and verticaly, so that the current split
		" is maximized, and the others are minimized
		autocmd WinEnter * :call NerdTreeWindowMaximizeHandler()
		autocmd DiffUpdated * :call NerdTreeWindowMaximizeHandler()

		" Whichkey dynamic keybindings
		autocmd BufEnter * call WhichKeyDynamicMappings()

		" We source this in a seperate file, so that when we source the
		" init.vim file, it doesn't try to resource the SourceByFiletype() function
		" while it is in use.
		autocmd VimEnter * source ~/.config/nvim/source-by-filetype.vim

		" Delete all trailing white space before saving
		autocmd BufWritePre *.* :%s/\s\+$//e

		" When I open my vimrc file, start it completly folded
		autocmd BufRead init.vim set foldlevel=0

		" Re-source my init.vim file if I save it
		autocmd BufWritePost init.vim :call SourceByFiletype()

		" Jump to the last place we were in a file
		autocmd BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

		" Highlight the symbol and its references when holding the cursor.
		autocmd CursorHold * silent call CocActionAsync('highlight')

		" Setup formatexpr specified filetype(s).
		autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')

		" Update signature help on jump placeholder.
		autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

		" Turn on rainbow brackets in all files
		autocmd FileType * RainbowParentheses

		" Don't try to make the tick mark pairs in markdown files
		autocmd FileType markdown let b:coc_pairs_disabled = ['`']

		" Set some vim settings for when we are writing git commits
		autocmd Filetype gitcommit setlocal spell tw=72 colorcolumn=73

		" Hide the status bar in which key
		autocmd FileType which_key set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler

		" Define a text object for the vimrc headers over each section (only
		" in vim files).
		autocmd FileType vim call textobj#user#plugin('vimrcheader', {
		\	'header': {
		\     'pattern': ['^"\s*', '\s*"$'],
		\     'select-a': 'ah',
		\     'select-i': 'ih',
		\	},
		\ })
	augroup END
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                                    Settings                                   "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
colorscheme hybrid

" Needed to make the line numbers a little bit brighter. Made it hard to jump
" by relative line numbers
highlight LineNr                                        guifg='#949494' ctermfg=60
highlight Folded                                        guifg='#949494' ctermfg=60

" Make color column purple color
highlight ColorColumn                                   guibg='#5f5f87' ctermbg=60

" Floating windows are yucky yucky yucky. No good, very bad.
let g:which_key_map                                                            = {}
let g:which_key_use_floating_win                                               = 0

" Bring in settings for lua plugin colorizer dkaf
" luafile ~/.config/nvim/plug-colorizer.lua
if !exists('g:loaded_colorizer')
lua << EOF
require 'colorizer'.setup(
	{'*';},
	{
		RGB      = true;        -- #RGB hex codes
		RRGGBB   = true;        -- #RRGGBB hex codes
		RRGGBBAA = true;        -- #RRGGBBAA hex codes
		css      = true;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
		css_fn   = true;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
		hsl_fn   = true;        -- CSS hsl() and hsla() functions
		names    = true;        -- "Name" codes like Blue
		rgb_fn   = true;        -- CSS rgb() and rgba() functions
		-- Available modes: foreground, background
		mode     = 'background'; -- Set the display mode.
	})
EOF
endif

" Vim table mode settings
let g:table_mode_corner_corner                                                 = "+"
let g:table_mode_header_fillchar                                               = "="
" FOR THE LOVE OF GOD, WHY DO PLUGINS SET THEIR OWN MAPPINGS!!!!!!!!!!! I AM
" GOING TO FREAKING LOSE IT I SWEAR.
let g:table_mode_disable_mappings                                              = 1
let g:table_mode_disable_tableize_mappings                                     = 1
let g:table_mode_map_prefix                                                    = "¥¢€<Plug>gs"

" Setup airline to make vim look nice
let airline#extensions#coc#error_symbol                                        = 'E:'
let airline#extensions#coc#stl_format_err                                      = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn                                     = '%W{[%w(#%fw)]}'
let airline#extensions#coc#warning_symbol                                      = 'W:'
let g:airline#extensions#coc#enabled                                           = 1
let g:airline_powerline_fonts                                                  = 1
let g:airline_theme                                                            = 'bubblegum'

" Setup vim pad for taking nice markdown notes
let g:pad#default_file_extension                                               = ".md"
let g:pad#default_format                                                       = "pandoc"
let g:pad#dir                                                                  = "~/Dropbox/vim-notes/"
let g:pad#search_backend                                                       = "ag"
let g:pad#window_height                                                        = 30
" Dont let pad set its own mappings
let g:pad#set_mappings                                                         = 0

" Setup pandoc to make a pdf from markdown with the ':Pandoc pdf' command
let g:pandoc#folding#level                                                     = 3
let g:pandoc#folding#mode                                                      = "relative"
let g:pandoc#formatting#mode                                                   = "sA"
let g:pandoc#formatting#smart_autoformat_on_cursormoved                        = 1

" Exclude some buffers from editor config
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Setup git gutter
let g:gitgutter_enabled                                                        = 1
let g:gitgutter_sign_added                                                     = '⏽'
let g:gitgutter_sign_modified                                                  = '⏽'
let g:gitgutter_sign_modified_removed                                          = '⏽'
let g:gitgutter_sign_removed                                                   = '▓'
let g:gitgutter_sign_removed_first_line                                        = '▓'
" Dont let git gutter set its own mappings (we might want to add back in the
" omaps).
let g:gitgutter_map_keys                                                       = 0
highlight GitGutterAdd                                  guifg='#98c379' ctermfg=2
highlight GitGutterChange                               guifg='#61afef' ctermfg=3
highlight GitGutterDelete                               guifg='#e06c75' ctermfg=1

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys                                                     = ['f', 'F', 't', 'T']
let g:qs_max_chars                                                             = 150
highlight QuickScopePrimary     guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary   guifg='#eF5F70' gui=underline ctermfg=81  cterm=underline

" List coc extensions to auto install
let g:coc_global_extensions=[
\	'coc-clangd',
\	'coc-css',
\	'coc-html',
\	'coc-json',
\	'coc-markdownlint',
\	'coc-phpls',
\	'coc-python',
\	'coc-r-lsp',
\	'coc-sql',
\	'coc-texlab',
\	'coc-tsserver',
\	'coc-vetur',
\	'coc-vimlsp',
\	'coc-xml',
\	'coc-yaml',
\]

" Assume we can see dot files by default
let g:NERDTreeShowHidden                                                       = 1
let g:NERDTreeWinSize                                                          = 30

" We will let vim rooter handle this stuff
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 0

" Add to the rooter patterns
let g:rooter_patterns = ['.env', '.gitignore', '.gitattributes', '.styleci.yml', '_ide_helper', 'composer.json', 'composer.lock', 'package.json', 'README.md', '.editorconfig', '.git', '.git/', '_darcs/', '.hg/', '.bzr/', '.svn/']

" Disable sort motion from polluting motion keys by assigning it to something
" that would never be pressed. I didn't put <Plug> at the beginning because I
" assumed there were a lot of mappings with <Plug> at the start, and I didn't
" know if it in any way effected performance.
let g:sort_motion                                                              = "¥¢€<Plug>gs"
let g:sort_motion_lines                                                        = "¥¢€<Plug>gss"
let g:sort_motion_visual                                                       = "¥¢€<Plug>gs"

" If we don't stop auto pairs from mapping CR it will conflict with coc
let g:AutoPairsMapCR = 0

" Close tags files types
let g:closetag_filenames                                                       = '*.html,*.xhtml,*.phtml,*.php'
let g:closetag_filetypes                                                       = 'html,xhtml,phtml,javascript,php'
let g:closetag_xhtml_filenames                                                 = '*.xhtml,*.jsx,*.js'

" Rainbow brackets config
let g:rainbow#max_level                                                        = 16
let g:rainbow#pairs                                                            = [['(', ')'], ['[', ']'], ['{', '}']]

" Dont use floating windows
let g:vim_be_good_floating                                                     = 0

" Setup python so vim will stop yelling at us.
let g:python_host_prog                                                         = "/usr/local/bin/python2"
let g:python3_host_prog                                                        = "/usr/local/bin/python3"
"
" I don't really ever use :grep, however I set it to use ripgrep here just in case
" I ever do on accident.
if executable('rg')
	set grepprg=rg\ --no-heading\ --vimgrep
	set grepformat=%f:%l:%c:%m
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                                    Mappings                                   "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Do not allow me to use arrow keys (yuck!!!).
inoremap <Left>  <nop>
inoremap <Right> <nop>
inoremap <Up>    <nop>
inoremap <Down>  <nop>

" Do not allow me to use arrow keys in insert mode (super yuck!!!!).
noremap <Left>   <esc>:echo "Don't be an idiot"<cr>
noremap <Right>  <esc>:echo "Don't be an idiot"<cr>
noremap <Up>     <esc>:echo "Don't be an idiot"<cr>
noremap <Down>   <esc>:echo "Don't be an idiot"<cr>

" Move up and down by visible lines if current line is wrapped
noremap <buffer> k gk
noremap <buffer> j gj

" Quit current buffer
nnoremap <silent>q :quit<cr>

" Evaluate shell command under cursor, and replace with output.
noremap Q !!$SHELL<cr>

" Setup coc to complete by hitting tab
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>CheckBackSpace() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
nnoremap <silent><expr> <c-space> coc#refresh()

if exists('*complete_info')
	inoremap <expr> <cr>
		\ complete_info()["selected"] != "-1" ? "\<C-y>" : <SID>CocNonSelectionAction()
else
	inoremap <expr> <cr>
		\ pumvisible() ? "\<C-y>" : <SID>CocNonSelectionAction()
endif

" This unsets the "last search pattern" register by hitting return
nnoremap <cr> :noh<cr>

" Set up coc text objects
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Leader keys under which key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Single key mappings
let g:which_key_map[' '] = [ '<c-^>'             , 'last buffer' ]
let g:which_key_map[','] = [ 'Startify'          , 'start screen' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC'       , 'open init' ]
let g:which_key_map[';'] = [ ':q!'               , 'force quit' ]

" Did the mapping outside of which key to address range bug. Will remove and
" move back inside of which key if fixed in the future.
nnoremap <Leader>/ :Commentary<cr>
vnoremap <Leader>/ :Commentary<cr>
let g:which_key_map["/"] = 'comment'

" Group mappings

" a is for altering the file in some way (line or whole doc)
let g:which_key_map.a = {
\	'name' : '+alter' ,
\	'c' : [':CenterTextOfLength 81'            , 'center header'],
\	'f' : [':call FixLastSpellingError()'      , 'fix spelling'],
\}
nnoremap <Leader>a= :Tabularize /=<cr>
vnoremap <Leader>a= :Tabularize /=<cr>
nnoremap <Leader>a: :Tabularize /:<cr>
vnoremap <Leader>a: :Tabularize /:<cr>
let g:which_key_map.a["="] = 'align ='
let g:which_key_map.a[":"] = 'align :'
vnoremap <Leader>as :sort<cr>
let g:which_key_map.a.s = 'sort visual'

" b is for buffer
let g:which_key_map.b = {
\	'name' : '+buffer' ,
\	'b' : ['Buffers'                           , 'fzf-buffer']      ,
\	'd' : ['bd'                                , 'delete-buffer']   ,
\	'n' : ['bnext'                             , 'next-buffer']     ,
\	'p' : ['bprevious'                         , 'previous-buffer'] ,
\}

" f is for file
let g:which_key_map.f = {
\	'name' : '+file' ,
\	'f' : [':Files'                            , 'search files'],
\	'l' : [':Lines'                            , 'lines'] ,
\	'p' : [':Rg'                               , 'search text'],
\	's' : [':wa'                               , 'save all'],
\}
" I need to do the binding here to get echo'ing to work
nnoremap <leader>fw :call SourceByFiletype()<cr>
let g:which_key_map.f.w = 'write and source'

" g is for git
let g:which_key_map.g = {
\	'name' : '+git' ,
\	'A' : [':Git add .'                        , 'add all'],
\	'D' : [':Git diff'                         , 'diff'],
\	'P' : [':Git pull'                         , 'pull'],
\	'a' : [':Git add %'                        , 'add current'],
\	'b' : [':Git blame'                        , 'blame'],
\	'c' : [':Git commit'                       , 'commit'],
\	'd' : [':Gdiffsplit'                       , 'diff split'],
\	'g' : [':Gstatus'                          , 'status'],
\	'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
\	'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
\	'l' : [':Git log'                          , 'log'],
\	'p' : [':Git push'                         , 'push'],
\	'r' : [':GRemove'                          , 'remove'],
\	's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
\	'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
\}

let g:which_key_map.l = {
\'name' : '+lsp' ,
\	'.' : [':CocConfig'                          , 'config'],
\	'a' : ['<Plug>(coc-codeaction)'              , 'code action'],
\	'd' : ['<Plug>(coc-definition)'              , 'definition'],
\	'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
\	'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
\	'm' : [':CocList diagnostics'                , 'diagnostics messages'],
\	'n' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
\	'p' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
\	'e' : ['<Plug>(coc-rename)'                  , 'edit name (rename)'],
\	'r' : ['<Plug>(coc-references)'              , 'references'],
\	's' : [':CocList -I symbols'                 , 'search symbols'],
\	't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
\}
" Need visual mode mappings outside of dictionary mapping for now
xmap <leader>lA <Plug>(coc-codeaction-selected)
nmap <leader>lA <Plug>(coc-codeaction-selected)
let g:which_key_map['l']['A'] = 'selected action'


" n is for notes
let g:which_key_map.n = {
\	'name' : '+notes' ,
\	'l' : [':Pad ls'                           , 'list'],
\	'n' : [':Pad new'                          , 'new'],
\	's' : ['<Plug>(pad-search)'                , 'search'],
\}
" Its not working in the dictionary mapping
nnoremap <leader>ng :call ConvertMarkdownToPDF()<cr>
let g:which_key_map.n.g = 'generate pdf'

" s is for search
let g:which_key_map.s = {
\	'name' : '+search' ,
\	'/' : [':History/'                         , 'search history'],
\	'B' : [':Buffers'                          , 'open buffers'],
\	'C' : [':BCommits'                         , 'buffer commits'],
\	'G' : [':GFiles?'                          , 'modified git files'],
\	'H' : [':History:'                         , 'command history'],
\	'M' : [':Maps'                             , 'normal maps'] ,
\	'P' : [':Tags'                             , 'project tags'],
\	'S' : [':Colors'                           , 'color schemes'],
\	'T' : [':BTags'                            , 'buffer tags'],
\	'b' : [':BLines'                           , 'buffer lines'],
\	'c' : [':Commits'                          , 'commits'],
\	'g' : [':GFiles'                           , 'git files'],
\	'h' : [':History'                          , 'file history'],
\	'm' : [':Marks'                            , 'marks'] ,
\	'p' : [':Helptags'                         , 'help tags'] ,
\	'w' : [':Windows'                          , 'search windows'],
\	'y' : [':Filetypes'                        , 'file types'],
\}

" t is for toggle
let g:which_key_map.t = {
\	'name' : '+toggle' ,
\	'g' : [':GitGutterSignsToggle'             , 'toggle git gutter'],
\	'h' : [':GitGutterLineHighlightsToggle'    , 'highlight hunks'],
\	'n' : ['OpenNerdTree()'                    , 'nerdtree'],
\	's' : [':set spell!'                       , 'spelling'],
\	}
" For some reason, I can't bind it in the map above
nnoremap <leader>tt :TableModeToggle<cr>
let g:which_key_map.t.t = 'table mode'

" v is for vim
let g:which_key_map.v = {
\	'name' : '+vim' ,
\	'n' : [':Tutor'                             , 'nvim tutor'],
\	'p' : [':Tutor pad'                         , 'pad tutor'],
\	'r' : [':VimRegexTutor'                     , 'regex tutor'],
\	't' : [':Tutor tutor'                       , 'tutor tutor'],
\	'v' : [':call StartVimBeGood()'             , 'vim be good'],
\}

" w is for window
let g:which_key_map.w = {
\	'name' : '+window' ,
\	'h' : [':wincmd h'                          , 'move left'],
\	'j' : [':wincmd j'                          , 'move down'],
\	'k' : [':wincmd k'                          , 'move up'],
\	'l' : [':wincmd l'                          , 'move right'],
\	's' : [':split'                             , 'horizontal split'],
\	'v' : [':vsplit'                            , 'vertical split'],
\	'=' : [':wincmd ='                          , 'equal all windows'],
\}
nnoremap <leader>wr :res <cr> | :vertical res<cr>
let g:which_key_map.t.t = 'resize'

" Register which_key dictionary key map
call which_key#register('<Space>', "g:which_key_map")

" nvim terminal mappings
if has('nvim')
	tnoremap <Esc> <c-\><c-n>
	tnoremap <A-[> <Esc>
	tnoremap <A-h> <c-\><c-n><c-w>h
	tnoremap <A-j> <c-\><c-n><c-w>j
	tnoremap <A-k> <c-\><c-n><c-w>k
	tnoremap <A-l> <c-\><c-n><c-w>l
	tnoremap <A-h> <c-w>h
	tnoremap <A-j> <c-w>j
	tnoremap <A-k> <c-w>k
	tnoremap <A-l> <c-w>l
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                               "
"                                Custom Functions                               "
"                                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! StartVimBeGood()
	e vimbegood
	VimBeGood
endfunction

function! FixLastSpellingError()
	normal! mm[s1z=`m
endfunction

function! ConvertMarkdownToPDF()
	let current_filetype = &filetype

	if current_filetype ==? "markdown" || current_filetype ==? "pandoc"
		execute "Pandoc! pdf"
	endif
endfunction

" Toggles nerdtree
function! OpenNerdTree()
	if g:NERDTree.IsOpen()
		execute "NERDTreeToggle"
	else
		execute "NERDTreeToggle"

		" Sometimes I don't like it moving the cursor to nerdtree. Thats why
		" this function exists. But I change my mind all the time, and
		" sometimes its commented out, which makes it the same as just calling
		" NERDTreeToggle directly (Meh)
		" execute "normal \<C-w>\<C-p>"
	endif
endfunction

" Will resize current window to maximize it. If it is a diff, it will equalize
" the windows
function! ResizeCurrentWindow()
	if !&diff
		resize
		vertical resize
	else
		noautocmd wincmd =
	endif
endfunction

function! NerdTreeWindowMaximizeHandler()
	let current_win = winnr()
	let NT_win = bufwinnr('NERD_tree_*')
	if exists("b:NERDTree")
		if NT_win ==# current_win
			execute 'noautocmd setlocal winwidth='.g:NERDTreeWinSize
		elseif NT_win !=# -1
			execute 'noautocmd '.NT_win.'wincmd w'
			" noautocmd wincmd p
			call ResizeCurrentWindow()
		endif
	else
		call ResizeCurrentWindow()
	endif
endfunction

function! WhichKeyDynamicMappings()
	let current_filetype = &filetype

	" If we are in a php file set up php keymappings
	if current_filetype ==? "php"
		let g:which_key_map.p = { 'name' : '+php' }

		nnoremap <buffer><leader>pf :!php artisan test --testsuit Feature<cr>
		let g:which_key_map.p.f = 'feature tests'

		nnoremap <buffer><leader>pu :!php artisan test --testsuit Unit<cr>
		let g:which_key_map.p.u = 'unit tests'

		nnoremap <buffer><leader>pa :!php artisan test<cr>
		let g:which_key_map.p.a = 'all tests'
	elseif has_key(g:which_key_map, 'p')
		unlet g:which_key_map.p
	endif
endfunction

" Return true if your cursor is at column 0 or if the character behind your cursor
" is a whitespace character or any of the following characters \ [ ] { } [ ] < > :
" , = ( ) / ;
function! s:CheckBackSpace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\(\s\|\\\|[\|]\|{\|}\|\[\|\]\|<\|>\|:\|,\|=\|(\|)\|\/\|;\)'
endfunction

function! s:CocNonSelectionAction()
	let l:current_filetype = &filetype
	let l:goUpOneLineAndIndentCursor = "\<C-g>u\<CR>\<ESC>\<S-O>"
	let l:putSimicolonAtEndOfLineThenGoUpOneLineAndIndentCursor = "\<C-g>u\<CR>\<ESC>A;\<ESC>\<S-O>"
	let l:regularEnter = "\<C-g>u\<CR>"
	let l:languagesWithSimicolonAfterSquareBracket = {
\		'php'        : 1,
\		'cpp'        : 1,
\		'javascript' : 1
\	}

	if <SID>CheckLeftCurlyBrace()
		return l:goUpOneLineAndIndentCursor
	elseif <SID>CheckLeftSquareBracket()
		if has_key(l:languagesWithSimicolonAfterSquareBracket, l:current_filetype)
			if l:languagesWithSimicolonAfterSquareBracket[l:current_filetype]
				return l:putSimicolonAtEndOfLineThenGoUpOneLineAndIndentCursor
			else
				return l:goUpOneLineAndIndentCursor
			endif
		else
			return l:goUpOneLineAndIndentCursor
		endif
	else
		return l:regularEnter
	endif
endfunction

" Return true if your cursor is at column 0 or if the character behind your cursor
" is a { character
function! s:CheckLeftCurlyBrace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  ==# '{'
endfunction

" Return true if your cursor is at column 0 or if the character behind your cursor
" is a [ character
function! s:CheckLeftSquareBracket() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  ==# '['
endfunction

" function! CreateMarkdownHeader()
" 	normal! mmyyp0vg_r=`m
" endfunction

" function! CenterHeader()
" 	execute "normal! 0r 45i \<esc>g_45i \<esc>"
" 	normal! g_r l
" 	execute "set expandtab"
" 	execute "center"
" 	normal! 81|r"ld$
" 	normal! 0r"
" 	execute "set noexpandtab"
" endfunction
