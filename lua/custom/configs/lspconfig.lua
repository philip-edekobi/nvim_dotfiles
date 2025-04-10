local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "javascript",
    "typescript",
    "typescriptreact",
    "javascript.jsx",
    "typescrpt.tsx",
    "javascriptreact",
  },
  settings = {
    javascript = {
    },
    typescript = {
    },
  },
}

lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "javascript",
    "typescript",
    "typescriptreact",
    "javascript.jsx",
    "typescrpt.tsx",
    "javascriptreact",
  },
  settings = {
    javascript = {
    },
    typescript = {
    },
  },
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
}

lspconfig.clangd.setup {}

lspconfig.intelephense.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "php" },
}
