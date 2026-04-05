local map = vim.keymap.set

-- Save / quit
map("n", "<leader>w", "<cmd>w!<cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q!<cr>", { desc = "Quit" })

-- Window navigation
map("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })
map("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })

-- LSP
map("n", "<leader><leader>l", function()
  local clients = vim.lsp.get_clients()
  if #clients == 0 then
    vim.notify("LSP: no active clients", vim.log.levels.WARN)
    return
  end
  local names = vim.tbl_map(function(c) return c.name end, clients)
  for _, client in ipairs(clients) do
    client:stop()
  end
  vim.cmd("e")
  vim.notify("LSP restarted: " .. table.concat(names, ", "), vim.log.levels.INFO)
end, { desc = "LSP restart" })

-- Tabs
map("n", "tk", "<cmd>tabnext<cr>", { desc = "Next tab" })
map("n", "tj", "<cmd>tabprev<cr>", { desc = "Previous tab" })
map("n", "th", "<cmd>tabfirst<cr>", { desc = "First tab" })
map("n", "tl", "<cmd>tablast<cr>", { desc = "Last tab" })
