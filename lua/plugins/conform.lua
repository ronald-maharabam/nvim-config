return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			desc = "Format buffer",
		},
	},
	config = function()
		-- Pick prettier if the project has a prettier config, else eslint_d
		local function js_formatters(bufnr)
			local has_prettier = vim.fs.find({
				".prettierrc",
				".prettierrc.json",
				".prettierrc.js",
				".prettierrc.cjs",
				".prettierrc.yaml",
				".prettierrc.yml",
				"prettier.config.js",
				"prettier.config.cjs",
			}, {
				upward = true,
				path = vim.api.nvim_buf_get_name(bufnr),
			})[1]

			if has_prettier then
				return { "prettierd", "prettier", stop_after_first = true }
			end
			return { "eslint_d" }
		end

		require("conform").setup({
			-- format_on_save = {
			--   timeout_ms = 500,
			--   lsp_fallback = true,
			-- },
			formatters_by_ft = {
				typescript = js_formatters,
				typescriptreact = js_formatters,
				javascript = js_formatters,
				javascriptreact = js_formatters,
				json = { "prettierd" },
				css = { "prettierd" },
				markdown = { "prettierd" },
				python = { "black" },
				c = { "clang_format" },
				cpp = { "clang_format" },
				lua = { "stylua" },
				nix = { "nixpkgs_fmt" },
				rust = { "rustfmt" },
				go = { "gofmt" },
			},
		})
	end,
}
