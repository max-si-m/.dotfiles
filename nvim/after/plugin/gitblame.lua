local gitblame = require('gitblame').setup {
  --Note how the `gitblame_` prefix is omitted in `setup`
  enabled = false,
  gitblame_use_blame_commit_file_urls = true
}

vim.keymap.set("n", "<leader>gbt",':GitBlameToggle<CR>')
vim.keymap.set("n", "<leader>gbc",':GitBlameOpenCommitURL<CR>')
