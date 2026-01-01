-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
-- vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
-- vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
-- vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

-- Diffview
vim.keymap.set('n', '<leader>dv', ':DiffviewOpen<CR>', { silent = true, noremap = true, desc = 'Open Diff View' })
vim.keymap.set('n', '<leader>dc', ':DiffviewClose<CR>', { silent = true, noremap = true, desc = 'Close Diff View' })

-- nvim-tree
vim.keymap.set('n', '<leader>df', ':NvimTreeToggle<CR>', { silent = true, noremap = true, desc = 'Toggle File Tree' })

-- New line (stay in normal mode)
vim.keymap.set('n', '<leader>o', 'o<Esc>', { desc = 'Newline', silent = true })

-- Move up or down more
vim.keymap.set('n', '<A-j>', '5j', { desc = '5 lines down' })
vim.keymap.set('n', '<A-k>', '5k', { desc = '5 lines up' })

vim.keymap.set('i', '<A-j>', '<Down>', { desc = 'Insert mode, 1 line down' })
vim.keymap.set('i', '<A-k>', '<Up>', { desc = 'Insert mode, 1 line up' })
vim.keymap.set('i', '<A-h>', '<Left>', { desc = 'Insert mode, 1 line left' })
vim.keymap.set('i', '<A-l>', '<Right>', { desc = 'Insert mode, 1 line right' })

vim.keymap.set('i', '<A-w>', '<C-o>w', { desc = 'Insert mode, beginning of word' })
vim.keymap.set('i', '<A-b>', '<C-o>b', { desc = 'Insert mode, backwards beginning of word' })
vim.keymap.set('i', '<A-e>', '<C-o>e', { desc = 'Insert mode, end of word' })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Auto center on ctrl-d' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Auto center on ctrl-u' })

-- Insert date / time
vim.keymap.set('n', '<leader>dd', 'i> <Esc>:InsertDate<CR>', { silent = true })
vim.keymap.set('n', '<leader>dt', 'i> <Esc>:InsertDateTime<CR>', { silent = true })
vim.keymap.set('i', '<A-d>', '<Esc>:InsertDate<CR>a', { silent = true })

-- MarkdownPreview
vim.keymap.set('n', '<leader>m', ':MarkdownPreviewToggle<CR>', { silent = true })

-- Idc I like saving with Ctrl S
vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<C-q>', ':qa<CR>', { noremap = true, silent = true })
