return function(use)

  -- TODO: find another way to set these before netrw is loaded, should
  -- placed a top of `init.lua` (strongly advised)
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1
  vim.opt.termguicolors = true

  use {
  "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
    tag = "nightly", -- optional, updated every week. (see issue #1193)
    config = function ()
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
          adaptive_size = true,
          mappings = {
            list = {
              { key = "u", action = "dir_up" },
            },
          },
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      })
    end
  }

  use({
    "folke/zen-mode.nvim",
      config = function()
        require("zen-mode").setup({})
      end
  })

  -- higlight and show todo comments like TODO, HACK, BUG, NOTE
  -- See `:help todo-comments.txt`
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- custom configuration goes here
      }
    end
  }

  -- colorscheme tokyonight
  use {
    "folke/tokyonight.nvim"
  }

  -- prettify diagnostics, LSP, telescope results, qf ... 
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
         -- custom configuration goes here
      }
    end
  }
  use {
    "ThePrimeagen/harpoon",
    config = function ()
      require("harpoon").setup {
      }
      require("telescope").load_extension("harpoon")
    end
  }
  -- applies shading to inactive windows
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
