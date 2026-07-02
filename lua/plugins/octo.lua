-- GitHub PR/issue client. Launched from gh-dash's `O` keybinding via
-- `nvim -c 'Octo pr edit <n>'`, and directly with <leader>op / <leader>oi.
return {
  "pwntester/octo.nvim",
  cmd = "Octo",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "folke/snacks.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    picker = "snacks", -- matches LazyVim's default picker
    enable_builtin = true,
  },
  keys = {
    { "<leader>op", "<cmd>Octo pr list<cr>", desc = "Octo: list PRs" },
    { "<leader>oi", "<cmd>Octo issue list<cr>", desc = "Octo: list issues" },
  },
}
