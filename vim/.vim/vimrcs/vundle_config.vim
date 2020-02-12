""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle - Vim Bundle Plugin Manager
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; 
"                     append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo;
"                     append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins;
"                     append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Motion plugins
Plugin 'https://github.com/easymotion/vim-easymotion.git'
Plugin 'https://github.com/yuttie/comfortable-motion.vim.git'

" Color schemes
Plugin 'https://github.com/ErichDonGubler/vim-sublime-monokai.git'
Plugin 'octol/vim-cpp-enhanced-highlight'

" Bottom Status line
Plugin 'itchyny/lightline.vim'

" Most Recent Used files plugin
"Plugin 'https://github.com/yegappan/mru.git'

" Textual snippets (auto-complete)
"Plugin 'https://github.com/garbas/vim-snipmate.git'

" NERD Tree
Plugin 'https://github.com/vim-scripts/The-NERD-tree.git'

" Tmux seamless navigation
Plugin 'christoomey/vim-tmux-navigator'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Do not add anything below this point
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on

