require("nvchad.configs.lspconfig").defaults()
local vue_language_server_path = vim.fn.expand "$MASON/packages"
  .. "/vue-language-server"
  .. "/node_modules/@vue/language-server"
local lspconfig = require "lspconfig"

local servers = { "html", "cssls", "tailwindcss", "eslint", "svelte" }

vim.lsp.enable(servers)
local nvlsp = require "nvchad.configs.lspconfig"

lspconfig.ts_ls.setup {
  on_attach = nvlsp.on_attach,
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vue_language_server_path,
        languages = { "vue" },
      },
    },
  },
  root_dir = lspconfig.util.root_pattern "package.json",
  single_file_support = false,
}

lspconfig.denols.setup {
  on_attach = nvlsp.on_attach,
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
}

lspconfig.volar.setup {
  on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, desc = "Goto Definition" }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  end,
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
}
-- read :h vim.lsp.config for changing options of lsp servers
