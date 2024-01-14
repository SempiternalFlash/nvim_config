return
{
    {
        "williamboman/mason.nvim",
        config =
            function()
                require("mason").setup()
            end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config =
            function()
                require("mason-lspconfig").setup(
                {
                    ensure_installed = 
                    { 
                        "lua_ls", -- Lua
                        "omnisharp", -- C#
                        "clangd", -- C, C++
                        "cssls", -- CSS
                        "html", -- HTML
                        "jsonls", -- JSON
                        "tsserver", -- JS, TS
                        "ltex", -- LaTeX
                        "remark_ls", -- Markdown
                        "spectral", -- OpenAPI
                        "rust_analyzer", -- Rust
                        "yamlls" -- YAML 
                    }
                })
            end
    },
    {
        "neovim/nvim-lspconfig",
        config = 
            function()
                local lspconfig = require("lspconfig")
                lspconfig.lua_ls.setup({})
                lspconfig.omnisharp.setup({})
                lspconfig.clangd.setup({})
                lspconfig.cssls.setup({})
                lspconfig.html.setup({})
                lspconfig.jsonls.setup({})
                lspconfig.tsserver.setup({})
                lspconfig.ltex.setup({})
                lspconfig.remark_ls.setup({})
                lspconfig.spectral.setup({})
                lspconfig.rust_analyzer.setup({})
                lspconfig.yamlls.setup({})
                
                vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
                vim.keymap.set({"n", "v"}, "<space>ca", vim.lsp.buf.code_action, {})
                vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
                vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            end
    }

}
