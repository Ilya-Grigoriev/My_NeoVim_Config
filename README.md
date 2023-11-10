# Config

- This is my NeoVim config, which I will update sometimes.

# Required

- [neovim](https://github.com/neovim/neovim) **`>= 0.8`**
- [ctags](https://github.com/universal-ctags/ctags)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [wl-clipboard](https://github.com/bugaevc/wl-clipboard) (on Linux)
- [packer](https://github.com/wbthomason/packer.nvim)
- [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [pynvim](https://github.com/neovim/pynvim) (for using NeoVim with
  Python)
- [jdtls](https://github.com/eclipse/eclipse.jdt.ls) (for using LSP for
  java)
- [pre-commit](https://github.com/pre-commit/pre-commit)
- [tree-sitter-cli](https://github.com/tree-sitter/tree-sitter/tree/master/cli)
  (recommend installation via `cargo`)

# Installation

1. Cloning this repo to the root folder of the computer:

```bash
git clone git@github.com:ilya-grigoriev/nvim.git
cd nvim
```

2. Open `init.lua` using nvim.
3. All done!

# Config structure

- `colors`. This folder for customization file. Require files from [`plugin/set_colors.lua`](https://github.com/ilya-grigoriev/nvim/blob/main/plugin/set_colors.lua)
- `ftplugin`. This folder for filetype settings. [Read more about folder `ftplugin`](https://neovim.io/doc/user/usr_41.html#write-filetype-plugin).
- `lua`. This folder for lua plugins.
- `plugin`. This folder for plugins which are started automatically.
- [Read more about folders in nvim config](https://neovim.io/doc/user/options.html#'runtimepath').

# Java

- Supposedly, that `eclipse.jdt.ls` is installed in your home folder.
- If you're using Java, then go to [`ftplugin/java.lua`](https://github.com/ilya-grigoriev/nvim/blob/main/ftplugin/java.lua) file and change `{your_username}` to your username in OS.

# LSP

- To install LSP, enter `:Mason` in nvim and go to `LSP` section.

# Python

- To using Python virtualenvs, added interpreter path in [`ftplugin/python.lua`](https://github.com/ilya-grigoriev/nvim/blob/main/ftplugin/python.lua). [Read about Python integration in nvim](https://neovim.io/doc/user/provider.html#g%3Apython3_host_prog)

# Presenterm

- Keymaps for [presenterm](https://github.com/mfontanini/presenterm) are located in [`plugin/\_presenterm.lua`](https://github.com/ilya-grigoriev/nvim/blob/main/plugin/_presenterm.lua) file.

# Keymaps

- If you want to check keymaps of this config, just enter `tk`.
