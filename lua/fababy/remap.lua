vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") --set line below
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- set line upside

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- this is a simpel - greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- execute script
-- python
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
map('n', '<c-c>', ':BufferClose<CR>', opts)
-- Show buffers
map('n', '<leader>bf', ':buffers<CR>', opts)
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
-- split view
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split verticaly
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>v")
vim.keymap.set("n", "<leader>sx", ":close<CR>")
-- array
vim.keymap.set("n", "vii", "vi[")
-- save file
