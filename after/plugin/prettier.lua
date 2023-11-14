-- Runs Prettier Formatting
vim.api.nvim_set_keymap('n', '<Leader>ppy', '<Plug>(Prettier)', {})
-- Sets default max line columns to 70 characters
vim.g['prettier#config#print_width'] = '80'
-- Sets default tabbing for 2 spaces
vim.g['prettier#config#tab_width'] = '2'
-- Tabs uses spaces
vim.g['prettier#config#use_tabs'] = 'false'
-- Sets default end of line to lf (other options: crlf, all, cr)
-- vim.g['prettier#config#end_of_line'] = vim.fn.get(g:, 'prettier#config#end_of_line', 'crlf')

-- Problems:
-- [warn] --jsx-bracket-same-line is deprecated.
-- [warn] Ignored unknown option --loglevel=error. Did you mean --log-level?
-- [warn] Ignored unknown option --stdin.
