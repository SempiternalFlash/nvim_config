return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                PATH = "prepend",
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
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
                    "yamlls", -- YAML
                    "zls", -- Zig
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.omnisharp.setup({ capabilities = capabilities })
            lspconfig.clangd.setup({ capabilities = capabilities })
            lspconfig.cssls.setup({ capabilities = capabilities })
            lspconfig.html.setup({ capabilities = capabilities })
            lspconfig.jsonls.setup({ capabilities = capabilities })
            lspconfig.tsserver.setup({ capabilities = capabilities })
            lspconfig.ltex.setup({ capabilities = capabilities })
            lspconfig.remark_ls.setup({ capabilities = capabilities })
            lspconfig.spectral.setup({ capabilities = capabilities })
            lspconfig.rust_analyzer.setup({ capabilities = capabilities })
            lspconfig.yamlls.setup({ capabilities = capabilities })
            lspconfig.zls.setup({ capabilities = capabilities })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
            vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
        end,
    },
}
