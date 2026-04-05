vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set('n', '<leader><F6>', ':Neogit<CR>', {})
vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', {})

-- Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', {})
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep <CR>', {})
vim.keymap.set('n', '<leader>fh', ':Telescope help_tags <CR>', {})
--vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'Telescope: Buffers' })

vim.keymap.set('n', '<leader>fb', function()
    require('telescope.builtin').buffers({
        attach_mappings = function(_, map)
            local actions = require("telescope.actions")
            map('n', '<C-f>d', actions.delete_buffer)
            map('n', 'dd', actions.delete_buffer)
            return true
        end
    })
end, { desc = 'Telescope: Delete buffers' })


-- Add current file to Harpoon list
vim.keymap.set('n', '<leader>ha', function()
    require('harpoon'):list():add()
end, { desc = 'Harpoon: Add file' })

-- Toggle the Harpoon UI menu
vim.keymap.set('n', '<C-h>', function()
    local harpoon = require('harpoon')
    harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = 'Harpoon: Toggle menu' })

-- Quick jump to files 1-4
vim.keymap.set('n', '<leader>h1', function() require('harpoon'):list():select(1) end)
vim.keymap.set('n', '<leader>h2', function() require('harpoon'):list():select(2) end)
vim.keymap.set('n', '<leader>h3', function() require('harpoon'):list():select(3) end)
vim.keymap.set('n', '<leader>h4', function() require('harpoon'):list():select(4) end)
vim.keymap.set('n', '<C-S-P>', function() require('harpoon'):list():prev() end)
vim.keymap.set('n', '<C-S-N>', function() require('harpoon'):list():next() end)

vim.keymap.set('n', '<leader>v', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>s', '<C-w>s', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<leader>q', '<C-w>c', { desc = 'Close current split' })
vim.keymap.set('n', '<leader>=', '<C-w>=', { desc = 'Make splits equal size' })

-- Movement between windows
vim.keymap.set('n', '<C-Left>', '<C-w><Left>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', '<C-w><Right>', { noremap = true, silent = true })
--vim.keymap.set('n', '<C-h>', '<C-w><Left>', { noremap = true, silent = true })
--vim.keymap.set('n', '<C-l>', '<C-w><Right>', { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", "<c-w>h")
vim.keymap.set("n", "<leader>j", "<c-w>j")
vim.keymap.set("n", "<leader>k", "<c-w>k")
vim.keymap.set("n", "<leader>l", "<c-w>l")
vim.keymap.set("n", "<leader>wh", "<c-w>t<c-h>H")
vim.keymap.set("n", "<leader>wk", "<c-w>t<c-h>K")

-- Cycle/delete buffers
vim.keymap.set('n', '<leader>]', ':bn<CR>', {})
vim.keymap.set('n', '<leader>[', ':bp<CR>', {})
vim.keymap.set('n', '<leader>x', ':bd<CR>', {})

-- DAP
--[[
vim.keymap.set('n', '<leader>db', ':lua require"dap".toggle_breakpoint()<CR>', {})
vim.keymap.set('n', '<leader>dr', ':lua require"dap".continue()<CR>', {})
vim.keymap.set('n', '<leader>dt', ':lua require"dap".terminate()<CR>', {})
vim.keymap.set('n', '<leader>dk', function() require('dap').continue() end)
--]]

-- Neoscroll
vim.keymap.set('n', '<leader>k',
    function() require('neoscroll').scroll(-vim.wo.scroll, { move_cursor = true, duration = 300 }) end)
vim.keymap.set('n', '<leader>j',
    function() require('neoscroll').scroll(vim.wo.scroll, { move_cursor = true, duration = 300 }) end)

vim.keymap.set('n', '<leader>w', '<Cmd>write<CR>')
vim.keymap.set('n', '<leader>Q', '<Cmd>:wqa<CR>')
vim.keymap.set('n', '<C-f>', '<Cmd>Open .<CR>')

-- system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"+d')
vim.keymap.set({ 'n', 'v' }, '<leader>c', ':')

-- soft reload config file
vim.keymap.set({ 'n', 'v' }, '<leader>o', ':update<CR> :source<CR>')

vim.keymap.set('t', '', "")
vim.keymap.set('t', '', "")

-- LSP
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
--vim.keymap.set('i', '<c-e>', function() vim.lsp.completion.get() end)
vim.keymap.set('n', '<leader>le', vim.diagnostic.open_float, { desc = 'Show errors.' })
vim.keymap.set('n', '<leader>ld', vim.lsp.buf.declaration)
vim.keymap.set('n', '<leader>lt', vim.lsp.buf.definition)

vim.keymap.set("n", "<M-down>", "<cmd>resize +2<CR>")           -- Increase height
vim.keymap.set("n", "<M-up>", "<cmd>resize -2<CR>")             -- Decrease height
vim.keymap.set("n", "<M-right>", "<cmd>vertical resize +5<CR>") -- Increase width
vim.keymap.set("n", "<M-left>", "<cmd>vertical resize -5<CR>")  -- Decrease width
vim.keymap.set("i", "<C-s>", "<c-g>u<Esc>[s1z=`]a<c-g>u")

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")
vim.keymap.set("n", "j", "(v:count ? 'j' : 'gj')", { expr = true })
vim.keymap.set("n", "k", "(v:count ? 'k' : 'gk')", { expr = true })

vim.keymap.set({ 'n', 'v', 'x' }, '<leader>m', ':move ')
vim.keymap.set("n", "<M-?>", ":WhichKey<CR>")
