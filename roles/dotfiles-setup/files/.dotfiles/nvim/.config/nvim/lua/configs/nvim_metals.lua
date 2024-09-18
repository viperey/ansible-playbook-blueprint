local metals_config = require("metals").bare_config()

-- Example of settings
metals_config.settings = {
  showImplicitArguments = true,
  excludedPackages = { "akka.actor.typed.javadsl", "com.github.swagger.akka.javadsl" },
}

metals_config.init_options.statusBarProvider = "off"

metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()

metals_config.on_attach = function(client, bufnr)
  require("nvim-dap-virtual-text").setup()
  require("metals").setup_dap()
  require "mappings.lsp"
  require "mappings.lsp_scala"
end

return metals_config
