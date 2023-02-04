vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Move Lines

keymap.set('n', '<S-down>', ':m .+1<CR>==')
keymap.set('n', '<S-up>', ':m .-2<CR>==')

keymap.set('i', '<S-down>', '<Esc>:m .+1<CR>==gi')
keymap.set('i', '<S-up>', '<Esc>:m .-2<CR>==gi')

keymap.set('v', '<S-down>', ':m \'>+1<CR>gv=gv')
keymap.set('v', '<S-up>', ':m \'>-2<CR>gv=gv')

-- Move other locations to here

keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})

-- Telescope maps

-- Find Files = '<leader>f'
-- Grep = '<leader>r'
-- Buffers = '\\\\'
-- Help_tags = '<leader>t'
-- Resume = '<leader>;'
-- Diagnostics = '<leader>e'
-- Open Explorer with current file = '<leader>b'

-- GIT maps

-- Open blame window = "<Leader>gb",
-- Open file/folder in git repository = "<Leader>go",

-- Set main Window
keymap.set('n', '<C-w>o', '<cmd>ZenMode<cr>', opts)

--  Pracker Maps
keymap.set('n', '<leader>q', ':q<cr>')
keymap.set('n', '<leader>w', ':w<cr>')
keymap.set('n', '<leader>x', ':x<cr>')
keymap.set('n', '<leader>tv', ':botright vnew <Bar> :terminal<cr>')
keymap.set('n', '<leader>th', ':botright new <Bar> :terminal<cr>')
keymap.set('n', '<leader>qq', ':q!<cr>')

local opts = {noremap = true, silent = true}

-- EOL & BOL
keymap.set('n', '<S-right>', '$', opts)
keymap.set('n', '<S-left>', '^', opts)

-- NeoTree and Move around splits

keymap.set('n', '<leader>n', ':Neotree<cr>')

keymap.set('n', '<A-left>', '<C-w>h', opts)
keymap.set('n', '<A-down>', '<C-w>j', opts)
keymap.set('n', '<A-up>', '<C-w>k', opts)
keymap.set('n', '<A-right>', '<C-w>l', opts)
