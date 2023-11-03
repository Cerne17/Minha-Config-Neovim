require'nvim-treesitter.configs'.setup {
  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["ii"] = "@conditional.inner",
        ["ia"] = "@conditional.outer",
        ["il"] = "@loop.inner",
        ["al"] = "@loop.outer",
        ["is"] = "@statement.inner",
        ["as"] = "@statement.outer",
        ["ad"] = "@comment.outer",
      },
      selection_modes = {
        ['@parameter.outer'] = 'v', -- charwise
        ['@function.outer'] = 'V', -- linewise
        ['@class.outer'] = '<c-v>', -- blockwise
      },
      include_surrounding_whitespace = true,
    },
  },
  swap = {
      enable = true,
      swap_next = {
          ["<leader>a"] = "@parameter.inner",
      },
      swap_previous = {
          ["<leader>A"] = "@parameter.inner",
      },
  },
  move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
          ["]m"] = "@function.outer",
          ["]]"] = { query = "@class.outer", desc = "Next class start" },

          -- You can use regex matching (i.e. lua pattern) and/or pass a list in a "query" key to group multiple queires.
          ["]o"] = "@loop.*",
          -- ["]o"] = { query = { "@loop.inner", "@loop.outer" } }
          --
          -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
          -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
          ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
          ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
      },
      goto_next_end = {
          ["]M"] = "@function.outer",
          ["]["] = "@class.outer",
      },
     goto_previous_start = {
          ["[m"] = "@function.outer",
          ["[["] = "@class.outer",
      },
      goto_previous_end = {
          ["[M"] = "@function.outer",
          ["[]"] = "@class.outer",
      },
      goto_next = {
          ["]i"] = "@conditional.outer",
          ["]f"] = "@function.outer",
          ["]c"] = "@class.outer",
          ["]l"] = "@loop.outer",
          ["]s"] = "@statement.outer",
          ["]b"] = "@block.outer",
      },
      goto_previous = {
          ["[i"] = "@conditional.outer",
          ["[f"] = "@function.outer",
          ["[c"] = "@class.outer",
          ["[l"] = "@loop.outer",
          ["[s"] = "@statement.outer",
          ["[b"] = "@block.outer",
      }
  },
}
