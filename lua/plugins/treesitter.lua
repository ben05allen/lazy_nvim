-- recommended settings for treesitter using lazy.nvim
return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate"
  }
}
