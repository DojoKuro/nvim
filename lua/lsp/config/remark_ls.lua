local opts = {
  cmd = { 'remark-language-server', '--stdio' },
  filetypes = { 'markdown' },
  on_attach = function(client, bufnr)
    -- 禁用格式化功能，交给专门插件插件处理
    client.server_capabilities.document_formatting = false
    client.server_capabilities.document_range_formatting = false

    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end

    -- 绑定快捷键
    require('config.keymaps').mapLSP(buf_set_keymap)
    -- 保存时自动格式化
    -- vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.format{ async = true }')
  end,
}
-- 查看目录等信息
return {
  on_setup = function(server)
    server:setup(opts)
  end,
}
