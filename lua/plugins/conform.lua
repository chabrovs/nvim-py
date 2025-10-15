return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		local conform = require("conform")
		conform.setup({
			default_format_opts = {
				timeout_ms = 3000,
				async = false,
			},
			formatters = {
				eslint_d = {
					command = "eslint_d",
					args = { "--stdin", "--stdin-filename", "$FILENAME", "--fix-to-stdout" },
					exit_codes = { 0, 1 }, -- eslint_d returns 1 if linting errors are fixed
					env = {
						-- optionally set NODE_PATH if needed
					},
				},
			},
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				rust = { "rustfmt", lsp_format = "fallback" },
				javascript = { "prettier", "eslint_d" },
				javascriptreact = { "prettier", "eslint_d" },

				-- TypeScript/TSX files
				typescript = { "prettier", "eslint_d" },
				typescriptreact = { "prettier", "eslint_d" },

				html = { "prettier" },
				css = { "prettier" },
				json = { "prettier" },
				htmldjango = { "djlint" },
			},
		})
		vim.keymap.set({ "n", "v" }, "<leader>f", conform.format, { desc = "Format source code" })
	end,
}
