return {
	"nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },

	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- LUA
				null_ls.builtins.formatting.stylua,

				-- JavaScript
				null_ls.builtins.formatting.prettier,
				require("none-ls.diagnostics.eslint_d"),
			},
		})

		vim.keymap.set("n", "ff", vim.lsp.buf.format, {})
	end,
}
