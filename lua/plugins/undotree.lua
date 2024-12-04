
return {
  -- adding undotree so I can make loads of mistakes
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    end
  }
}
