local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})   -- pf is a mnemonic for "project file"
vim.keymap.set('n', '<C-p>', builtin.git_files, {})         -- Git only file search (ignores node_modules)
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)   							    -- ps is a mnemonic for "project search": It searches where in the current project, the inserted string appears
