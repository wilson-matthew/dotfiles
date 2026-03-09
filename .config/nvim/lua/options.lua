-- [[ Setting options ]]
-- See `:help vim.opt`
--  For more options, you can see `:help option-list`

-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Make line numbers and relative line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Enable break indent
-- Wrapped lines continue visually indented - so preserves horizontal blocks of text
vim.opt.breakindent = true

vim.opt.autoindent = true
vim.opt.smartindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Add a rounded border to windows (e.g. autocomplete suggestions)
vim.opt.winborder = "rounded"

-- netrw config
vim.g.netrw_banner = 0 -- disables banner
vim.cmd([[
  augroup netrw
    autocmd!
    autocmd FileType netrw setlocal bufhidden=wipe
  augroup end
]])
-- open netrw on startup if no arguments supplied
vim.cmd([[
  augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * if argc() == 0 | Explore! | endif
  augroup END
]])
