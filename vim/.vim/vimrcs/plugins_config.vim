"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:comfortable_motion_friction = 80.0
let g:comfortable_motion_air_drag = 2.0

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['gitbranch', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': '|', 'right': ' ' }
      \ }

""""""""""""""""""""""""""""""
" => CScope
""""""""""""""""""""""""""""""
" See ~/.vim/plugin/cscope_maps.vim

""""""""""""""""""""""""""""""
" => Seamless Navigation
""""""""""""""""""""""""""""""
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
map <leader>nn :NERDTreeToggle %<cr> 

""""""""""""""""""""""""""""""
" => YouCompleteMe
""""""""""""""""""""""""""""""
" Enable Doc pop-up
set updatetime=3000
let g:ycm_auto_hover=''
nmap <leader>D <plug>(YCMHover)
hi Pmenu ctermfg=252 ctermbg=237 cterm=none

" Hide window preview
set completeopt-=preview

" Use local clangd
let g:ycm_clangd_binary_path='clangd'

" Navivate through errors with :ln and :lp
let g:ycm_always_populate_location_list = 1

" Map symbol search shortchuts
nmap <leader>yfw <Plug>(YCMFindSymbolInWorkspace)
nmap <leader>yfd <Plug>(YCMFindSymbolInDocument)

""""""""""""""""""""""""""""""
" => Fuzzy Finder
""""""""""""""""""""""""""""""
nmap <C-P> :GFiles<CR>

""""""""""""""""""""""""""""""
" => C++ Syntax Highlight
""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1

" Load .clang-format file, if it exists
let g:clang_format#detect_style_file = 1

