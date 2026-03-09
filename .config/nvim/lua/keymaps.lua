-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Remap visual block mode because Ctrl-V pastes in WSL
vim.keymap.set('n', '<leader>V', '<C-v>', { desc = '[V]isual block mode' })

-- Explorer keymaps
vim.keymap.set('n', '<leader>ee', vim.cmd.Ex, { desc = 'Open netrw file [E]xplorer' })
vim.keymap.set('n', '<leader>ek', '<cmd>Hex!<CR>', { desc = 'Open netrw file [E]xplorer to the top'})
vim.keymap.set('n', '<leader>ej', '<cmd>Hex<CR>', { desc = 'Open netrw file [E]xplorer to the bottom'})
vim.keymap.set('n', '<leader>eh', '<cmd>Vex!<CR>', { desc = 'Open netrw file [E]xplorer to the left'})
vim.keymap.set('n', '<leader>el', '<cmd>Vex<CR>', { desc = 'Open netrw file [E]xplorer to the right'})

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlighting' })

-- Diagnostic keymaps
vim.keymap.set('n', 'dp', vim.diagnostic.goto_prev, { desc = 'Go to [D]iagnostic [P]revious message' })
vim.keymap.set('n', 'dn', vim.diagnostic.goto_next, { desc = 'Go to [D]iagnostic [N]ext message' })
vim.keymap.set('n', 'de', vim.diagnostic.open_float, { desc = 'Show [D]iagnostic [E]rror messages' })
vim.keymap.set('n', 'dq', vim.diagnostic.setloclist, { desc = 'Open [D]iagnostic [Q]uickfix list' })

-- Allows you to move block of text when highlighted using J and K
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move highlighted text downwards' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move highlighted text upwards' })

-- Auto place cursor in centre of screen when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = 'Places cursor in the centre of screen when scrolling' })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = 'Places cursor in the centre of screen when scrolling' })

-- Use <leader>y to copy to OS clipboard
vim.keymap.set("n", "<leader>y", "\"+y", { desc = 'Copy text to OS clipboard' })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = 'Copy text to OS clipboard' })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = 'Copy lines to OS clipboard' })

-- Replace all instances of word cursor is on
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[R]eplace all instances of word cursor is on' })

-- Buffer keymaps
vim.keymap.set('n', '<leader>ls', ':ls<CR>:b<space>', { desc = '[L]ist and select from open buffers' })
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = '[B]uffer [D]elete' })
vim.keymap.set('n', '<leader>bl', ':b#<CR>', { desc = 'Switch to [L]ast opened [B]uffer' })

-- Window keymaps
vim.keymap.set('n', '<leader>wh', '<C-w>h', { desc = 'Select [Window] to the left' })
vim.keymap.set('n', '<leader>wj', '<C-w>j', { desc = 'Select [Window] to the top' })
vim.keymap.set('n', '<leader>wk', '<C-w>k', { desc = 'Select [Window] to the bottom' })
vim.keymap.set('n', '<leader>wl', '<C-w>l', { desc = 'Select [Window] to the right '})
