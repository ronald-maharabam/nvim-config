return {
  "stevearc/oil.nvim",
  opts = {},
  config = function()
    require("oil").setup({
      view_options = {
        show_hidden = true,
      },
    })
    vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open file explorer" })
  end,
}
