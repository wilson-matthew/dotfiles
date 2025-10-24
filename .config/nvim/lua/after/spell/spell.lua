vim.opt.spell = true

vim.api.nvim_create_autocmd({"VimEnter", "ColorScheme"}, {
    group = vim.api.nvim_create_augroup('Color', {}),
    pattern = "*",
    callback = function ()
        vim.api.nvim_set_hl(0, 'spell', { sp = 'blue', fg = 'blue' })
        vim.cmd([[hi clear SpellBad]])
    end
})
