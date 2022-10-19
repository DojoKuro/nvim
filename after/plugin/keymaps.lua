local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)
keymap("i", "kj", "<ESC>", default_opts)
keymap("t", "kj", "<C-\\><C-n>", default_opts)

-- Quit
keymap("n", "<leader>q", ":q<CR>", default_opts)

-- Save
keymap("i", "<C-s>", "<ESC>:w<CR>", default_opts)
keymap("n", "<C-s>", ":w<CR>", default_opts)

-- head or tail line in insert
keymap("i", "<C-h>", "<ESC>I", default_opts)
keymap("i", "<C-l>", "<ESC>A", default_opts)

-- code fold
keymap("n", "<leader>h", "zc", default_opts)
keymap("n", "<leader>l", "zo", default_opts)
keymap("n", "gg=G", "gg<S-v>G", default_opts)

-- Center search results
keymap("n", "n", "nzz", default_opts)
keymap("n", "N", "Nzz", default_opts)

-- Visual line wraps
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- Better indent
keymap("v", "<", "<gv", default_opts)
keymap("v", ">", ">gv", default_opts)

-- scroll
keymap('n', '<C-j>', '10j', default_opts)
keymap('n', '<C-k>', '10k', default_opts)
keymap('n', '<C-u>', '20k', default_opts)
keymap('n', '<C-d>', '20j', default_opts)

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP', default_opts)

-- Switch buffer
keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- split windows
keymap("n", "<leader>sv", ":vsp<cr>", default_opts)
keymap("n", "<leader>sh", ":sp<cr>", default_opts)
keymap("n", "<leader>sc", "<C-w>c", default_opts)
keymap("n", "<leader>so", "<C-w>o", default_opts)
keymap("n", "<A-h>", "<C-w>h", default_opts)
keymap("n", "<A-j>", "<C-w>j", default_opts)
keymap("n", "<A-k>", "<C-w>k", default_opts)
keymap("n", "<A-l>", "<C-w>l", default_opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", default_opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", default_opts)

-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)

-- terminal
keymap("n", "<leader>t", ":sp | terminal<CR>", default_opts)
keymap("n", "<leader>vt", ":vsp | terminal<CR>", default_opts)
keymap("t", "<Esc>", "<C-\\><C-n>", default_opts)
keymap("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], default_opts)
keymap("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], default_opts)
keymap("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], default_opts)
keymap("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], default_opts)
