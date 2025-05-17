require "nvchad.options"
local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
vim.g.markdown_fenced_languages = {
  "ts=typescript",
}
vim.opt.guicursor = "i-ci-ve:ver30"
vim.opt.number = true
