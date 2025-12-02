return {
  "nvim-treesitter/nvim-treesitter",#
  branch = 'main',
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "python", "lua", "javascript", "html", "markdown", "bash" },
    highlight = { enable = true }
  }
}
