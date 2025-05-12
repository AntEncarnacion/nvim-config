return {
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = '',
      },
    },
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    requires = { { 'nvim-lua/plenary.nvim' } },
    config = function()
      -- [[ Harpoon config ]]
      local harpoon = require 'harpoon'

      harpoon:setup {}

      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      vim.keymap.set('n', '<leader>aa', function()
        harpoon:list():add()
      end, { desc = 'Add file to harpoon' })
      vim.keymap.set('n', '<leader>ad', function()
        harpoon:list():remove()
      end, { desc = 'Remove file from harpoon' })

      vim.keymap.set('n', '<leader>a1', function()
        harpoon:list():select(1)
      end, { desc = 'Switch to file 1 in harpoon' })
      vim.keymap.set('n', '<leader>a2', function()
        harpoon:list():select(2)
      end, { desc = 'Switch to file 2 in harpoon' })
      vim.keymap.set('n', '<leader>a3', function()
        harpoon:list():select(3)
      end, { desc = 'Switch to file 3 in harpoon' })
      vim.keymap.set('n', '<leader>a4', function()
        harpoon:list():select(4)
      end, { desc = 'Switch to file 4 in harpoon' })
      vim.keymap.set('n', '<leader>a5', function()
        harpoon:list():select(5)
      end, { desc = 'Switch to file 5 in harpoon' })
      vim.keymap.set('n', '<leader>a6', function()
        harpoon:list():select(6)
      end, { desc = 'Switch to file 6 in harpoon' })
      vim.keymap.set('n', '<leader>a7', function()
        harpoon:list():select(7)
      end, { desc = 'Switch to file 7 in harpoon' })
      vim.keymap.set('n', '<leader>a8', function()
        harpoon:list():select(8)
      end, { desc = 'Switch to file 8 in harpoon' })
      vim.keymap.set('n', '<leader>a9', function()
        harpoon:list():select(9)
      end, { desc = 'Switch to file 9 in harpoon' })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<C-S-P>', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', '<C-S-N>', function()
        harpoon:list():next()
      end)
    end,
  },
}
