-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --
  --  This is equivalent to:
  --    require('Comment').setup({})

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file lua/path/name.lua

  require 'plugins/autopairs',

  require 'plugins/barbecue',

  -- require 'plugins/github-nvim-theme',

  require 'plugins/gitsigns',

  -- require 'plugins/gruvbox',

  require 'plugins/harpoon',

  -- require 'plugins/indent-line', VS code-sytle indent lines; currently disabled because makes things nosier so prefer off if not needed

  -- require 'plugins/kanagawa',

  require 'plugins/lsp',

  require 'plugins/lualine',

  require 'plugins/markview',

  require 'plugins/material',

  -- require 'plugins/nightfox',

  -- require 'plugins/onedark',

  -- require 'plugins/onedarkpro',

  -- require 'plugins/render-markdown',

  require 'plugins/telescope',

  -- require 'plugins/tokyonight',

  require 'plugins/treesitter',

  -- require 'plugins/vim-nightfly-colors',

  require 'plugins/vim-go',

  require 'plugins/vim-sleuth',

  require 'plugins/vim-terraform',

  -- require 'plugins/vscode',

}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
