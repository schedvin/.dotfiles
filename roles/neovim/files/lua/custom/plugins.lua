return function(use)
  use({
    "folke/zen-mode.nvim",
      config = function()
        require("zen-mode").setup({})
      end
  })

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use {
    "folke/tokyonight.nvim"
  }
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      }
    end
  }

  use {
    "sunjon/shade.nvim",
    config = function ()
      require("shade").setup({
        overlay_opacity = 25,
        opacity_step = 1,
        keys = {
          brightness_up    = '<C-Up>',
          brightness_down  = '<C-Down>',
          toggle           = '<leader>z',
        }
      })
    end
  }

  use({
    "/home/cjs/Projects/personal/plugin-template.nvim"
  })
end
-- vim: ts=2 sts=2 sw=2 et
