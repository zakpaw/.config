-- setup mason
require("mason").setup()

-- setup lspconfig 
local lsp_config = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
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
    "tflint",
    "tsserver",
    "dockerls"
}
for _, lsp in ipairs(lang_servers) do
    if lsp == "sumneko_lua" then
        lsp_config[lsp].setup {
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    }
                }
            },
        }
    else
        lsp_config[lsp].setup { capabilities = capabilities }
    end
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
