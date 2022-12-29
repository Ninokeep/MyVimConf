vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
	require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
	require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<Shift>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- execute script
-- python
-- vim.keymap.set("n","<C-m>", ":w !python3<CR>"
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
map('n', '<c-,>', ':BufferPrevious<CR>', opts)
map('n', '<c-;>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<c-<>', ':BufferMovePrevious<CR>', opts)
map('n', '<c->>', ':BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<c-&>', ':BufferGoto 1<CR>', opts)
map('n', '<c-é>', ':BufferGoto 2<CR>', opts)
map('n', '<c-">', ':BufferGoto 3<CR>', opts)
map('n', "<c-'>", ':BufferGoto 4<CR>', opts)
map('n', '<c-(>', ':BufferGoto 5<CR>', opts)
map('n', '<c-§>', ':BufferGoto 6<CR>', opts)
map('n', '<c-è>', ':BufferGoto 7<CR>', opts)
map('n', '<c-!>', ':BufferGoto 8<CR>', opts)
map('n', '<c-ç>', ':BufferGoto 9<CR>', opts)
map('n', '<c-à>', ':BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<c-p>', ':BufferPin<CR>', opts)
-- Close buffer
map('n', '<c-bc>', ':BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', ':BufferOrderByWindowNumber<CR>', opts)

-- toggle term
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")
