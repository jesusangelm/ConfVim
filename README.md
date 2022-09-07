# Mi Configuracion Vim + vim-plug

## Instalacion: simplemente clona el repositorio

```bash
$ git clone https://github.com/jesusangelm/ConfVim.git ~/.vim
```

**Instalacion inicial**

Simplemente abre Vim y espera a que se descargue vim-plug
```bash
$ vim
```

**Instala los plugins:**

Abra `vim` y ejecute `:PlugInstall`

**Fuentes parchadas para Powerline**

Clone el repositorio de fuentes para Powerline.
```bash
git clone https://github.com/Lokaltog/powerline-fonts.git
```
e instale sus fuentes favoritas

# Plugins:

## Plugin Manager
  * 'junegunn/vim-plug'

## Esquema de colores
  * 'nanotech/jellybeans.vim' (En uso)
  * 'sainnhe/gruvbox-material'
  * 'sainnhe/sonokai'

##  Snippets
  * 'SirVer/ultisnips'
  * 'honza/vim-snippets'

## Herramientas

  * 'preservim/nerdtree'
  * 'vim-airline/vim-airline'
  * 'tpope/vim-fugitive'
  * 'neomake/neomake'
  * 'sbdchd/neoformat'
  * 'neoclide/coc.nvim'
  * 'tpope/vim-commentary'
  * 'tpope/vim-surround'
  * 'Yggdroot/indentLine'

## Lenguajes/Frameworks

### Ruby/Rails
  * 'vim-ruby/vim-ruby'
  * 'tpope/vim-rails'

###  Elixir
  * 'elixir-lang/vim-elixir'

### Javascript
  * 'jelera/vim-javascript-syntax'

# Mapeos de teclas personalizados:
Mapeos creados especificamente para esta configuracion

## Tecla Leader
 * `<leader>` esta mapeado a la tecla "\\" (barra inclinada).
 * `\espacio` limpia el texto resaltado producto de una busqueda


## Copiar/Cortar/Pegar
Copiar, Cortar y Pegar con las teclas \y \d y \pP

  * `\y` para copiar en modo Visual
  * `\d` para Cortar en modo Visual
  * `\p` o `\P` para Pegar en modo Normal
  * `\p` o `\P` para pegar en modo Visual


## Buffers
  * `\q` o `\z` muestra el buffer anterior
  * `\w` o `\x` muestra el buffer siguiente
  * `\c` elimina el buffer actual, sin elminar  la ventana


## Plugins

### NERDTree
 * Presiona `F3` para mostrar/esconder NERDTree.

### neoformat
  * Presiona `\fm` para ejecutar neoformat


# Uso de plugins:
Instrucciones basicas de como usar algunos plugins agregados

## vim-plug
  * `:PluginInstall` para instalar los plugins no instalados
  * `:PluginClean` para eliminar los plugins no listados en el .vimrc

## neomake
Neomake ejecutara el verificador de sintaxis autoamticamente al guardar el buffer

Para que neomake funcione correctamente, es necesario que este instalado al menos
un verificador de sintaxis o linter para el tipo de archivo en edicion.
Algunos ejemplos (verificar documentacion de neomake para mas detalles):

Ruby:
  * rubocop
  * rubylint

javascript:
  * eslint
  * jshint

Elixir:
  * credo
  * elixirc


## neoformat
Neoformat se encarga de formatear correctamente el codigo y se ejecuta con `\fm`

Al igual que Neomaker, Neoformat requiere de verificadores de sintaxis o linters
para funcionar correctamente. Generalmente los mismos que funcionan para Neomaker
funcionaran para Neoformat, pero de igual modo, aca hay algunos ejemplos:

Ruby:
  * rubocop
  * rufo
  * ruby-beautify

javascript:
  * js-beautify
  * prettier

Elixir:
  * mix format

## vim-commentary
Para comentar/descomentar codigo

En modo normal y sobre una linea de codigo, presiona `gcc` y se comentara esa linea.
Este comando funciona como un toggler, por lo que pulsandolo nuevamente en una linea
ya comentada, procedera a descomentarla.

En modo visual y con un bloque de texto seleccionado, pulsa `gc` y comentara ese
bloque de texto. de la misma forma, se puede descomentar ese mismo bloque.

En modo normal pulsa `gcgc` para descomentar lineas cercanas que ya esten comentadas,
sin tener que seleccionarlas o tener el cursor en dicha linea.

## vim-surround
Para agregar/eliminar "", '', (), [], {} y mas, al rededor de texto

### cambiar
Presiona `cs"'` dentro del texto `"prueba"` para cambiarlo a `'prueba'`.

Puedes hacer lo mismo pero ahora con etiquetas HTML, por ejemplos:
Presiona `cs'<p>` dentro del texto `'prueba'` para cambiarlo a `<p>prueba</p>`

### eliminar
Presiona `ds'` para eliminar las comillas simples del texto `'prueba'`
