require("md.set")
require("md.remap")

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

local augroup = vim.api.nvim_create_augroup
local ThePrimeagenGroup = augroup('ThePrimeagen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

--- show yanked text
autocmd('TextYankPost', {
  group = yank_group,
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40,
    })
  end,
})

--- Trim trailing whitespaces
autocmd({"BufWritePre"}, {
  group = ThePrimeagenGroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})
