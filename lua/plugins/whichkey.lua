return {
	"folke/which-key.nvim",
	event = "VeryLazy", -- Loads only after the editor has fully drawn
	opts = {
		preset = "modern", -- Clean UI design ('classic', 'modern', or 'helix')
		delay = 100, -- Time in ms to wait before the popup shows up
		spec = {
			{ "<leader>s", group = "[S]earch" },
		},
	},
}
