vim.opt.foldmethod = "indent"
vim.opt.colorcolumn = "80"

vim.g.r_indent_align_args = 0

vim.keymap.set('n', '<leader>et', ":RSend devtools::test()<CR>")
vim.keymap.set('n', '<leader>ec', ":RSend devtools::check()<CR>")
