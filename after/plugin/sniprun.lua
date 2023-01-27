vim.api.nvim_set_keymap('v', 't', '<Plug>SnipRun', {silent = false})
vim.api.nvim_set_keymap('n', '<leader>ru', '<Plug>SnipRunOperator', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>tt', '<Plug>SnipRun', {silent = true})
