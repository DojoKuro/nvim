vim.g.mapleader = 'space'
vim.g.maplocalleader = 'space'

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
local pluginKeys = {}

-- insert mode
map('i', 'jk', '<ESC>', opt)
map('i', '<C-s>', '<ESC>:w<cr>', opt)
map('i', '<C-h>', '<ESC>I', opt)
map('i', '<C-l>', '<ESC>A', opt)
-- normal mode
map('n', 's', '', opt)
map('n', '<space>q', ':q<cr>', opt)
map('n', '<C-s>', ':w<cr>', opt)
map('n', '<space>h', 'zc', opt)
map('n', '<space>l', 'zo', opt)
-- visual mode
map('v', 'J', ':move \'>+1<CR>gv-gv', opt)
map('v', 'K', ':move \'<-2<CR>gv-gv', opt)
-- split windows
map('n', '<space>sv', ':vsp<cr>', opt)
map('n', '<space>sh', ':sp<cr>', opt)
map('n', '<space>sc', '<C-w>c', opt)
map('n', '<space>so', '<C-w>o', opt)
map('n', '<A-h>', '<C-w>h', opt)
map('n', '<A-j>', '<C-w>j', opt)
map('n', '<A-k>', '<C-w>k', opt)
map('n', '<A-l>', '<C-w>l', opt)
-- terminal
map('n', '<space>t', ':sp | terminal<CR>', opt)
map('n', '<space>vt', ':vsp | terminal<CR>', opt)
map('t', '<Esc>', '<C-\\><C-n>', opt)
map('t', '<A-h>', [[ <C-\><C-N><C-w>h ]], opt)
map('t', '<A-j>', [[ <C-\><C-N><C-w>j ]], opt)
map('t', '<A-k>', [[ <C-\><C-N><C-w>k ]], opt)
map('t', '<A-l>', [[ <C-\><C-N><C-w>l ]], opt)
-- scroll
map('n', '<C-j>', '10j', opt)
map('n', '<C-k>', '10k', opt)
map('n', '<C-u>', '20k', opt)
map('n', '<C-d>', '20j', opt)
-- code
map('n', 'gg=G', 'ggvG=', opt)
-- nvim-tree
map('n', '<A-m>', ':NvimTreeToggle<cr>', opt)
pluginKeys.nvimTreeList = {
  { key = { '<CR>', 'o', '<2-LeftMouse>', 'o', 'l' }, action = 'edit' },
  { key = 'v', action = 'vsplit' },
  { key = 'h', action = 'split' },
  { key = 'i', action = 'toggle_custom' },
  { key = '.', action = 'toggle_dotfiles' },
  { key = '<F5>', action = 'refresh' },
  { key = 'a', action = 'create' },
  { key = 'd', action = 'remove' },
  { key = 'r', action = 'rename' },
  { key = 'x', action = 'cut' },
  { key = 'c', action = 'copy' },
  { key = 'p', action = 'paste' },
  { key = 's', action = 'system_open' },
}
-- bufferline
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
--"moll/vim-bbye"
map("n", "<C-w>", ":Bdelete!<CR>", opt)
map("i", "<C-w>", ":Bdelete!<CR>", opt)
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)
-- telescope
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)
pluginKeys.telescopeList = {
  i = {
    ["<C-j>"] = "move_selection_next",
    ["<C-k>"] = "move_selection_previous",
    ["<Down>"] = "move_selection_next",
    ["<Up>"] = "move_selection_previous",
    ["<C-n>"] = "cycle_history_next",
    ["<C-p>"] = "cycle_history_prev",
    ["<C-c>"] = "close",
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",
  },
}
return pluginKeys
