local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<S-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<S-l>", "<C-w>l", opts)

-- Close window
keymap("n", "<C-w>", ":close<CR>", opts)

-- Close buffer
--[[ keymap("n", "<C-b>", "<S-b>", opts) ]]
keymap("n", "<C-b>", ":Bdelete<CR>", opts)

-- Quit vim
keymap("n", "<leader>qa", ":qa<CR>", opts)
keymap("n", "<leader>qq", ":qa!<CR>", opts)
keymap("n", "<c-q>", ":q<CR>", opts)

-- Vertical split
keymap("n", "<C-v>", "<C-w>v", opts)
keymap("n", "<C-c>l", "<C-w>v<C-w>l:close<CR>", opts)
keymap("n", "<C-c>h", "<C-w>v<C-w>h<C-w>h:close<CR><C-w>l", opts)

-- Resize with arrows
keymap("n", "<A-Up>", ":resize -2<CR>", opts)
keymap("n", "<A-Down>", ":resize +2<CR>", opts)
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Fold code
keymap("n", "<leader>m", "zc", opts)
keymap("n", "<leader>o", "zO", opts)

-- Navigate buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":bprevious<CR>", opts)

-- Move quickly up and down
keymap("n", "J", "10j", opts)
keymap("n", "K", "10k", opts)

-- Scroll up and down
keymap("n", "<leader>j", "10<C-e>", opts)
keymap("n", "<leader>k", "10<C-y>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)

-- Easier line navigation
keymap("n", "<leader>h", "^", opts)
keymap("n", "<leader>l", "$", opts)

-- Clear highlight with esc
keymap("n", "<ESC>", ":noh<CR>", opts)

-- Save quickly
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>wa", ":wa<CR>", opts)

-- Save and format
keymap("n", "<leader>d", ":lua vim.lsp.buf.format()<CR> <bar> :w<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts) -- configured for MacOS
keymap("v", "<A-k>", ":m .-2<CR>==", opts) -- configured for MacOS
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "∆", ":move '>+1<CR>gv-gv", opts)
keymap("x", "˚", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files({require('telescope.themes').get_dropdown({ previewer = false }), hidden=true, no_ignore=true})<cr>", opts)
keymap(
  "n",
  "<leader>f",
  "<cmd>lua require'telescope.builtin'.find_files({require('telescope.themes').get_dropdown({ previewer = false })})<cr>"
  ,
  opts
)
keymap("n", "<c-f>", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>t", "<cmd>Telescope grep_string<cr>", opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
