# helium-neovim

Helium ASM language support for Neovim

Features:

- Syntax highligthing (with `nvim-treesitter`)
- Code folding (with `nvim-treesitter`)

## Installation

This plugin requires [Neovim](https://neovim.io) version 0.5 or higher.

Install [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) along side this plugin using your favorite plugin manager.

### vim-plug

```vim
call plug#begin()
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'https://github.com/pml68/helium-neovim.git'
call plug#end()

lua <<EOF
local hasConfigs, configs = pcall(require, "nvim-treesitter.configs")
if hasConfigs then
  configs.setup {
    ensure_installed = "helium",
    highlight = {
      enable = true,
    },
  }
end
EOF
```

### packer.nvim

```lua
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'https://github.com/pml68/helium-neovim', after = "nvim-treesitter", run = ":TSInstall! helium"}
end)

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
  }
}
```

### lazy.nvim

```lua
{
  "nvim-treesitter/nvim-treesitter",
  build = function(_)
    vim.cmd("TSUpdate")
  end,
},
{
  "https://github.com/pml68/helium-neovim",
  lazy = true,
  event = "BufReadPre *.hsm",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  build = function()
    vim.cmd("TSInstall! helium")
  end,
}
```
