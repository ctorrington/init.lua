vim.lsp.config("ty", {
    cmd = { "ty server" },
    filetypes = { "python" },
    root_markers = { "pyproject.toml", ".git" }
  })

vim.lsp.enable("ty")
