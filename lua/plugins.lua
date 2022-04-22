return require('packer').startup(
function(use)
  -- Packer can manage itself.
  use 'wbthomason/packer.nvim'

  use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' } }

  -- use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

use 'simrat39/symbols-outline.nvim'
--
use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  --use "lukas-reineke/indent-blankline.nvim"

  use 'windwp/nvim-autopairs'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'neovim/nvim-lspconfig' }

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip'

  use 'L3MON4D3/LuaSnip'

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    -- tag = 'release' -- To use the latest release
  }

  use 'prettier/vim-prettier'
  --use 'marko-cerovac/material.nvim'

  --use {
    --'kyazdani42/nvim-tree.lua',
    --requires = {
      --'kyazdani42/nvim-web-devicons', -- optional, for file icon
    --}
  --}

  use 'tpope/vim-fugitive'

  use 'fatih/vim-go'

  use  { 'junegunn/fzf', run = './install --bin', }

use { 'pR0Ps/molokai-dark' }

--use 'ggandor/lightspeed.nvim'
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
end
)
