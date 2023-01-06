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

-- Save with root permission (not working for now)
-- api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

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

-- Move in Insert mode
-- C = Control, A = Alt / Option

-- keymap.set('i', '<A-up>', '<up>')
-- keymap.set('i', '<A-down>', '<down>')
-- keymap.set('i', '<A-left>', '<left>')
-- keymap.set('i', '<A-right>', '<right>')

-- Move Lines

keymap.set('n', '<S-down>', ':m .+1<CR>==')
keymap.set('n', '<S-up>', ':m .-2<CR>==')

keymap.set('i', '<S-down>', '<Esc>:m .+1<CR>==gi')
keymap.set('i', '<S-up>', '<Esc>:m .-2<CR>==gi')

keymap.set('v', '<S-down>', ':m \'>+1<CR>gv=gv')
keymap.set('v', '<S-up>', ':m \'>-2<CR>gv=gv')

-- Move other locations to here

local opts = {noremap = true, silent = true}
keymap.set('n', '<leader>j', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
keymap.set('n', '<leader>k', '<Cmd>Lspsaga hover_doc<CR>', opts)

keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)

keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)

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

-- keymap.set('n', '<leader>b', ':NERDTreeToggle<cr>')
