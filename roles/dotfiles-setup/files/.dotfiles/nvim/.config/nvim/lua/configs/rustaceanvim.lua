local on_attach = function(client, bufnr)
  local lspconfig = require "nvchad.configs.lspconfig"
  lspconfig.on_attach(client, bufnr)
  require "mappings.lsp"
  require "mappings.lsp_rust"
end
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

vim.g.rustaceanvim = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
}
