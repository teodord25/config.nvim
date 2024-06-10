-- TODO: add lazy event trigger stuff
--

require'lspconfig'.gleam.setup{}

require('lspconfig').rust_analyzer.setup {
  settings = {
    procMacro = {
      ignored = {
        leptos_macro = {
          -- optional: --
          -- "component",
          "server",
        },
      },
    },
  }
}

return {

  { 'mbbill/undotree' },

  { 'airblade/vim-gitgutter' },

  { 'github/copilot.vim' },

  { 'christoomey/vim-tmux-navigator' },

  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },

  -- using rust_analyzer in mason instead
  -- {
  --   'mrcjkb/rustaceanvim',
  --   version = '^4', -- Recommended
  --   ft = { 'rust' },
  -- },
  --
  {
    'nvim-tree/nvim-tree.lua',
    config = true,
    opts = {},
  },

  {
    'lervag/vimtex',
    -- loaded when a tex file is opened
    ft = { 'tex' },
  },
}
