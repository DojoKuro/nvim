local M = {}

function M.setup()
  local g = vim.g
  g.indent_blankline_char = "▏"
  g.indent_blankline_filetype_exclude = { "help", "packer" }
  g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
  g.indent_blankline_show_trailing_blankline_indent = false
  g.indent_blancline_show_current_context = true
  g.indent_blankline_show_current_context_start = true
end

return M
