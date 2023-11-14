local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})

  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, {buffer = bufnr})
end)

lsp_zero.format_on_save({
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ['tsserver'] = {'javascript', 'typescript', 'tsx', 'javascriptreact', 'typescriptreact'},
    ['dartls'] = {'dart'}
  }
})
