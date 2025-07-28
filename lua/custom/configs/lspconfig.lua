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

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
}

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rs" },
   settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = false;
      },
    },
  },
}

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "c",
    "cpp",
  },
}

lspconfig.java_language_server.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "java" },
  root_markers = { "build.gradle", "build.gradle.kts", "pom.xml", ".git" },
  settings = {},
}

lspconfig.buf.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"buf"},
  filetypes = { "proto" },
}

lspconfig.intelephense.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "php" },
}
