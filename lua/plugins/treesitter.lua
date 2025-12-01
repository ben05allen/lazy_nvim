-- recommended settings for treesitter using lazy.nvim
return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'main',
    lazy = false,
    build = ":TSUpdate"
  }
}
