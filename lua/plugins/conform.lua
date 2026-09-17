return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      default_format_opts = {
        timeout_ms = 30000,
      },
      formatters_by_ft = {
        -- Runs ruff check --select=I001 --fix (sort imports), then ruff format.
        -- Takes precedence over the ruff LSP formatter because LazyVim formats
        -- via conform first when the ft has conform formatters.
        python = { "ruff_organize_imports", "ruff_format" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        objc = { "clang_format" },
        cuda = { "clang_format" },
        sql = { "sqlfluff" },
      },
      formatters = {
        sqlfluff = {
          require_cwd = false,
          exit_codes = { 0, 1 },
          condition = function(_, ctx)
            local fname = ctx.filename or vim.api.nvim_buf_get_name(ctx.buf or 0)
            return fname:match("%.sql$") ~= nil
          end,
        },
        clang_format = {
          prepend_args = { "--style=file", "--fallback-style=LLVM" },
        },
      },
    },
  },
}
