local status_ok, toggleterm = pcall(require, "toggleterm")
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
if not status_ok then
	return
end

toggleterm.setup({
	size = 80,
	open_mapping = [[c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "vertical",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curverd",
		winblend = 0,
		highlights = { border = "Normal", background = "Normal" },
	},
})

function _G.set_terminal_keymaps()
	local opts = { noremap = true }
	vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
	vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
	vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
	vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>k]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
-- Move to previous/next
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
