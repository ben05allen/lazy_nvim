return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig", "mfussenegger/nvim-dap-python", "nvim-telescope/telescope.nvim"
  },
  event = 'VeryLazy',
  keys = {
    { "<leader>vs", "<cmd>VenvSelect<cr>" },
    { "<leader>vc", "<cmd>VenvSlectCached<cr>" },
  },
}
