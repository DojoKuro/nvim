local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }
-- Plugins key
local pluginKeys = {}

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)
keymap("i", "kj", "<ESC>", default_opts)
keymap("t", "kj", "<C-\\><C-n>", default_opts)

-- Save
keymap("i", "<C-s>", "<ESC>:w<CR>", default_opts)
keymap("n", "<C-s>", ":w<CR>", default_opts)

-- head or tail line in insert
keymap("i", "<C-h>", "<ESC>I", default_opts)
keymap("i", "<C-l>", "<ESC>A", default_opts)

-- code fold
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
keymap("n", "<C-u>", "20k", default_opts)
keymap("n", "<C-d>", "20j", default_opts)

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP', default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- split windows
-- keymap("n", "<leader>sv", ":vsp<cr>", default_opts)
-- keymap("n", "<leader>sh", ":sp<cr>", default_opts)
-- keymap("n", "<leader>sc", "<C-w>c", default_opts)
-- keymap("n", "<leader>so", "<C-w>o", default_opts)
keymap("n", "<C-h>", "<C-w>h", default_opts)
keymap("n", "<C-j>", "<C-w>j", default_opts)
keymap("n", "<C-k>", "<C-w>k", default_opts)
keymap("n", "<C-l>", "<C-w>l", default_opts)

-- Move selected line / block of text in visual mode
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", default_opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", default_opts)
    -- Move current line / block with Alt-j/k ala vscode.
keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", default_opts)
keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", default_opts)
keymap("n", "<A-j>", ":m .+1<CR>==", default_opts)
keymap("n", "<A-k>", ":m .-2<CR>==", default_opts)

-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)

-- terminal
-- keymap("n", "<leader>t", ":sp | terminal<CR>", default_opts)
-- keymap("n", "<leader>vt", ":vsp | terminal<CR>", default_opts)
keymap("t", "<Esc>", "<C-\\><C-n>", default_opts)
keymap("t", "<C-h>", [[ <C-\><C-N><C-w>h ]], default_opts)
keymap("t", "<C-j>", [[ <C-\><C-N><C-w>j ]], default_opts)
keymap("t", "<C-k>", [[ <C-\><C-N><C-w>k ]], default_opts)
keymap("t", "<C-l>", [[ <C-\><C-N><C-w>l ]], default_opts)

-- Nvimtree
keymap("n", "<A-m>", ":NvimTreeToggle<cr>", default_opts)

-- Bufferline
keymap("n", "<S-h>", ":BufferLineCyclePrev<cr>", default_opts)
keymap("n", "<S-l>", ":BufferLineCycleNext<cr>", default_opts)
keymap("n", "<C-w>", ":bdelete<cr>", default_opts)

-- Telescope
keymap("n", "<C-f>", "<cmd>Telescope live_grep<cr>", default_opts)
keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", default_opts)

-- Code runner
keymap("n", "<F5>", ":RunCode<cr>", default_opts)
