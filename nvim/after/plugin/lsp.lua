-- setup mason
require("mason").setup()

-- setup lspconfig 
local lsp_config = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
lsp_config["lua_ls"].setup {
    capabilities = capabilities,
    settings = { Lua = { diagnostics = { globals = { "vim" } } } },
}
lsp_config["tailwindcss"].setup {
    capabilities = capabilities,
    filetypes = { "css", "postcss", "sass", "scss", "vue", "svelte", "templ" },
    init_options = {
        userLanguages = {
            templ = "html"
        }
    }
}
local lang_servers = {
    "marksman",
    "bashls",
    "cssls",
    "html",
    "jsonls",
    "pyright",
    "terraformls",
    "tflint",
    "tsserver",
    "dockerls",
    "gopls",
}
for _, lsp in ipairs(lang_servers) do
    lsp_config[lsp].setup { capabilities = capabilities }
end

-- no error messages in text, signs on left instead
local signs = {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

vim.diagnostic.config {
    virtual_text = false,
    signs = {
        active = signs
    },
    float = {
        border = "rounded"
    }
}
