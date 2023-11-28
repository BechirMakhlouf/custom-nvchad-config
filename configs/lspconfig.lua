local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  -- "intelephense",
  "tailwindcss",
  "bashls",
  "emmet_ls",
  "marksman",
  "gopls",
  "pyright",
  "awk_ls",
  "jdtls",
  "angularls",
  "prismals",
  "sqlls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig.pyright.setup { blabla}
--
