local on_attach = function(client, bufnr)
	local lspconfig = require("nvchad.configs.lspconfig")
	lspconfig.on_attach(client, bufnr)
	require("mappings.lsp")
end
-- local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")
local servers = { "html", "cssls", "tsserver", "eslint", "pyright", "lua_ls" }

require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "rust", "scala" },
})

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		on_init = on_init,
		capabilities = capabilities,
	})
end

-- typescript
lspconfig.tsserver.setup({
	on_attach = on_attach,
	on_init = on_init,
	capabilities = capabilities,
})
