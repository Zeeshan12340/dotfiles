OPTS = { noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<SPACE>', '<NOP>', OPTS)
vim.g.mapleader = ' '

-- Don't copy the cut text
vim.api.nvim_set_keymap('n', 'x', '"_x', {noremap = true, silent = true})

-- Don't copy the cut text
vim.api.nvim_set_keymap('n', 'd', '"_d', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>e', ':normal! g_<CR>', {noremap = true}) -- end of line

-- no hl
vim.keymap.set('n', '<Leader>h', ':set hlsearch!<CR>', OPTS)

-- Explorer
vim.keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>', OPTS)
vim.api.nvim_set_keymap('n', '<Leader>rf', ':NvimTreeFocus<CR>', { noremap = true, silent = true })

-- Telescope
vim.keymap.set('n', '<Leader>ff', ':Telescope find_files<cr>', OPTS)
vim.keymap.set('n', '<Leader>fg', ':Telescope live_grep<cr>', OPTS)
vim.keymap.set('n', '<Leader>fb', ':Telescope buffers<cr>', OPTS)
vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<cr>', OPTS)

-- LSP
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', OPTS)
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', OPTS)
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', OPTS)
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', OPTS)
vim.keymap.set('n', '<Leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', OPTS)

-- Better window movement
vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true})
vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true})
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true})
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true})

-- Better indenting
vim.keymap.set('v', '<', '<gv', OPTS)
vim.keymap.set('v', '>', '>gv', OPTS)

-- Better escape
vim.keymap.set('i', 'jk', '<ESC>', OPTS)

-- Tab switch buffer
vim.keymap.set('n', '<TAB>', ':bnext<CR>', OPTS)
vim.keymap.set('n', '<S-TAB>', ':bprevious<CR>', OPTS)

-- Move lines up and down
-- Map Ctrl+j to move the selected lines down in visual mode
vim.api.nvim_set_keymap('x', '<C-Down>', [[:m '>+1<CR>gv=gv]], { noremap = true, silent = true })

-- Map Ctrl+k to move the selected lines up in visual mode
vim.api.nvim_set_keymap('x', '<C-Up>', [[:m '<-2<CR>gv=gv]], { noremap = true, silent = true })

-- Map Enter to accept suggestion in insert mode
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? "\\<C-y>" : "\\<CR>"', { expr = true, noremap = true, silent = true })

-- Map Tab to accept suggestion in insert mode
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-y>" : "\\<Tab>"', { expr = true, noremap = true, silent = true })

