return 
{ 
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = 
        function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                ensure_installed = 
                { 
                    "lua", 
                    "javascript", 
                    "c_sharp", 
                    "cpp", 
                    "css", 
                    "csv", 
                    "glsl", 
                    "hlsl", 
                    "html", 
                    "json", 
                    "matlab", 
                    "norg",
                    "python", 
                    "regex", 
                    "rust", 
                    "sql", 
                    "tsx", 
                    "typescript", 
                    "xml", 
                    "yaml" 
                },
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
}
