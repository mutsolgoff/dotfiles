local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

require("mason").setup {}
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls" },
  automatic_installation = true,
}
local lspconfig = require "lspconfig"
local servers = { "html", "cssls" }
capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true
-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end
lspconfig.eslint.setup {
  capabilities = capabilities,
}

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = "/Users/rasul/.local/share/nvim/mason/bin/vue-language-server",
        languages = { "vue" },
      },
    },
  },
}

lspconfig.volar.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
}
