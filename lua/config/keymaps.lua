-- Load keymaps on the VeryLazy event
local discipline = require("plugins.discipline")
discipline.cowboy()

local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

-- Clear Highlight
keymaps.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Increment/Decrement
keymaps.set("n", "+", "<C-a>")
keymaps.set("n", "-", "<C-x>")

-- Delete a word backwards
keymaps.set("n", "dw", "vb_d")

-- Select all
keymaps.set("n", "<C-a>", "gg<S-v>G")

-- Jump list
keymaps.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymaps.set("n", "te", ":tabedit<CR>", opts)
keymaps.set("n", "<Tab>", ":tabnext<CR>", opts)
keymaps.set("n", "<S-Tab>", ":tabprev<CR>", opts)

-- Split window
keymaps.set("n", "ss", ":split<CR>", opts)
keymaps.set("n", "sv", ":vsplit<CR>", opts)

-- Move window
keymaps.set("n", "sh", "<C-w>h")
keymaps.set("n", "sk", "<C-w>k")
keymaps.set("n", "sj", "<C-w>j")
keymaps.set("n", "sl", "<C-w>l")

-- Resize window
keymaps.set("n", "<C-w><left>", "<C-w><")
keymaps.set("n", "<C-w><right>", "<C-w>>")
keymaps.set("n", "<C-w><up>", "<C-w>+")
keymaps.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymaps.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
