-- Map double <Esc> in normal mode to write and quit (like ZZ)
vim.keymap.set("n", "<Esc>", "<cmd>x<CR>", { noremap = true, silent = true })

-- Automatically start in insert mode on startup
vim.api.nvim_create_autocmd('VimEnter', {
  pattern = '*',
  command = 'startinsert',
})
