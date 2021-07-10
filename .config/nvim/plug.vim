 if has("nvim")
   let g:plug_home = stdpath('data') . '/plugged' 
 endif

" You may need to :LspStart or :LspRestart and :TSInstall cpp (maybe LspSaga?) 
call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'

if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  " after :PlugInstall the above plugin, run :TSInstall cpp:w
  " and check with :TSInstallInfo
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'hoob3rt/lualine.nvim'
  
  

  " Debugger Plugins
  Plug 'puremourning/vimspector'
  Plug 'szw/vim-maximizer'
  " Tag bar
  Plug 'preservim/tagbar'

  " Convenience for commenting things in and out
  Plug 'scrooloose/nerdcommenter'
  Plug 'theprimeagen/vim-be-good'
  Plug 'gruvbox-community/gruvbox'

  " Plug 'SirVer/ultisnips'
  " Plug 'honza/vim-snippets'
  " Plug 'ervandew/supertab'
  Plug 'jiangmiao/auto-pairs'

  " prettier
  " Plug 'sbdchd/neoformat'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " airline
  " file expl
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
"   Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'scrooloose/nerdtree-project-plugin'
  Plug 'PhilRunninger/nerdtree-buffer-ops'
  Plug 'PhilRunninger/nerdtree-visual-selection'

  Plug 'onsails/lspkind-nvim'
  Plug 'stevearc/aerial.nvim'
  
  Plug 'vuciv/vim-bujo'

endif


call plug#end()
