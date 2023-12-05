local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  "tailwindcss",
  "bashls",
  "emmet_ls",
  "marksman",
  "gopls",
  "pyright",
  "awk_ls",
  "angularls",
  "prismals",
  "sqlls",
  "phpactor",
  "java_language_server",
  "dockerls",
}
-- local config = {
--     cmd = {'/path/to/jdt-language-server/bin/jdtls'},
--     root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
-- }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["java_language_server"].setup {
  cmd = { "/home/copernicus/.local/share/nvim/mason/bin/java-language-server" },
}
-- lspconfig.pyright.setup { blabla}
--

-- local jdtlsConfig = {
--   cmd = { "/usr/bin/jdtls" },
--   root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
-- }
--
-- require("jdtls").start_or_attach(jdtlsConfig)
