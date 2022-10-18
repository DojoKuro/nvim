local packer = require('packer')
packer.startup(function(use)
  -- Packer 可以管理自己本身
  use('wbthomason/packer.nvim')
  -- 你的插件列表...
  -- tokyonight
  use('folke/tokyonight.nvim')
  -- nvim-tree
  use({
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  })
  -- bufferline
  use({
    'akinsho/bufferline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', 'moll/vim-bbye' },
  })
  -- lualine
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  })
  use('arkav/lualine-lsp-progress')
  -- telescope
  use({
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  })
  -- telescope extensions
  use('LinArcX/telescope-env.nvim')
  -- dashboard-nvim
  use('glepnir/dashboard-nvim')
  -- project
  use('ahmedkhalf/project.nvim')
  -- treesitter
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  -- lsp
  use('williamboman/nvim-lsp-installer')
  -- Lspconfig
  use({ 'neovim/nvim-lspconfig' })
  -- nvim-cmp
  use('hrsh7th/nvim-cmp')
  -- snippet 引擎
  use('hrsh7th/vim-vsnip')
  -- 补全源
  use('hrsh7th/cmp-vsnip')
  use('hrsh7th/cmp-nvim-lsp') -- { name = nvim_lsp }
  use('hrsh7th/cmp-buffer') -- { name = 'buffer' },
  use('hrsh7th/cmp-path') -- { name = 'path' }
  use('hrsh7th/cmp-cmdline') -- { name = 'cmdline' }
  -- 常见编程语言代码段
  use('rafamadriz/friendly-snippets')
  -- ui
  use('onsails/lspkind-nvim')
  use('lukas-reineke/indent-blankline.nvim')
  use('tami5/lspsaga.nvim')
  -- formating
  -- use('mhartington/formatter.nvim')
  use({
    'jose-elias-alvarez/null-ls.nvim',
    requires = 'nvim-lua/plenary.nvim',
  })
  use('b0o/schemastore.nvim')
end)
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end,
  },
}
