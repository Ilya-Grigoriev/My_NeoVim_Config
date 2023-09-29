![Linter](https://github.com/ilya-grigoriev/nvim/actions/workflows/linter.yaml/badge.svg)

# Config

- This is my NeoVim config, which I will update sometimes.

# Installation

1. Cloning this repo to the root folder of the computer:

```bash
git clone git@github.com:ilya-grigoriev/nvim.git
cd nvim
```

2. You should have installed the following components:

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

3. Launch NeoVim (just enter "nvim" in console).
4. In NeoVim, start installing the required plugins with by entering the following command:

```vim
:PackerSync
```

5. Restart NeoVim.
6. All done!

# Java
- If you're using Java, then go to `ftplugin/java.lua` file and change `{your_username}` to your username in OS.

# LSP
- To install LSP, enter `:Mason` in nvim and go to `LSP` section.
