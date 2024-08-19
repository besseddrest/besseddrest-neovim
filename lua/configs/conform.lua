local options = {
    formatters_by_ft = {
        -- lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        jsx = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        tsx = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        scss = { "prettier" },
        markdown = { "mdformat" },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 1500,
        lsp_fallback = true,
    },
}

require("conform").setup(options)
