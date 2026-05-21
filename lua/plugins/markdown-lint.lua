-- Disable markdownlint diagnostics for markdown notes.
-- The LazyVim markdown extra enables markdownlint-cli2, which is very noisy
-- on prose/notes (MD013 line length, MD041 first-line heading, etc.).
return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      markdown = {},
      ["markdown.mdx"] = {},
    },
  },
}
