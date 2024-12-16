-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      keymaps = {
        ['<C-h>'] = false,
        ['<C-l>'] = false,
        ['<C-j>'] = false,
        ['<C-k>'] = false,
      },
      view_options = {
        show_hidden = true,
      },
    }
    vim.keymap.set('n', '<leader>e', '<CMD>Oil<CR>', { desc = 'Open pwd' })
  end,
  -- Optional dependencies
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
}
