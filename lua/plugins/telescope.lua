-- change some telescope options and a keymap to browse plugin files
return  {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    keys = {
      {
        '<leader>sB',
        ':Telescope file_browser path=%:p:h=%:p:h<cr>',
        desc = 'Browse Files',
      },
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  }
}
