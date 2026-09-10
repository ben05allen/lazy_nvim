return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      default_format_opts = {
        timeout_ms = 30000,
      },
      formatters_by_ft = {
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
