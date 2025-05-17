local options = {
  formatters_by_ft = {
    typescript = { "prettier" },
    javascript = { "prettier" },
    -- svelte = { "prettierd" },
    jsonls = { "prettier" },
    vue = { "prettier" },
    lua = { "stylua" },
    css = { "prettier" },
    svg = { "prettier" },
    html = { "prettier" },
  },
  format_on_save = {
    timeout_ms = 2500,
    -- lsp_fallback = true,
  },
}

return options
