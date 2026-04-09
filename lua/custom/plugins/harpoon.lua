return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
    config = function()
         require("harpoon").setup({
                 menu = {
                         width = vim.api.nvim_win_get_width(0) - 64,
                 }
         })

        local mark = require('harpoon.mark')
        local ui = require('harpoon.ui')

        vim.keymap.set('n', '<leader>ha', mark.add_file,                 { desc = 'Harpoon: add file' })
        vim.keymap.set('n', '<leader>hk', ui.toggle_quick_menu,          { desc = 'Harpoon: toggle menu' })
        vim.keymap.set('n', '<leader>hc', mark.clear_all,                { desc = 'Harpoon: clear all' })
        vim.keymap.set('n', '<leader>hr', mark.rm_file,                  { desc = 'Harpoon: remove file' })
        vim.keymap.set('n', '<leader>hh', '<cmd>Telescope harpoon marks<cr>', { desc = 'Harpoon: telescope' })

        vim.keymap.set('n', '<leader>h1', function() ui.nav_file(1) end, { desc = 'Harpoon: nav file 1' })
        vim.keymap.set('n', '<leader>h2', function() ui.nav_file(2) end, { desc = 'Harpoon: nav file 2' })
        vim.keymap.set('n', '<leader>h3', function() ui.nav_file(3) end, { desc = 'Harpoon: nav file 3' })
        vim.keymap.set('n', '<leader>h4', function() ui.nav_file(4) end, { desc = 'Harpoon: nav file 4' })


    end
}
