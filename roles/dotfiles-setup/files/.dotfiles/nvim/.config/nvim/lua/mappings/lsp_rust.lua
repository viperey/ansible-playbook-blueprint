local map = vim.keymap.set

map("n", "<leader>c", function()
  vim.cmd.RustLsp { "hover", "actions" }
end, { desc = "[Rust] Hover actions", silent = true })

map("n", "<leader>a", function()
  vim.cmd.RustLsp "codeAction"
end, { desc = "[Rust] Code Action", silent = true })

map("n", "<leader>rcu", function()
  require("crates").upgrade_all_crates()
end, { desc = "[Rust] Upgrade all crates" })
