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


vim.keymap.set('n', '<leader>k', function () require('neoscroll').scroll(-vim.wo.scroll, {move_cursor=true, duration=300}) end)
vim.keymap.set('n', '<leader>j', function () require('neoscroll').scroll(vim.wo.scroll, {move_cursor=true, duration=300}) end)

vim.keymap.set('n', '<leader>w', '<Cmd>write<CR>')
vim.keymap.set('n', '<leader>Q', '<Cmd>:wqa<CR>')
vim.keymap.set('n', '<C-f>', '<Cmd>Open .<CR>')

-- quickly switch files with alternate / switch it
vim.keymap.set('n', '<leader>s', '<Cmd>e #<CR>')
vim.keymap.set('n', '<leader>S', '<Cmd>bot sf #<CR>')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>m', ':move ')

-- system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"+d')
vim.keymap.set({ 'n', 'v' }, '<leader>c', ':')

-- soft reload config file
vim.keymap.set({ 'n', 'v' }, '<leader>o', ':update<CR> :source<CR>')

vim.keymap.set('t', '', "")
vim.keymap.set('t', '', "")

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set("i", "<C-e>", function() ls.expand_or_jump(1) end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-J>", function() ls.jump(1) end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-K>", function() ls.jump(-1) end, { silent = true })
vim.keymap.set('n', '<leader>e', "<Cmd>Oil<CR>")
vim.keymap.set('i', '<c-e>', function() vim.lsp.completion.get() end)

vim.keymap.set("n", "<M-n>", "<cmd>resize +2<CR>")          -- Increase height
vim.keymap.set("n", "<M-e>", "<cmd>resize -2<CR>")          -- Decrease height
vim.keymap.set("n", "<M-i>", "<cmd>vertical resize +5<CR>") -- Increase width
vim.keymap.set("n", "<M-m>", "<cmd>vertical resize -5<CR>") -- Decrease width
vim.keymap.set("i", "<C-s>", "<c-g>u<Esc>[s1z=`]a<c-g>u")
