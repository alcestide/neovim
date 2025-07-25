vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set('n', '<leader>g', ':Neogit<CR>', {})
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', {})
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep <CR>', {})
vim.keymap.set('n', '<leader>fb', ':Telescope buffers <CR>', {})
vim.keymap.set('n', '<leader>fh', ':Telescope help_tags <CR>', {})
vim.keymap.set('n', '<leader>]', ':bn<CR>', {})
vim.keymap.set('n', '<leader>[', ':bp<CR>', {})
vim.keymap.set('n', '<leader>x', ':bd<CR>', {})
vim.keymap.set('n', '<F5>', ':UndotreeToggle<CR>', {})
vim.keymap.set('n', '<leader>tt', ':colorscheme catppuccin-mocha<CR>', {})
vim.keymap.set('n', '<C-Left>', '<C-w><Left>', {noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', '<C-w><Right>', {noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', '<C-w><Left>', {noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w><Right>', {noremap = true, silent = true })
vim.keymap.set('n', '<leader>db', ':lua require"dap".toggle_breakpoint()<CR>', {})
vim.keymap.set('n', '<leader>dr', ':lua require"dap".continue()<CR>', {})
vim.keymap.set('n', '<leader>dt', ':lua require"dap".terminate()<CR>', {})
vim.keymap.set('n', '<leader>dk', function() require('dap').continue() end)
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = "Toggle Spectre"
})
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
    desc = "Search current word"
})
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})
vim.keymap.set('n', '<C-a>', function () require('neoscroll').scroll(-vim.wo.scroll, {move_cursor=true, duration=300}) end)

vim.keymap.set('n', '<leader>ha', '<esc><cmd>lua require("harpoon.mark").add_file()<CR>', {})
vim.keymap.set('n', '<leader>hh', '<esc><cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', {})
