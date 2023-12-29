--[[

=======================
GV Neovim Configuration
=======================

Author: Guido Vicino <mail@guidovicino.com>
Last update: 2023-12-28

Based on:
- https://github.com/dam9000/kickstart-modular.nvim
- https://www.youtube.com/watch?v=w7i4amO_zaE

]]
--

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure plugins ]]
require 'lazy-plugins'

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Configure Telescope ]]
-- (fuzzy finder)
require 'telescope-setup'

-- [[ Configure Treesitter ]]
-- (syntax parser for highlighting)
require 'treesitter-setup'

-- [[ Configure LSP ]]
-- (Language Server Protocol)
require 'lsp-setup'

-- [[ Configure nvim-cmp ]]
-- (completion)
require 'cmp-setup'

-- [[ Configure Harpoon ]]
require 'harpoon-setup'

-- [[ Configure Undo-tree ]]
require 'neo-tree-setup'

-- [[ Configure Undo-tree ]]
require 'undo-tree-setup'

-- [[ Configure Dashboard]]
require 'nvim-dashboard-setup'

-- [[ Configure Obsidian]]
require 'obsidian-setup'

-- [[ Configure Colorscheme ]]
require 'gruvbox-setup'
-- require 'rose-pine-setup'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
