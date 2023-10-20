local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file) 			-- Adds the current file to harpoon
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)     		        -- Toggles harpoon's menu

-- Harpon Navigation
vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)		-- Navigates to the 1st file in harpoon's menu
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)		-- Navigates to the 2nd file in harpoon's menu
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)		-- Navigates to the 3rd file in harpoon's menu
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)		-- Navigates to the 4th file in harpoon's menu
