require('lspconfig').pyright.setup(config())

require('lspconfig').rust_analyzer.setup(config())

require("lspconfig").tsserver.setup(config())

require("lspconfig").svelte.setup(config())

-- Setup nvim-cmp.
local cmp = require("cmp")

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
    },
})
