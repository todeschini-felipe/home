return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      signs = {
        add          = { text = "+" },
        change       = { text = "~" },
        delete       = { text = "_" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
      },
      current_line_blame = false,
    },
    config = function(_, opts)
      require("gitsigns").setup(opts)

      vim.keymap.set("n", "]h", require("gitsigns").next_hunk, { desc = "Next git hunk" })
      vim.keymap.set("n", "[h", require("gitsigns").prev_hunk, { desc = "Previous git hunk" })
      vim.keymap.set("n", "<leader>hs", require("gitsigns").stage_hunk, { desc = "Stage hunk" })
      vim.keymap.set("n", "<leader>hr", require("gitsigns").reset_hunk, { desc = "Reset hunk" })
      vim.keymap.set("n", "<leader>hp", require("gitsigns").preview_hunk, { desc = "Preview hunk" })
      vim.keymap.set("n", "<leader>hb", require("gitsigns").blame_line, { desc = "Blame line" })
    end,
  },

  {
    "NeogitOrg/neogit",
    cmd = "Neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    opts = {},
    config = function(_, opts)
      require("neogit").setup(opts)
      vim.keymap.set("n", "<leader>gs", "<cmd>Neogit<cr>", { desc = "Git status" })
    end,
  },

  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>gd",
        function()
          local file = vim.api.nvim_buf_get_name(0)
          local dir = file ~= "" and vim.fn.fnamemodify(file, ":p:h") or vim.fn.getcwd()
          vim.cmd("DiffviewOpen -C=" .. vim.fn.fnameescape(dir))
        end,
        desc = "Diffview open",
      },
      {
        "<leader>gh",
        function()
          local file = vim.api.nvim_buf_get_name(0)
          local dir = file ~= "" and vim.fn.fnamemodify(file, ":p:h") or vim.fn.getcwd()
          vim.cmd("DiffviewFileHistory -C=" .. vim.fn.fnameescape(dir) .. " %")
        end,
        desc = "Diffview file history",
      },
    },
    config = function()
      require("diffview").setup({
        git_cmd = { "git" },
      })
    end,
  },
}
