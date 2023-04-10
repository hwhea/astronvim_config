return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "lua" },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = function(_, opts)
      require("nvim-treesitter/nvim-treesitter-context").setup {
        enabled = true,
      }
    end,
  },
}
