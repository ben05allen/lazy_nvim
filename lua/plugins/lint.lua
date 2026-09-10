return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        sql = { "sqlfluff" },
      },
      linters = {
        sqlfluff = {
          condition = function(ctx)
            return ctx.filename:match("%.sql$") ~= nil
          end,
        },
      },
    },
  },
}
