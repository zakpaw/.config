local conf = {
    on_attach = on_attach,
    flags = lsp_flags,
}

require('lspconfig').pyright.setup(conf)

require('lspconfig').rust_analyzer.setup(conf)

require("lspconfig").tsserver.setup(conf)

require("lspconfig").svelte.setup(conf)

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
