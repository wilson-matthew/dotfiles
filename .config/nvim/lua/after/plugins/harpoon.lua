local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "[A]dd file to harpoon" })
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon menu" })

vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Go to harpoon file [1]" })
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Go to harpoon file [2]" })
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Go to harpoon file [3]" })
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Go to harpoon file [4]" })
vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Go to harpoon file [5]" })

-- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-q>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-w>", function() harpoon:list():next() end)
