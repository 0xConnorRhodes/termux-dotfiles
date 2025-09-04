-- Map double <Esc> in normal mode to write and quit (like ZZ)
vim.keymap.set("n", "<Esc>", "<cmd>x<CR>", { noremap = true, silent = true })

