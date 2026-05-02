return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
        objc = { "clang_format" },
        cuda = { "clang_format" },
        -- proto = { "clang_format" },  -- if you want
      },
      -- Optional: extra arguments for clang-format
      formatters = {
        clang_format = {
          prepend_args = { "--style=file", "--fallback-style=LLVM" },
          -- "--style=file" makes it automatically find .clang-format in parent dirs
        },
      },
    },
  },
}
