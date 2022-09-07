"""" Esto es Vim, no vi
if &compatible
  set nocompatible " Desactivamos compatibilidad con vi
endif

"""" Usamos vim-plug para administrar los plugins
"""" asi que aca lo instalamos en caso de que no este instalado.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Inicio de config de vim-plug y requerimientos de plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Cargamos los plugins desde el directorio que los contiene
call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins a instalar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Esquema de colores
Plug 'nanotech/jellybeans.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'


"""" Snippets
Plug 'SirVer/ultisnips' "Engine
Plug 'honza/vim-snippets' "Snippets repo


"""" Lenguajes/Frameworks
" Ruby/Rails
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" Elixir
Plug 'elixir-lang/vim-elixir'

" Javascript
Plug 'jelera/vim-javascript-syntax'


"""" Herramientas
"NERDTree navegador de carpetas y archivos
Plug 'preservim/nerdtree'

" vim-airline barra de estado e informacion
Plug 'vim-airline/vim-airline'

" vim-fugitive soporte Git en Vim y complemento para vim-airline
Plug 'tpope/vim-fugitive'

" neomake Verificador de sintaxis para multiples lenguajes
Plug 'neomake/neomake'

" neoformat formateador de codigo para multiples lenguajes
Plug 'sbdchd/neoformat'

" coc.nvim Autocompletado de codigo tipo VSCode
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-commentary comentar/descomentar codigo
Plug 'tpope/vim-commentary'

" vim-surround rodear texto con ", ', (), [], {}, etc
Plug 'tpope/vim-surround'

" identLine muestra lineas verticales para cada nivel de identacion
Plug 'Yggdroot/indentLine'

" delimitMate Cierra automaticamente comillas, parentesis, etc
Plug 'Raimondi/delimitMate'


"""Tentativos""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Los siguientes son plugins que me gustaria colocar, pero que todavia
" estoy evaluando si realmente los necesito o evaluando su configuracion
"
"Plug 'godlygeek/tabular' " Ordena/alinea texto
"Plug 'itchyny/lightline.vim' " Reemplazo de vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#end()
" This call automatically executes:
"    filetype plugin indent on and syntax enable.
" You can revert the settings after the call.
"    filetype indent off, syntax off, etc.

"Desactivacion de deteccion de tipo de archivo
"Ayuda a forzar que los plug-ins se carguen correctamente
"una vez se active de nuevo mas abajo
filetype off

"activacion resaltado de sintaxys
syntax on

" Activa
" - la deteccion de tipo de archivo,
" - la carga de archivos de plugins de acuerdo al tipo de archivo detectado
" - la carga de archivos de identado de acuerdo al tipo de archivo detectado
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fin de config de vim-plug y requerimientos de plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ajustes Visual
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Esquema de colores en uso y su configuracion
""Color del fondo oscuro
set background=dark

"Mejora en los colores, necesario en algunos colorscheme
if has('termguicolors')
  set termguicolors
endif

" Jellybeans
"let g:jellybeans_use_term_background_color = 0  "solo para jellybeans
"let g:jellybeans_use_term_italics = 1
colorscheme jellybeans

" Gruvbox
" let g:gruvbox_material_background = 'hard' "Options: 'hard', 'medium'(default), 'soft'
" let g:gruvbox_material_better_performance = 1
" let g:gruvbox_material_foreground = 'original' "Options 'material'(default), 'mix', 'original'
" colorscheme gruvbox-material
" let g:airline_theme = 'gruvbox_material'

" Sonokai
" let g:sonokai_style = 'andromeda'  "Options: 'default', 'atlantis', 'andromeda', 'shusia', 'maia', `'espresso'
" let g:sonokai_better_performance = 1
" colorscheme sonokai
" let g:airline_theme = 'sonokai'


"marca el ancho maximo que deberia tener una linea
set colorcolumn=80                                       " Esta linea de aca =>

"soporte de 256 colores en vim
set t_Co=256

"enumerar las lineas
set number

"Resalta la linea donde esta el cursorline"
set cursorline

"Especifica cuando la ultima ventana tendra una linea de status
"0 = nunca
"1 = si hay la menos dos ventanas
"2 = siempre
set laststatus=2

"Muestra comandos incompletos en esquina inferior derecha
set showcmd

"Marca para visualizar el quiebre de lineas largas
set showbreak=↪   

"muestra tabulaciones, fin de linea, espacios, etc.
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:⋅,nbsp:.

"mostrar opciones de completado de comandos, al presionar Tab
"mientras se escribe un comando
set wildmode=list:longest,list:full

"lista seleccionable de autocompletado de comandos, al presionar Tab
"mientras se escribe un comando
set wildmenu

"resaltado de syntaxys sincronizado
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

"Resalta las palabras que concuerdan con una busqueda
set hlsearch

"NO hacer salto de lineas largas
"set nowrap "ACTIVADO. las lineas seran mas altas si excede ancho de ventana

"Esconde la visualizacion del modo en el que se esta
"set noshowmode


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ajustes Basicos
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Codificacion

"Ajuste de codificacion de caracteres en Vim a UTF-8
set encoding=utf-8

"Ajuste de codificacion de caracteres para el archivo en el buffer
set fileencoding=utf-8

"Lista de tipos de codificacion de caracteres que vim puede usar
set fileencodings=utf-8


"""" Identacion
" Podria sobre-escribirse o cambiar mas abajo dependiendo del archivo

"Numero de espacios que cuenta un <Tab> en el archivo.
set tabstop=4
"
"Numero de espacios que equivaldrian a un <Tab>
set softtabstop=0

"sangrado automatico al saltar la linea de 4 espacios
set shiftwidth=4

"sangrado con espacios y no con tabulacion <Tab>.
set expandtab


"""" Busqueda

"Muestra la concordancia de una busqueda mientras escribes.
set incsearch

"Busquedas no distinguen mayusculas y minusculas
set ignorecase

"""" Buffers

"Permite buffers escondidos
"tambien permite los undo/redo luego de cambiar de buffer
set hidden

"""" Utiles
"Indica una terminal de conexion rapida,
"mejora la suavides del re-dibujado cuando hay multiples ventanas
"y la terminal no soporta regiones con scroll.
"basicamente mejora el scrolling
set ttyfast

"Vim recuerda la posicion del cursor al reabrir un archivo.
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"Recarga automaticamente el buffer cuando un archivo ha tenido algun cambio
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Comportamiento y mapeos
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"permitir la tecla retroceso en modo insertar para eliminar.
set backspace=indent,eol,start

"Mapea <leader> a la tecla \  (backslash)
let mapleader = "\\"

"Copiar, Cortar y Pegar con las teclas \y \d y \pP
"Copiado en modo Visual con \y
vmap <Leader>y "+y
"Cortar en modo Visual con \d
vmap <Leader>d "+d
"Pegado en modo Normal con \p o \P
nmap <Leader>p "+p
nmap <Leader>P "+P
"Pegado en modo Visual con \p o \P
vmap <Leader>p "+p
vmap <Leader>P "+P

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

"Vmap para mantener el Visual Mode despues de presionar shift > y <
vmap < <gv
vmap > >gv
"Util cuando se mueve bloques de texto seleccionado con shift > o <
"en modo visual y no quieres que se salga del modo automaticamente

" Limpia las busquedas resaltadas con \space
nnoremap <silent> <leader><space> :noh<cr>

"Moverse entre Buffers
"buffer anterior \z o \q
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
"buffer siguiente \x o \w
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"Elimina el buffer actual, sin eliminar la ventana
noremap <leader>c :bp<bar>sp<bar>bn<bar>bd<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ajustes por lenguaje
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" Golang
"identacion
augroup vimrc-golang
  autocmd!
  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
augroup END

"""" HTML
"identacion
augroup vimrc-html
  autocmd!
  autocmd Filetype html setlocal ts=2 sw=2 expandtab
augroup END

"""" Javascript
"identacion
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript setl tabstop=4|setl shiftwidth=4|setl expandtab softtabstop=4
augroup END

"""" Ruby
"Identacion
augroup vimrc-ruby
  autocmd!
  autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
  autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ajustes por Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" NERDTree
" Abre/Cierra NERDTree con F3
nnoremap <silent> <F3> :NERDTreeToggle<CR>

"Inicia  NERDTree cuando Vim es iniciado sin especificar un archivo"
augroup vimrc-nerdtree-autostart
  autocmd!
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
augroup END

" Tamano de ventana de NERDTreee
let g:NERDTreeWinSize = 40


"""" Neomake
"Verifica sintaxis cuando se guarda el archivo (no delay)
call neomake#configure#automake('w')

"Abre automaticamente ventana con listado de errores/warnings
let g:neomake_open_list = 2


""" Neoformat
"Ejecuta Neoformat con \fm
nnoremap <leader>fm :Neoformat<CR>


"""" Coc.nvim
"Extenciones a instalar en caso de que no esten instaladas
let g:coc_global_extensions = ['coc-solargraph', 'coc-css', 'coc-elixir', 'coc-html', 'coc-json', 'coc-tsserver']

"Tecla Enter confirma la sugerencia seleccionada
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"Corrige los colores de sugerencia resaltada.
"NO NECESARIO para todos los esquemas de colores
hi CocMenuSel ctermbg=237 guibg=#13354A

"Ruta de NodeJS. Tecnicamente no es necesario, pero podria ser util
"let g:coc_node_path = '/home/angel/.asdf/shims/node'


"""" vim-ruby
"Resalta operadores
let ruby_operators        = 1

"Resalta pseudo operadores ., &., ::, *, **, &, <, << and ->.
let ruby_pseudo_operators = 1


"""" vim-airline
"Muestra los buffers en la parte superior, si solo hay un tab abierto
let g:airline#extensions#tabline#enabled = 1

"Utiliza simbolos airline si se esta usando una fuente powerline
let g:airline_powerline_fonts = 1

"Muestra rama Git, Requiere vim-fugitive
let g:airline#extensions#branch#enabled = 1

"Define lista vacia de simbolos airline si no existe
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"Define simbolos unicode
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

"Define simbolos powerline si soporte de fuente powerline desactivada
if get(g:, 'airline_powerline_fonts', 0)
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
  let g:airline_symbols.maxlinenr= ''
endif
