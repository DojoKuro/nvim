return require('packer').startup(
  { function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }
    use { 'akinsho/bufferline.nvim', requires = { 'kyazdani42/nvim-web-devicons', 'moll/vim-bbye' } }
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }
    use 'arkav/lualine-lsp-progress'
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    use 'glepnir/dashboard-nvim'
    use 'ahmedkhalf/project.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'williamboman/nvim-lsp-installer' }
    -- Lspconfig
    use { 'neovim/nvim-lspconfig' }
    use 'hrsh7th/nvim-cmp'
    --  snippet
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer' -- { name = 'buffer' },
    use 'hrsh7th/cmp-path' -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline' -- { name = 'cmdline' }
    use 'rafamadriz/friendly-snippets'
    use 'onsails/lspkind-nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use { 'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim' }

  end,
    config = {
      display = {
        open_fn = function()
          return require('packer.util').float({ border = 'single' })
        end,
      },
    },

    pcall(
      vim.cmd,
      [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
    )
  })
