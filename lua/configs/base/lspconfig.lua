return {
  "neovim/nvim-lspconfig",
  config = function()
    require("nvchad.configs.lspconfig").defaults()
    local configs = require "nvchad.configs.lspconfig"
    local on_attach = configs.on_attach
    local on_init = configs.on_init
    local capabilities = configs.capabilities

    local lspconfig = require "lspconfig"
    local servers = {
      "html",
      "cssls",
      "marksman",
      "somesass_ls",
      "jsonls",
      -- "tsserver",
    }

    -- lsps with default config
    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
      }
    end

    lspconfig.tsserver.setup {
      on_attach = on_attach,
      on_init = on_init,
      capabilities = capabilities,
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
      },
      init_options = {
        preferences = {
          includeInlayParameterNameHints = "all",
          includeInlayParameterNameHintsWhenArgumentMatchesName = true,
          includeInlayFunctionParameterTypeHints = true,
          includeInlayVariableTypeHints = true,
          includeInlayPropertyDeclarationTypeHints = true,
          includeInlayFunctionLikeReturnTypeHints = true,
          includeInlayEnumMemberValueHints = true,
          importModuleSpecifierPreference = "non-relative",
        },
      },
      settings = {
        completions = {
          completeFunctionCalls = false,
        },
      },
    }

    lspconfig.jsonls.setup {
      on_attach = on_attach,
      on_init = on_init,
      capabilities = capabilities,
      settings = {
        json = {
          format = {
            enable = false,
          },
        },
      },
    }

    lspconfig.eslint.setup {
      on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          command = "EslintFixAll",
        })
      end,
      on_init = on_init,
      capabilities = capabilities,
    }

    lspconfig.sqlls.setup {
      on_attach = on_attach,
      on_init = on_init,
      capabilities = capabilities,
      filetypes = { "sql", "mysql" },
      root_dir = function(_)
        return vim.loop.cwd()
      end,
    }

    lspconfig.lua_ls.setup {
      on_attach = on_attach,
      on_init = on_init,
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {
              "vim",
              "require",
            },
          },
        },
      },
    }
  end,
}
