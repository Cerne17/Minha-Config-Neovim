-- nvim-autopairs setup
require('nvim-autopairs').setup{}

-- Add any additional configurations for specific languages
require('nvim-autopairs').setup({
  map_cr = true,
  map_complete = true
})

-- Setup autopairs for specific file types
local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')
npairs.add_rules({
  Rule('"', '"'),
  Rule("'", "'"),
  Rule('`', '`'),
  Rule('(', ')'),
  Rule('[', ']'),
  Rule('{', '}'),
  -- Rule('<', '>'),
})

-- Additional setup for specific file types
require('nvim-autopairs').add_rules({
  Rule('{', '}'):with_pair(function(opts)
    return opts.line:sub(1, vim.fn.col('.') - 1):match('.+{$') and '}' or nil
  end)
})

-- Autopairs configuration for specific file types
require('nvim-autopairs').add_rules({
  Rule('%', '%', 'lua'):with_pair(function()
    return false
  end),
  Rule('$', '$', 'vim'):with_pair(function()
    return false
  end),
  Rule('`', '`', 'lua'):with_pair(function()
    return false
  end),
})

-- Set up autopairs for specific file types
require('nvim-autopairs').add_rules({
  Rule('$$', '$$', 'latex'):with_pair(function()
    return false
  end)
})
