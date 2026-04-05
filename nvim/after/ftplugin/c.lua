vim.opt_local.expandtab = true
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.smartindent = true

local mason_clangd = vim.fn.stdpath("data") .. "/mason/bin/clangd"
local clangd = vim.fn.filereadable(mason_clangd) == 1 and mason_clangd or vim.fn.exepath("clangd")
if clangd ~= "" then
  local bufname = vim.api.nvim_buf_get_name(0)
  local root = vim.fs.root(bufname, {
    ".clangd",
    "compile_commands.json",
    "compile_flags.txt",
    ".git",
  })

  vim.lsp.start({
    name = "clangd",
    cmd = {
      clangd,
      "--background-index",
      "--clang-tidy",
      "--completion-style=detailed",
      "--header-insertion=iwyu",
      "--query-driver=/usr/local/nangate/tools/ngtc/*/usr/local/ccache/bin/g++",
      "--enable-config",
    },
    root_dir = root or vim.fn.fnamemodify(bufname, ":p:h"),
    capabilities = require("blink.cmp").get_lsp_capabilities(),
  })
end
