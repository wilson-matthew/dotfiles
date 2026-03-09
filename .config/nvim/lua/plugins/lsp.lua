return {
    "neovim/nvim-lspconfig", -- automatically adds langauge server configs; a collection of LSP server configs for the nvim lsp client
    dependencies = {
        "mason-org/mason.nvim", -- install different language servers
        "mason-org/mason-lspconfig.nvim", -- bridges mason with nvim-lspconfig; makes it easier to use them together
        "hrsh7th/cmp-nvim-lsp", -- provides lsp autocompletion; nvim-cmp source for nvim's built in language server client
        "hrsh7th/cmp-buffer", -- source for text in buffer
        "hrsh7th/cmp-path", -- source for system file paths
        "hrsh7th/nvim-cmp", -- completion engine allowing external completion sources
        "L3MON4D3/LuaSnip", -- snippets
        "saadparwaiz1/cmp_luasnip", -- makes luasnip work as a source for nvim-cmp
    },

    config = function()
        local cmp = require('cmp')

        local cmp_lsp = require("cmp_nvim_lsp") -- imports cmp_nvim_lsp plugin

        -- used to enable autocompletion (assign to every lsp server config)
        local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities())

        require("mason").setup()

        require("mason-lspconfig").setup({
            ensure_installed = {
                "bashls",
                "golangci_lint_ls",
                "gopls",
                "lua_ls",
                "terraformls",
            },
            handlers = {
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities
                    }
                end,
            }
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select), -- previous suggestion
                ['<C-j>'] = cmp.mapping.select_next_item(cmp_select), -- next suggestion
                -- ['<Tab>'] = cmp.mapping.select_next_item(cmp_select), -- next suggestion
                ['<C-b>'] = cmp.mapping.scroll_docs(-4), -- work out good keybinding
                ['<C-f>'] = cmp.mapping.scroll_docs(4), -- work out good keybinding
                ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- use suggestion
                -- ['<CR>'] = cmp.mapping.confirm({ select = true }), -- use suggestion
                ['<C-e>'] = cmp.mapping.abort(), -- close completion window
                ['<C-Space>'] = cmp.mapping.complete(), -- show completion suggestions
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' }, -- lsp
                { name = 'luasnip' }, -- snippets
                { name = 'buffer' }, -- text within current buffer
                { name = 'path' }, -- file paths
            })
        })

        vim.diagnostic.config({
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            },
        })
    end
}
