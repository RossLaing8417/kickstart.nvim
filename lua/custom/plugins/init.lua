-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Git related plugins
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-rhubarb' },

  -- TreeSitter
  { 'nvim-treesitter/nvim-treesitter-context' },

  -- ThePrimeagen Plugins
  { 'ThePrimeagen/vim-be-good' },
  { 'ThePrimeagen/git-worktree.nvim' },
  { 'ThePrimeagen/harpoon' },

  -- Fancy Undo Tree
  { 'mbbill/undotree' },

  -- Nice Popups
  {
    'rcarriga/nvim-notify',
    init = function()
      vim.notify = require 'notify'
    end,
    priority = 10,
  },

  -- Go stuff
  {
    'olexsmir/gopher.nvim',
    ft = 'go',
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },

  -- Tmux
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<C-h>', '<cmd><C-U>TmuxNavigateLeft<CR>' },
      { '<C-j>', '<cmd><C-U>TmuxNavigateDown<CR>' },
      { '<C-k>', '<cmd><C-U>TmuxNavigateUp<CR>' },
      { '<C-l>', '<cmd><C-U>TmuxNavigateRight<CR>' },
      { '<C-\\>', '<cmd><C-U>TmuxNavigatePrevious<CR>' },
    },
    lazy = false,
  },
}
