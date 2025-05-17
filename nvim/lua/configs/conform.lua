local options = {
  formatters_by_ft = {
    typescript = { "prettierd" },
    javascript = { "prettierd" },
    -- svelte = { "prettierd" },
    jsonls = { "prettierd" },
    vue = { "prettierd" },
    lua = { "stylua" },
    css = { "prettierd" },
    svg = { "prettierd" },
    html = { "prettierd" },
  },
  format_on_save = {
    timeout_ms = 2500,
    -- lsp_fallback = true,
  },
}

return options
