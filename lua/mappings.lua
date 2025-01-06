-- add yours here

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local map = vim.keymap.set
-- map("n", ";", ":", { desc = "CMD enter command mode" })
--
keymap('n', '\\', ':set hls!<CR>', { noremap = true, silent = true })
keymap('v', '\\', ':set hls!<CR>', { noremap = true, silent = true })

-- Normal
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<S-Up>", ":resize -2<CR>", opts)
keymap("n", "<S-Down>", ":resize +2<CR>", opts)
keymap("n", "<S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<S-Right>", ":vertical resize +2<CR>", opts)

-- Insert
keymap('i', 'jk', '<Esc>', opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<C-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<C-k>", ":m '<-2<CR>gv=gv", opts)

-- Nvim Tree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

keymap("n", "<leader>sf", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>sg", "<cmd>Telescope live_grep<CR>", opts)

keymap("n", "<leader>fw", "<cmd>HopPattern<CR>", opts)
keymap("n", "<leader>fp", "<cmd>HopPaste<CR>", opts)

keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
keymap('n', 'I', '<cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<CR>', { noremap = true, silent = true })

vim.g.diagnostics_active = true

function _G.toggle_diagnostics()
  if vim.g.diagnostics_active then
    vim.g.diagnostics_active = false
    vim.diagnostic.config({
      virtual_text = false,
      underline = false,
      signs = false,
    })
    print('Diagnostics (virtual text and underlining) hidden')
  else
    vim.g.diagnostics_active = true
    vim.diagnostic.config({
      virtual_text = true,
      underline = true,
      signs = true,
    })
    print('Diagnostics (virtual text and underlining) visible')
  end
end

-- Map the toggle function to a key combination, e.g., <Space>D
keymap('n', 'D', ':lua toggle_diagnostics()<CR>', { noremap = true, silent = true })

keymap("n", "<leader>q", "<cmd>BufDel<CR>", opts)

map("n", "<tab>"  , function() require("nvchad.tabufline").next() end, { desc = "buffer goto next" })
map("n", "<S-tab>", function() require("nvchad.tabufline").prev() end, { desc = "buffer goto prev" })

keymap('n', '<leader>rn', ':w<CR>:RunCode<CR>', opts)

keymap("n", "<leader>sf", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>sg", "<cmd>Telescope live_grep<CR>", opts)

-- map("n", "<C-t>", function() require("trouble").toggle("document_diagnostics") end)
-- 
--
-- map("t", '<leader>t', "<Cmd>ToggleTerm<CR>", { silent = true })
-- keymap("t", 'jk', "<Cmd>ToggleTerm<CR>", { silent = true })
-- map('t', 'jk', '<Esc>', opts)
map('t', 'jk', [[<C-\><C-n>]], opts)
map("n", '<leader>t', "<Cmd>ToggleTerm<CR>", { silent = true })

keymap("n", "<C-b>", "<cmd>AerialToggle<CR>", opts)

-- local nvim_tree_api = require('nvim-tree.api')

-- map('n', '<C-]>', nvim_tree_api.tree.change_root_to_parent, {} )
