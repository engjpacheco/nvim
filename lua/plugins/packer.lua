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
  use({
    "wbthomason/packer.nvim",
    requires = {},
    config = get_config("packer"),
  })

  use({"neovim/nvim-lspconfig",
    requires = {},
    config = get_config("nvim-lspconfig"),
  })

  use({
    "williamboman/nvim-lsp-installer",
    requires = "neovim/nvim-lspconfig",
    config = get_config("lspconfig"),
  })

  use({
    "hrsh7th/nvim-cmp",
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

  use({
    "jose-elias-alvarez/null-ls.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = get_config("null-ls"),
  })

  use({
    "nvim-treesitter/nvim-treesitter",
    requires = {},
    run = ":TSUpdate",
    config = get_config("treesitter"),
  })

  -- use({
  --   "nvim-treesitter/nvim-treesitter-refactor",
  --   after = "nvim-treesitter",
  --   requires = {},
  --   config = get_config("treesitter-refactor"),
  -- })

  use({
    "nvim-telescope/telescope.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = get_config("telescope"),
  })
  use({
    "windwp/nvim-autopairs",
    requires = {},
    config = get_config("autopairs"),
  })

  use({
    "tpope/vim-surround",
    requires = {},
    config = get_config("vim-surround")
  })

  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons" },
    config = get_config("lualine"),
  })

  use({
    "romgrk/barbar.nvim",
    requires = {},
    config = get_config("barbar"),
  })

  use({
    "rcarriga/nvim-notify",
    requires = {},
    config = get_config("notify"),
  })

  use({
    "mbbill/undotree",
    requires = {},
    config = get_config("undotree"),
  })

  use({
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = get_config("gitsigns"),
  })

  use({
    "terrortylor/nvim-comment",
    requires = {},
    config = get_config("comments"),
  })

  use({
    "phaazon/hop.nvim",
    branch = "v2",
    requires = {},
    config = get_config("hop"),
  })

  	use({
  		"folke/lua-dev.nvim",
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

  use({ "startup-nvim/startup.nvim",
    requires = {},
    config = get_config("startup-config"),
  })

  use({ "renerocksai/telekasten.nvim",
    requires = {},
    config = get_config("telekasten"),
  })

  use({ "renerocksai/calendar-vim",
    requires = {},
  })

  use({"kyazdani42/nvim-tree.lua",
    requires = {
      "kyazdani42/nvim-web-devicons",
    },
    config = get_config("nvim-tree"),
  })

  use({ "TimUntersberger/neogit",
    requires = { "nvim-lua/plenary.nvim" },
    config = get_config("neogit"),
  })

  use({ "sam4llis/nvim-tundra",
    requires = {},
    config = get_config("tundra"),
  })

  use({ "chentoast/marks.nvim",
    requires = {},
    config = get_config("marks"),
  })

  use({"ThePrimeagen/vim-be-good"})

  -- Plugins Ends

  if Packer_Bootstrap then
    require("packer").sync()
  end
end)