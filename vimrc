"Usamos Vim, no VI
set nocompatible
filetype off "requerido por Vundle!!!


"Vundle!!!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle administra Vundle!!! WTF!
Plugin 'VundleVim/Vundle.vim'


"""""""""" Plugins """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""" Elixir
Plugin 'elixir-lang/vim-elixir'

"""""""""""""""""""""""""" HTML/CSS/Templates
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'KohPoll/vim-less'
Plugin 'slim-template/vim-slim'
Plugin 'mustache/vim-mustache-handlebars'

"""""""""""""""""""""""""" JS
"Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/yajs.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mxw/vim-jsx'

"""""""""""""""""""""""""" Ruby/Rails
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'vim-ruby/vim-ruby'

"""""""""""""""""""""""""" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

"""""""""""""""""""""""""" Herramientas
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-endwise'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'ap/vim-css-color'
Plugin 'mileszs/ack.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Yggdroot/indentLine'
Plugin 'Shougo/neocomplete.vim'
Plugin 'w0rp/ale'

"""""""""""""""""""""""""" Esquema de colores
Plugin 'nanotech/jellybeans.vim'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'w0ng/vim-hybrid'

call vundle#end()
"""""""""""" Fin de config de Vundle y requerimientos de plugins """"""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on "requerido por Vundle!!!


"soporte de 256 colores en vim
set t_Co=256

"Color del fondo oscuro
"set background=dark


"activacion resaltado de sintaxys
syntax on

"""""""""""""""""""""""""""""""""""" Visual """""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Esquema de colores
"let g:jellybeans_use_term_background_color = 0  "solo para jellybeans
"let g:jellybeans_use_term_italics = 1
colorscheme jellybeans

"enumerar las lineas
set number

"Muestra la linea de status
"teniendo Vim-Airline muestra la generada po dicho plugin
set laststatus=2

set showcmd "Muestra comandos incompletos en esquina inferior derecha

"Esconde el modo actual ya que Vim-Airline tambien lo muestra.
set noshowmode

"Resalta la linea donde esta el cursorline"
"set cursorline

set colorcolumn=80 "marca el ancho maximo que deberia tener una linea

set nowrap "NO corta las lineas largas para evitar scroll horizontal

set showbreak=↪ "marca para indicar un quiebre de lineas largas

set list "muestra tabulaciones, fin de linea, espacios, etc.
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:⋅,nbsp:.

set wildmode=list:longest,list:full "mostrar opciones de completado de comandos
set wildmenu "lista seleccionable de autocompletado de comandos.

"resaltado de syntaxys sincronizado desde el inicio
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync fromstart
augroup END
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""" backups """"""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswapfile "desactiva los archivos Swap
set nobackup   "no se crean respaldos permanentes cuando se guarda un archivo
set nowritebackup "no se crean respaldos temporales al guardar archivos
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""" Identacion """""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"sangrado con espacios y no con tabulacion.
set expandtab

"la tecla TAB inserta 2 espacios de sangrado
set softtabstop=2

"sangrado automatico al saltar la linea de 2 espacios
set shiftwidth=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""" Comportamientos y mapeos """""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapea <leader> a la tecla ,  (coma)
let mapleader = "\\"

"Cortar, Copiar y Pegar con las teclas ,d ,y y ,p
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"arregla identacion presionando la tecla F7
map <F7> mzgg=G`z<CR>

"presiona espacio para borrar la busqueda resaltada
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" divide el buffer en forma horizontal y vertical respectivamente
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"navegacion entre los buffers
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

""cerrar un buffer
"noremap <leader>c :bd<CR>
noremap <leader>c :bp<bar>sp<bar>bn<bar>bd<CR>

""limpia las busquedas resaltadas
nnoremap <silent> <leader><space> :noh<cr>

"" Vmap para mantener el Visual Mode despues de presionar shift > y <
vmap < <gv
vmap > >gv

"""" Atajos utiles, cuando te equivocas escribiendo alguno de estos comandos
"ejemplo :w para guardar, si escribes rapido posiblemente escribas :W
cnoreabbrev W w
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev Q q
cnoreabbrev Qall qall

"permitir la tecla retroceso en modo insertar para eliminar.
set backspace=indent,eol,start

"Recarga automaticamente el buffer cuando un archivo ha tenido algun cambio
set autoread

"Esconde buffers cuando no se muestra
"tambien permite los undo/redo luego de cambiar de buffer
set hidden

"muchos historial de deshacer
set undolevels=1000

" Vim recuerda la posicion del cursor al reabrir un archivo.
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"#############################################################################"
"""""""""""""""""""""" Config varias """"""""""""""""""""""""""""""""""""""""""
"" busquedas
set ignorecase "busquedas no distinguen mayusculas y minusculas
set incsearch   "Muestra la concordancia de una busqueda mientras escribes.
set hlsearch    "Resalta las busquedas

""""""""""""""""Configs especiales para para Gvim """""""""""""""""""""""""""""
if has('gui_running')
  set lines=40  "Abre Gvim con 40 lineas de alto
  set guioptions-=T "Elimina la barra de herramientas en Gvim

  "Letra parchada para compatibilidad con Vim-Airline
  set guifont=Inconsolata\ Medium\ 12
endif


"""""""""""""""""""""""""""" Codificacion """""""""""""""""""""""""""""""""""""
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"##############################################################################"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""" Config para plugins """"""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" Vim-go """""""""""""""""""""""""""""""""""""""""""""
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_fail_silently = 1
autocmd FileType go setlocal noet ts=8 sw=8 sts=8 ""indentado especial para Go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""Vim-airline """"""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"integracion con syntastic
let g:airline#extensions#syntastic#enabled = 1
"integracion con fugitive
let g:airline#extensions#branch#enabled = 1
"Theme para airline
let g:airline_theme="powerlineish"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" Vim-ruby """""""""""""""""""""""""""""""""""""""""""
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" Syntastic """"""""""""""""""""""""""""""""""""""""""
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=2
let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_wq = 0

"let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_ruby_checkers = ['rubocop']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" Ctrlp.vim """"""""""""""""""""""""""""""""""""""""""
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|tox)$'
let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching = 0
let g:ctrlp_open_new_file = 'r'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" Vim-fugitive """""""""""""""""""""""""""""""""""""""
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" NERDtree """""""""""""""""""""""""""""""""""""""""""
"autocmd vimenter * NERDTree
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 40
"resalta el archivo actual en el arbol
nnoremap <silent> <F2> :NERDTreeFind<CR>
"muestra/esconde NERDTree.
noremap <F3> :NERDTreeToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" Tabular """"""""""""""""""""""""""""""""""""""""""""
nmap <Leader>a :Tabularize /
vmap <Leader>a :Tabularize /
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" Tagbar """""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [  'p:package', 'i:imports:1', 'c:constants', 'v:variables',
        \ 't:types',  'n:interfaces', 'w:fields', 'e:embedded', 'm:methods',
        \ 'r:constructor', 'f:functions' ],
    \ 'sro' : '.',
    \ 'kind2scope' : { 't' : 'ctype', 'n' : 'ntype' },
    \ 'scope2kind' : { 'ctype' : 't', 'ntype' : 'n' },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""" IdentLine """""""""""""""""""""""""""""""""""""""
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" Vim-snipmate  """""""""""""""""""""""""""""""""""""
" cambia la ejecucion del snippet de TAB a ss para no tener conflicto con YCM
"imap ss <esc>a<Plug>snipMateNextOrTrigger
"smap ss <Plug>snipMateNextOrTrigger
let g:snipMate = { 'snippet_version' : 1 }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" NeoComplete  """""""""""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""" A.L.E  """""""""""""""""""""""""""""""""""""""
let g:ale_completion_enabled = 1
"let g:ale_elixir_elixir_ls_release = '/home/angel/LSP/elixir-ls/rel'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
