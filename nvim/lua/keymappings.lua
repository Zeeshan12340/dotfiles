OPTS = { noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<SPACE>', '<NOP>', OPTS)
vim.g.mapleader = ' '

-- Don't copy the cut text
vim.api.nvim_set_keymap('n', 'x', '"_x', {noremap = true, silent = true})

-- Don't copy the cut text
vim.api.nvim_set_keymap('n', 'd', '"_d', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>e', ':normal! g_<CR>', {noremap = true}) -- end of line

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', OPTS)

-- Explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', OPTS)
vim.api.nvim_set_keymap('n', '<Leader>rf', ':NvimTreeFocus<CR>', { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<cr>', OPTS)
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<cr>', OPTS)
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<cr>', OPTS)
vim.api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<cr>', OPTS)

-- LSP
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', OPTS)
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', OPTS)
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', OPTS)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', OPTS)
vim.api.nvim_set_keymap('n', '<Leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', OPTS)

-- Better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true})

-- Better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', OPTS)
vim.api.nvim_set_keymap('v', '>', '>gv', OPTS)

-- Better escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', OPTS)

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', OPTS)
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', OPTS)

-- Move lines up and down
-- Map Ctrl+j to move the selected lines down in visual mode
vim.api.nvim_set_keymap('x', '<C-Down>', [[:m '>+1<CR>gv=gv]], { noremap = true, silent = true })

-- Map Ctrl+k to move the selected lines up in visual mode
vim.api.nvim_set_keymap('x', '<C-Up>', [[:m '<-2<CR>gv=gv]], { noremap = true, silent = true })

-- Map Enter to accept suggestion in insert mode
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? "\\<C-y>" : "\\<CR>"', { expr = true, noremap = true, silent = true })

-- Map Tab to accept suggestion in insert mode
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-y>" : "\\<Tab>"', { expr = true, noremap = true, silent = true })

