if vim.fn.has('wsl') == 1 then
  vim.g.clipboard = {
    name = 'wsl_clipboard',
    copy = {
      ['+'] = 'clip.exe',
      ['*'] = 'clip.exe',
    },
    paste = {
      ['+'] = [[powershell.exe -NoProfile -Command "[Console]::Out.Write((Get-Clipboard -Raw) -replace \"\r\n\", \"\n\")"]],
      ['*'] = [[powershell.exe -NoProfile -Command "[Console]::Out.Write((Get-Clipboard -Raw) -replace \"\r\n\", \"\n\")"]],
    },
    cache_enabled = 0,
  }
end

-- Sync Neovim's default registers with the system clipboard
vim.opt.clipboard = 'unnamedplus'
