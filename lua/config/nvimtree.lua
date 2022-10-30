local M = {}
local nvimTreeList = {}
nvimTreeList = {
  { key = "l", action = "edit" },
}

function M.setup()
  require("nvim-tree").setup {
    disable_netrw = true,
    hijack_netrw = true,
    view = {
      number = true,
      relativenumber = true,
      mappings = {
        custom_only = false,
        list = nvimTreeList,
      }
    },
    filters = {
      custom = { ".git", "node_modules" },
    },
    update_cwd = true,
    update_focused_file = {
      enable = true,
      update_cwd = true,
    },
    actions = {
        open_file = {
            resize_window = true,
            quit_on_open = true,
        },
    },
  }

  vim.g.nvim_tree_respect_buf_cwd = 1
end

return M
