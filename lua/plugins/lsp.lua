return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- 1. Register 'ty' with lspconfig if it doesn't already exist
      local configs = require("lspconfig.configs")
      if not configs.ty then
        configs.ty = {
          default_config = {
            cmd = { "ty", "server" },
            filetypes = { "python" },
            root_dir = require("lspconfig.util").root_pattern(
              "pyproject.toml",
              "setup.py",
              "setup.cfg",
              "requirements.txt",
              ".git"
            ),
            single_file_support = true,
          },
        }
      end

      -- 2. Add 'ty' to the list of active servers in LazyVim
      opts.servers.ty = opts.servers.ty or {}

      -- 3. Disable pyright and basedpyright
      opts.servers.pyright = { enabled = false }
      opts.servers.basedpyright = { enabled = false }
    end,
  },
}
