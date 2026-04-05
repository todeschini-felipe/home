return {
  {
    "ibhagwan/fzf-lua",
    cmd = "FzfLua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      {
        "<C-p>",
        function()
          local ok = pcall(require("fzf-lua").git_files)
          if not ok then
            require("fzf-lua").files()
          end
        end,
        desc = "Git files / files",
      },
			{
				"<leader>fg",
				function()
					require("fzf-lua").live_grep()
				end,
				desc = "Live grep",
			},
    },
    opts = {
      "default",
      winopts = {
        height = 0.85,
        width = 0.80,
      },
      files = {
        cwd_prompt = false,
      },
      git = {
        files = {
          cmd = "git ls-files --exclude-standard",
        },
      },
    },
  },
}
