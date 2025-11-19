-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Always use spaces for YAML
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "yaml", "yml" },
  callback = function()
    vim.opt_local.expandtab = true -- convert <Tab> into spaces
    vim.opt_local.shiftwidth = 2 -- number of spaces per indent
    vim.opt_local.softtabstop = 2 -- number of spaces per <Tab>
    vim.opt_local.tabstop = 2 -- how many spaces a <Tab> looks like
  end,
})
