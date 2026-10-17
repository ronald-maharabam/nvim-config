return {
  "nvim-telescope/telescope.nvim",
  branch = "master",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  keys = {
    { "<leader>sh", function() require("telescope.builtin").help_tags() end, desc = "[S]earch [H]elp" },
    { "<leader>sk", function() require("telescope.builtin").keymaps() end, desc = "[S]earch [K]eymaps" },
    { "<leader>sf", function() require("telescope.builtin").find_files() end, desc = "[S]earch [F]iles" },
    { "<leader>ss", function() require("telescope.builtin").builtin() end, desc = "[S]earch [S]elect Telescope" },
    { "<leader>sw", function() require("telescope.builtin").grep_string() end, mode = { "n", "v" }, desc = "[S]earch current [W]ord" },
    { "<leader>sg", function() require("telescope.builtin").live_grep() end, desc = "[S]earch by [G]rep" },
    { "<leader>sd", function() require("telescope.builtin").diagnostics() end, desc = "[S]earch [D]iagnostics" },
    { "<leader>sr", function() require("telescope.builtin").resume() end, desc = "[S]earch [R]esume" },
    { "<leader>s.", function() require("telescope.builtin").oldfiles() end, desc = '[S]earch Recent Files ("." for repeat)' },
    { "<leader>sc", function() require("telescope.builtin").commands() end, desc = "[S]earch [C]ommands" },
    { "<leader><leader>", function() require("telescope.builtin").buffers() end, desc = "[ ] Find existing buffers" },
    {
      "<leader>/",
      function()
        require("telescope.builtin").current_buffer_fuzzy_find(
          require("telescope.themes").get_dropdown({
            winblend = 0,
            previewer = false,
          })
        )
      end,
      desc = "[/] Fuzzily search in current buffer",
    },
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        preview = {
          treesitter = false,
        },
        mappings = {
          i = {
            ["<C-u>"] = false,
            ["<C-d>"] = false,
          },
        },
      },
    })

    pcall(telescope.load_extension, "fzf")
  end,
}
