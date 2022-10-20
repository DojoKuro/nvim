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
    actions = {
        open_file = {
            resize_window = true,
            quit_on_open = true,
        },
    },
  }

end

return M
