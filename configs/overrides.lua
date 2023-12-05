local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "php",
    "sql",
    "astro",
    "go",
    "java",
    "json",
    "prisma",
    "dockerfile",
    "gomod",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    "bash-language-server",

    -- c/cpp stuff
    "clangd",
    "clang-format",

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
    "phpactor",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
