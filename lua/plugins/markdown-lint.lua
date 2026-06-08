-- Disable markdownlint diagnostics for markdown notes.
-- The LazyVim markdown extra enables markdownlint-cli2, which is very noisy
-- on prose/notes (MD013 line length, MD041 first-line heading, etc.).
-- It registers through TWO paths, so both must be neutralized:
--   1. nvim-lint        (linters_by_ft.markdown)
--   2. none-ls/null-ls  (diagnostics source markdownlint-cli2)
-- marksman and obsidian-ls remain active, so genuine errors (broken links,
-- bad references) still surface.
return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = {},
        ["markdown.mdx"] = {},
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
      opts.sources = vim.tbl_filter(function(source)
        return source.name ~= "markdownlint-cli2" and source.name ~= "markdownlint"
      end, opts.sources or {})
    end,
  },
}
