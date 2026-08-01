
return {
  -- adding undotree so I can make loads of mistakes
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>U', vim.cmd.UndotreeToggle)
    end
  }
}
