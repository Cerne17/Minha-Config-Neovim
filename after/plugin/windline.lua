require('wlsample.airline')
--  the animated alternative. you can toggle animation by press `<leader>u9`

local explorer = {
    filetypes = {'fern', 'NvimTree','netrw'},
    active = {
        {'  ', {'white', 'black'} },
    },
    --- show active components when the window is inactive
    always_active = true,
    --- It will display a last window statusline even that window should inactive
    show_last_status = true
}

local default = {
    filetypes={'default'},
    active={
      --- components...
      {'[',{'red', 'black'}},
      {'%f',{'green','black'}},
      {']',{'red','black'}},

      -- empty color definition uses the previous component colors
      {"%=", ''} ,

      -- hightlight groups can also be used
      {' ','StatusLine'},

      {' %3l:%-2c ',{'white','black'}}
    },
}

local lsp_comps = require('windline.components.lsp')

