return {
  {
    "easymotion/vim-easymotion",
    init = function()
      vim.g.EasyMotion_do_mapping = 1
      vim.g.EasyMotion_smartcase = 1
    end,
  },
  {
    "yuttie/comfortable-motion.vim",
  },
}
