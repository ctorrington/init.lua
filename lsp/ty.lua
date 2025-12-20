-- Completion window config.
vim.cmd[[set completeopt+=menuone,popup,noinsert,preview]]

-- Enable LSP when attached.
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local client = assert(
        vim.lsp.get_client_by_id(args.data.client_id)
      )
      vim.lsp.completion.enable(
        true,
        client.id,
        args.buff,
        {
          autotrigger = false
        }
      )
    end,
})


-- Handle LSP completion when any character is enterd in insert mode.
vim.api.nvim_create_autocmd("InsertCharPre", {
    callback = function(args)
      -- Exit early if no LSP in current buffer.
      if next(vim.lsp.get_clients({ bufnr = 0 })) == nill then
        return
      end

      -- Exit early if white space is entered.
      if vim.v.char:match("%s") then
        return
      end

      -- Trigger LSP completion.
      vim.lsp.completion.get()
    end,
})

-- Start language server.
return {
  cmd = { "ty", "server" },
  root_markers = { "pyproject.toml", ".git" },
  filetypes = { "python" }
}
