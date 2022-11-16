local lsp_config = require("lspconfig")
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local lang_servers = {
    "bashls",
    "cssls",
    "html",
    "jsonls",
    "sumneko_lua",
    "pyright",
    "rust_analyzer",
    "svelte",
    "tailwindcss",
    "terraformls",
    "tsserver",
}
for _, lsp in ipairs(lang_servers) do
    lsp_config[lsp].setup {
        on_attach = on_attach,
        flags = lsp_flags,
    }
end

-- Setup mason
require("mason").setup()

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
