local get_config = function(name)
  return string.format('require("plugins/config/%s")', name)
end

local packer = require("packer")
-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return packer.startup(function(use)
  -- Plugins start
  use({ "wbthomason/packer.nvim",
    requires = {},
    config = get_config("packer"),
  })

  use({ "neovim/nvim-lspconfig",
    requires = {},
    config = get_config("nvim-lspconfig"),
  })

  use({ "williamboman/nvim-lsp-installer",
    requires = "neovim/nvim-lspconfig",
    config = get_config("lspconfig"),
  })

  use({ "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
      "onsails/lspkind-nvim",
    },
    config = get_config("cmp"),
  })

  -- use({
  --   "jose-elias-alvarez/null-ls.nvim",
  --   requires = "nvim-lua/plenary.nvim",
  --   config = get_config("null-ls"),
  -- })

  use({ "nvim-treesitter/nvim-treesitter",
    requires = {},
    run = ":TSUpdate",
    config = get_config("treesitter"),
  })

  use({ "nvim-treesitter/nvim-treesitter-refactor",
    after = "nvim-treesitter",
    requires = {},
    config = get_config("treesitter-refactor"),
  })

  use({ "nvim-telescope/telescope.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = get_config("telescope"),
  })
  use({ "windwp/nvim-autopairs",
    requires = {},
    config = get_config("autopairs"),
  })

  use({ "tpope/vim-surround",
    requires = {},
    config = get_config("vim-surround")
  })

  use({ "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
    config = get_config("lualine"),
  })

  use({ "romgrk/barbar.nvim",
    requires = {},
    config = get_config("barbar"),
  })

  use({ "rcarriga/nvim-notify",
    requires = {},
    config = get_config("notify"),
  })

  use({ "mbbill/undotree",
    requires = {},
    config = get_config("undotree"),
  })

  use({ "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = get_config("gitsigns"),
  })

  use({ "terrortylor/nvim-comment",
    requires = {},
    config = get_config("comments"),
  })

  use({ "phaazon/hop.nvim",
    branch = "v2",
    requires = {},
    config = get_config("hop"),
  })

  use({ "folke/lua-dev.nvim",
    requires = {},
    config = get_config("lua-dev"),
  })

  use({ "lukas-reineke/indent-blankline.nvim",
    requires = {},
    config = get_config("indent-blankline"),
  })

  use({ "norcalli/nvim-colorizer.lua",
    requires = {},
    config = get_config("colorizer")
  })

  use({ "renerocksai/calendar-vim",
    requires = {},
  })

  use({ "glepnir/dashboard-nvim",
    requires = {},
    config = get_config("dashboard"),
  })

  use({ "kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons",
    },
    config = get_config("nvim-tree"),
  })

  -- use({ "ThePrimeagen/vim-be-good"})

  use ({ "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = get_config("todo-comments"),
  })

  use ({ "nvim-telescope/telescope-file-browser.nvim",
    requires = {},
    config = get_config("telescope-file-browser"),
  })

  use({ "akinsho/toggleterm.nvim",
    requires = {},
    config = get_config("toggleterm"),
  })

  use({ "matze/vim-move" })

  -- use({ "dhruvasagar/vim-table-mode" })

  -- use({ "tentaclius/my-vim-org" })
  --
-- Markdown plugins for notes and so on.
  use({ "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
      config = get_config("markdownpreview"),
    })

  use({ "mzlogin/vim-markdown-toc" })

  use({ "nvim-telescope/telescope-media-files.nvim",
      config = get_config("telescopemediafiles")
  })

  use({ "renerocksai/telekasten.nvim",
    requires = {},
    config = get_config("telekasten"),
  })

  use({ "bbrtj/vim-vorg-md" })

  -- use({ "jakewvincent/mkdnflow.nvim",
  --   rocks = 'luautf8', -- Ensures optional luautf8 dependency is installed
  --   config = get_config("mkdnflow"),
  -- })

  -- use({'nvim-orgmode/orgmode',
  --     ft = {'org'},
  --     config = get_config("orgmode")
  --   })
  --
  -- use({ 'akinsho/org-bullets.nvim',
  --   requires = {},
  --   config = get_config("orgbullets"),
  -- })

  --  use ({ "nvim-neorg/neorg",
  --      requires = "nvim-lua/plenary.nvim",
  --      config = get_config("neorg"),
  --  })
 
  -- Plugins Ends
  if Packer_Bootstrap then
    require("packer").sync()
  end
end)
