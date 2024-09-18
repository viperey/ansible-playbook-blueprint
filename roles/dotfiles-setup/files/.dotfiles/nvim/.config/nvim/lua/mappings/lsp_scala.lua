local map = vim.keymap.set

map("n", "mc", function()
  require("telescope").extensions.metals.commands()
end)
map("n", "K", vim.lsp.buf.hover)
map("n", "gds", vim.lsp.buf.document_symbol)
map("n", "gws", vim.lsp.buf.workspace_symbol)
map("n", "<leader>cl", vim.lsp.codelens.run)
map("n", "<leader>sh", vim.lsp.buf.signature_help)
map("n", "<leader>rn", vim.lsp.buf.rename)
map("n", "<leader>f", vim.lsp.buf.format)
map("n", "<leader>ca", vim.lsp.buf.code_action)
map("n", "<leader>ws", function()
  require("metals").hover_worksheet()
end)
map("n", "<leader>ae", function()
  vim.diagnostic.setqflist { severity = "E" }
end)
map("n", "<leader>aw", function()
  vim.diagnostic.setqflist { severity = "W" }
end)
map("n", "<leader>d", vim.diagnostic.setloclist)
map("n", "[c", function()
  vim.diagnostic.goto_prev { wrap = false }
end)
map("n", "]c", function()
  vim.diagnostic.goto_next { wrap = false }
end)
