-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Keybinding for moving to the next item in the quickfix list
vim.api.nvim_set_keymap('n', '<M-n>', ':cnext<CR>', {
  noremap = true, -- Prevents recursion
  silent = true -- Executes quietly without command echo
})

-- Keybinding for moving to the previous item in the quickfix list
vim.api.nvim_set_keymap('n', '<M-p>', ':cprev<CR>', {
  noremap = true,
  silent = true
})
