" Vim configuration file
" TODO: status bar, file name, git branch, mode, lsp server on...
" TODO: install ag as grep command and make a 'usefull' shortcut to re-edit
" search term under cursor and just when you need to search for something
" TODO: NEOMAKE

execute pathogen#infect()


" ------ BEAUTY ------ "

set t_Co=16
filetype plugin indent on
" syntax hightlight
if !exists("g:syntax_on")
    syntax enable
endif

" color scheme
set background=dark
colorscheme nnkd

" split char
set fillchars=vert:│

" special highlightings
" json syntax highlight
autocmd BufNewFile,BufRead *.json* set ft=javascript
" avro syntax highlight
autocmd BufNewFile,BufRead *.avsc set ft=javascript


" ------ PLUGGINS ------ "

" syntastic: syntax checker
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 3
let g:syntastic_enable_highlighting = 1

" TODO: install it
" go-vim
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_interfaces = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_build_constraints = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_function_calls = 1
" let g:go_highlight_fields = 1

" vim-racer: uses Racer for Rust code complettion and navigation
set hidden 
let g:racer_cmd = "/home/auntidjin/.cargo/bin/racer"

" ctrlp.vim: full path fuzzy finder
set runtimepath^=~/.vim/bundle/ctrlp.vim

" NERDTree: file system explorer
" NERDTree opens when vim opens
autocmd vimenter * NERDTree
" NERDTree arrows
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'


" ------ OPTIONS ------ "

" searches down into subfolders
" provides tab-completion for all file-related tasks
set path+=**
" displays all matching files when we tab complete
set wildmenu

" highlights cursor's line
set cursorline 

" sets line numbers on and relative numbers
set number relativenumber

" highlights matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
 
" uses indentation of previous line and smartindent (indent after {...)
set autoindent smartindent
" configures tabwidth and insert spaces instead of tabs
set tabstop=4    " tab width is 4 spaces
set shiftwidth=4 " indent with 4 spaces
set expandtab    " expand tab to spaces

" sets the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" highlights search result and enableds incremental results
set hlsearch incsearch

" automatically reads a file if it has been changed
set autoread

" splits open at the bottom or on the right
set splitbelow splitright
set noequalalways


" ------ STATUS LINE ------ "

" always displays the status line, even if only one window is displayed
set laststatus=2
 

" ------ LSP SERVERS ------ "

" " go
" if executable('go-langserver')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'go-langserver',
"         \ 'cmd': {server_info->['go-langserver', '-gocodecompletion']},
"         \ 'whitelist': ['go'],
"         \ })
" endif
" 
" " flow
" function! s:get_node_bin(name, global_fallback)
"     let l:nodemodules_dir = lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), 'node_modules')
"     if !empty(nodemodules_dir)
"         let l:bin_path = l:nodemodules_dir.'.bin/'.a:name
"         if executable(l:bin_path)
"             return l:bin_path
"         endif
"     endif
"     if a:global_fallback && executable(a:name)
"         return a:name
"     endif
"     return ''
" endfunction
" 
" let g:flow_bin = s:get_node_bin('flow', 0)
" if !empty(g:flow_bin)
"     autocmd User lsp_setup call lsp#register_server({
"         \ 'name': 'flow',
"         \ 'cmd': {server_info->[g:flow_bin] + ['lsp']},
"         \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), '.flowconfig'))},
"         \ 'whitelist': ['javascript', 'javascript.jsx'],
"         \ })
" endif

" TODO: configure that
" let g:eslint_bin = s:get_node_bin('eslint', 1)
" if executable(g:eslint_bin)
"     let g:syntastic_javascript_checkers = ['eslint']
"     let g:syntastic_javascript_eslint_exec = g:eslint_bin
" endif

" python
" TODO: needs to be fixed, because pip is not working (pip install
" python-language-server)
" if executable('pyls')
"     autocmd User lsp_setup call lsp#register_server({
"         \ 'name': 'pyls',
"         \ 'cmd': {server_info->['pyls']},
"         \ 'whitelist': ['python'],
"         \ 'workspace_config': {'pyls': {'plugins': {'pycodestyle': {'maxLineLength': 99}}}}
"         \ })
" endif

" flow


" ------ KEY MAPPINGS ------ "

" window movement 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-Left> <C-w><Left>
nnoremap <C-Down> <C-w><Down>
nnoremap <C-Up> <C-w><Up>
nnoremap <C-Right> <C-w><Right>
" resizing window
nnoremap <S-h> <C-w>>
nnoremap <S-j> <C-w>-
nnoremap <S-k> <C-w>+
nnoremap <S-l> <C-w><
nnoremap <S-Left> <C-w>>
nnoremap <S-Down> <C-w>-
nnoremap <S-Up> <C-w>+
nnoremap <S-Right> <C-w><

" uses <space> as leader
let g:mapleader = "\<space>"
 
" fugitive
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gl :Gpull<CR>
nnoremap <leader>gp :Gpush<CR>

" NERDTree
" toggles NERDTree
nnoremap <silent> <leader>ls :NERDTreeToggle<CR> :set equalalways<CR>
" replaces default NERDTree vsplit and hslpit to match CtrlP mappings
let NERDTreeMapOpenSplit='<C-H>'
let NERDTreeMapOpenVSplit='<C-V>'

" TODO: I don't remember this thing
" opens quick fix window result in a horizontal split
autocmd! FileType qf nnoremap <buffer> <C-v> <C-w><Enter><C-w>L                                                                                                                                             

" custom helper toggles
" toggles number and relativenumber
nnoremap <silent> <leader>N :setlocal number! relativenumber!<CR>
" press <space> <space> to turn off highlighting and clear any message already displayed.
nnoremap <leader><space> :nohlsearch<Bar>:echo<CR>
" press <space> w to toggle line wrapping
nnoremap <leader>w :set wrap!<CR>

" LSP
nnoremap <silent> <A-d> :LspDefinition<CR>
nnoremap <silent> <A-r> :LspReferences<CR>
nnoremap <F2> :LspRename<CR>
nnoremap <silent> <A-a> :LspWorkspaceSymbol<CR>
nnoremap <silent> <A-l> :LspDocumentSymbol<CR>
nnoremap <silent> <A-x> :LspDocumentDiagnostics<CR>

" vim-racer 
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>rd <Plug>(rust-doc)


" hack to remap Alt key escaped by gnome terminal
" let c='a'
" while c <= 'z'
"   exec "set <A-".c.">=\e".c
"   exec "imap \e".c." <A-".c.">"
"   let c = nr2char(1+char2nr(c))
" endwhile
" set timeout ttimeoutlen=50
