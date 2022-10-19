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
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'williamboman/nvim-lsp-installer' }
    -- Lspconfig
    use({ "neovim/nvim-lspconfig" })

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
