# Configuracion de Neovim minimalista

* solo 20 plugins.

* telescope, lsp, mason, treesiter, arbol de archivos, etc.

## dependencias

* [Ripgrep](https://github.com/BurntSushi/ripgrep) para el live_grep del telescope.
* [fd](https://github.com/sharkdp/fd) para mejor perfomance del telescope.
* [Lazygit](https://github.com/jesseduffield/lazygit) para el plugin homónimo.

## keybinds

\<leader\>: space

* Basicos:
    - '\<leader\>q' para salir, '\<leader\>qq' para salir sin guardar
    - '\<leader\>s' y '\<leader\>w' para guardar/escribir
* Control de ventanas:
    - '\<leader\>ww' para dividir ventana
    - '\<leader\>wc'+letra para elegir ventana entre abiertas
* Telescope:
    - '\<leader\>ff' -> abrir telescope como fuzzy finder
    - '\<leader\>fb' -> abrir telescope en lista de buffers
    - '\<leader\>fg' -> abrir telescope como grep
    - '\<leader\>fd' -> abrir telescope con diagnosticos de LSP
    - '\<leader\>ft' -> abrir treesitter en telescope
    - '\<leader\>fg' -> abrir telescope con estatus del repositorio (git)
    - '\<leader\>fh' -> abrir ayuda en telescope
    - '\<Esc\>' para salir
* Portapapeles:
    - (VISUAL) '\<leader\>c' -> copiar seleccionado
    - (NORMAL) '\<leader\>v' -> pegar portapapeles
* Undotree: '\<leader\>u' -> abrir undotree
    - '\<Up\>'y '\<Down\>' para navegar
* Lazygit_ '\<leader\>'lg -> abrir lazygit
    - Luego los atajos propios de lazygit
* Oil: '-' para abrir oil
    - '-' dentro de oil para subir un directorio
