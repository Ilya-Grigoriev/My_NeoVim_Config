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
3. In nvim, start installing plugins with by entering the following command:

```vim
:Lazy
```

4. Restart nvim.
5. All done!

# Java

- Supposedly, that `eclipse.jdt.ls` is installed in your home folder.
- If you're using Java, then go to `ftplugin/java.lua` file and change `{your_username}` to your username in OS.

# LSP

- To install LSP, enter `:Mason` in nvim and go to `LSP` section.

# Python

- To using Python virtualenvs, added interpreter path in `lua/other_modules/_python_venv.lua`. [Read about Python integration in nvim](https://neovim.io/doc/user/provider.html#g%3Apython3_host_prog)

# Presenterm

- Keymaps for [presenterm](https://github.com/mfontanini/presenterm) are located in `lua/other_modules/mappings/\_presenterm.lua' file.
