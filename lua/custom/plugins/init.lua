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
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()

      vim.keymap.set('n', '<M-a>', function()
        harpoon:list():add()
      end, { desc = 'Harpoon: Add', silent = true })
      vim.keymap.set('n', '<M-s>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Harpoon: Toggle quick menu', silent = true })
      vim.keymap.set('n', '<M-e>', function()
        harpoon:list():select(1)
      end, { desc = 'Harpoon: Select 1', silent = true })
      vim.keymap.set('n', '<M-r>', function()
        harpoon:list():select(2)
      end, { desc = 'Harpoon: Select 2', silent = true })
      vim.keymap.set('n', '<M-u>', function()
        harpoon:list():select(3)
      end, { desc = 'Harpoon: Select 3', silent = true })
      vim.keymap.set('n', '<M-i>', function()
        harpoon:list():select(4)
      end, { desc = 'Harpoon: Select 4', silent = true })
    end,
  },

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

  -- Dad Bod
  { 'tpope/vim-dadbod' },
  { 'kristijanhusak/vim-dadbod-completion' },
  { 'kristijanhusak/vim-dadbod-ui' },
}
