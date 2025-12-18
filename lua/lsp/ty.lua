vim.lsp.config("ty", {
    cmd = { "uv", "run", "ty", "server" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", ".git" }
  })

vim.lsp.enable("ty")
