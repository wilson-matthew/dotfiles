return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'marko-cerovac/material.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    opts = { custom_highlights = { SpellBad = { undercurl = true, sp = 'red' } } },
    init = function()
      -- Load the colorscheme here.
      -- Set background to dark to use theme's dark mode
      -- vim.g.material_style = 'darker'
      -- vim.g.material_style = 'lighter'
      -- vim.g.material_style = 'oceanic'
      -- vim.g.material_style = 'palenight'
      vim.g.material_style = 'deep ocean'
      vim.cmd.colorscheme 'material'

    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
