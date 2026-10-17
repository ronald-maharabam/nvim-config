return {
	"tpope/vim-fugitive",
	cmd = "Git",
	keys = {
		{ "<leader>gs", "<cmd>Git<cr>", desc = "[G]it [S]tatus" },
		{ "<leader>gb", "<cmd>Git blame<cr>", desc = "[G]it [B]lame" },
		{ "<leader>gl", "<cmd>Git log<cr>", desc = "[G]it [L]og" },
		{ "<leader>gD", "<cmd>Git diff<cr>", desc = "[G]it [D]iff" },
	},
}
