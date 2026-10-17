return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        color_overrides = {
          mocha = {
            text = "#cdd6f4",     -- Softened white text
            subtext1 = "#bac2de", -- Muted gray-blue subtext
            subtext0 = "#a6adc8", -- Even more matte secondary text
            overlay2 = "#9399b2", -- Softened UI borders/labels
          },
        },
      })

      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
