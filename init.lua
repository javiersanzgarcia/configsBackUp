-- Paste this file in ~/.config/nvim and subdirectories

require('pracker.base')
require('pracker.highlights')
require('pracker.plugins')
require('pracker.maps')

local has = vim.fn.has
local is_mac = has "macunix"

if is_mac then
  require('pracker.macos')
end
