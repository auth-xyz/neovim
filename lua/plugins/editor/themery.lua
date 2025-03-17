return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = ...,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  {
    "rebelot/kanagawa.nvim",
    "sainnhe/gruvbox-material",
  },
  {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
      require("themery").setup({
        livePreview = true,
        vim.cmd.colorscheme("gruvbox-material"), -- default theme
        themes = {
          { name = "Gruvbox Dark",     colorscheme = "gruvbox" },
          { name = "Gruvbox Material", colorscheme = "gruvbox-material" },

          { name = "Kanagawa",         colorscheme = "kanagawa" },
          { name = "Kanagawa Wave",    colorscheme = "kanagawa-wave" },
          { name = "Kanagawa Dragon",  colorscheme = "kanagawa-dragon" },
        },
      })
    end,
  },
}
