-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*", -- or {"*.Dockerfile", "*.lua", "*.py", ...} to limit it
  group = vim.api.nvim_create_augroup("trim_trailing", { clear = true }),
  callback = function()
    -- Skip markdown (trailing spaces are line breaks)
    if vim.bo.filetype == "markdown" then return end
    -- Preserve cursor & search
    local save_cursor = vim.fn.getpos(".")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
  end,
  desc = "Trim trailing whitespace on save",
})
