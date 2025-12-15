vim.pack.add({
    {
      src = "https://github.com/nvim-treesitter/nvim-treesitter.git",
      version = "master"
    }
})

require("nvim-treesitter.configs").setup({
  ensure_installed = {
      "lua",
      "python",
      "html",
      "javascript"
    },
    auto_install = false,
    highlight = {
      enable = true
    },
    indent = {
      enable = true
    }
})
