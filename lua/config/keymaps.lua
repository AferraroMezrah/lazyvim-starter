-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- lua/core/keymaps.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- vim.keymap.set("n", "<leader>ut", function()
--     require("core.colorscheme").cycle()
-- end, { desc = "Cycle theme" })

-- vim.keymap.set("n", "<leader>fp", function()
--     require("core.colorscheme_picker").pick()
-- end, { desc = "Pick colorscheme with preview" })

-- Primeagen inspired
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

map("n", "J", "mzJ`z", opts)
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- "greatest remap ever
map("x", "<leader>p", '"_dP', { desc = "Paste over (keep register)" })

-- "next greateset remap ever : asbjornHaland"
map("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("n", "<leader>Y", '"+y', { desc = "Yank from cursor to end of line to system clipboard" })

pcall(vim.keymap.del, "n", "<leader>d")
pcall(vim.keymap.del, "v", "<leader>d")
map("n", "<leader>d", '"_d', { desc = "Delete (black hole)" })
map("v", "<leader>d", '"_d', { desc = "Delete (black hole)" })

map("n", "Q", "<nop>", opts)
map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "tmux sessionizer" })
-- map("n", "<M-h>", "<cmd>silent !tmux-sessionizer -s 0 --vsplit<CR>")
-- map("n", "<M-H>", "<cmd>silent !tmux neww tmux-sessionizer -s 0<CR>")
--map("n", "<leader>f", function()
--    require("conform").format({ bufnr = 0 })
--end)

-- map("n", "<C-j>", "<cmd>cprev<CR>zz")
-- map("n", "<C-k>", "<cmd>cnext<CR>zz")
-- map("n", "<leader>j", "<cmd>lprev<CR>zz")
-- map("n", "<leader>k", "<cmd>lnext<CR>zz")

map("n", "<leader>rs", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word in buffer" })
