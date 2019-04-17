" Vim configuration file
" TODO: autocompletion
" TODO: status bar, file name, git branch, mode, lsp server on...
" TODO: make a grep shortcut

" TODO: check that 
set t_Co=256
syntax enable
" colorscheme darcula

" PATHOGEN
execute pathogen#infect()

" TODO: check that too
filetype plugin indent on
" syntax on

" GO-VIM
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_fields = 1


" RUST
set hidden
let g:racer_cmd = "/home/auntidjin/.cargo/bin/racer"

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)


" OPTIONS
" search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" highlight cursor's line
set cursorline 

" Display all matching files when we tab complete
set wildmenu

" ctrlp.vim fuzzy file, buffer, mru, tag, etc... finder
" Don't understand why you have to add that to the runtimepath thoug
set runtimepath^=~/.vim/bundle/ctrlp.vim

" set line numers on
set number relativenumber

" highlights matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
"
" use indentation of previous line
set autoindent
" use smart indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4    " tab width is 4 spaces
set shiftwidth=4 " indent with 4 spaces
set expandtab    " expand tab to spaces

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Always display the status line, even if only one window is displayeds<Left>
" install python-languageet-server
"
set laststatus=2
 
" highlights search result
set hlsearch
set incsearch

" automatically read a file if it has been changed
set autoread


" LSP SERVERS
" go
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

" SPECIAL FILES
" json syntax highlight
autocmd BufNewFile,BufRead *.json* set ft=javascript
" avro syntax highlight
autocmd BufNewFile,BufRead *.avsc set ft=javascript


" Splits open at the bottom or on the right
set splitbelow splitright
set noequalalways

" NERDTree for browsing, opens when vim opens
" autocmd vimenter * NERDTree

" unicode arrows dont render, possible solutions:
" https://github.com/scrooloose/nerdtree/issues/108 
" with this one we dont render the arrows
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '~'


" KEY MAPPINGS
" window movement mapping
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
 
" fugitive key bindings
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gl :Gpull<CR>
nnoremap <leader>gp :Gpush<CR>

" toggles NERDTree
nnoremap <silent> <leader>ls :NERDTreeToggle<CR> :set equalalways<CR>

" toggles number and relativenumber
nnoremap <silent> <leader>N :setlocal number! relativenumber!<CR>

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <leader><space> :nohlsearch<Bar>:echo<CR>

" LSP
nnoremap <silent> <A-d> :LspDefinition<CR>
nnoremap <silent> <A-r> :LspReferences<CR>
nnoremap <F2> :LspRename<CR>
nnoremap <silent> <A-a> :LspWorkspaceSymbol<CR>
nnoremap <silent> <A-l> :LspDocumentSymbol<CR>
nnoremap <silent> <A-x> :LspDocumentDiagnostics<CR>

" Hack to remap Alt key escaped by gnome terminal
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endwhile
set timeout ttimeoutlen=50
