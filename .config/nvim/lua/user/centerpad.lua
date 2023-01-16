-- local status_ok, toggleterm = pcall(require, "centerpad")
-- if not status_ok then
-- 	return
-- end

vim.api.nvim_set_keymap('n', '<leader>z', '<cmd>Centerpad<cr>', { silent = true, noremap = true })
