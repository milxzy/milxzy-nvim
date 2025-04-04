return {
  'goolord/alpha-nvim',
  priority = 1000,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Header
    dashboard.section.header.val = {
      [[███╗   ███╗██╗██╗     ██╗  ██╗███████╗██╗   ██╗]],
      [[████╗ ████║██║██║     ╚██╗██╔╝███████╗╚██╗ ██╔╝]],
      [[██╔████╔██║██║██║      ╚███╔╝ ╚══███╔╝ ╚████╔╝ ]],
      [[██║╚██╔╝██║██║██║      ██╔██╗   ███╔╝   ╚██╔╝  ]],
      [[██║ ╚═╝ ██║██║███████╗██╔╝ ██╗███████╗   ██║   ]],
      [[╚═╝     ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   ]],
      [[                Welcome Home                ]],
    }

    -- Buttons
    dashboard.section.buttons.val = {
      dashboard.button('f', '󰈞  Find file', ':Telescope find_files<CR>'),
      dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('r', '󰄉  Recent files', ':Telescope oldfiles<CR>'),
      dashboard.button('e', '  Open File Explorer', ':NvimTreeToggle<CR>'),
      dashboard.button('g', '  Find word', ':Telescope live_grep<CR>'),
      dashboard.button('c', '  Config', ':e $MYVIMRC<CR>'),
      dashboard.button('s', '  Restore session', ":lua require('persistence').load()<CR>"),
      dashboard.button('q', '󰿅  Quit', ':qa<CR>'),
    }

    -- Footer
    dashboard.section.footer.val = "No cap and gown I ain't go to class"
    dashboard.section.footer.opts.hl = 'Type'

    -- Highlighting (optional)
    dashboard.section.header.opts.hl = 'Include'
    dashboard.section.buttons.opts.hl = 'Keyword'

    -- Prevent interference
    dashboard.opts.opts.noautocmd = true

    -- Final setup
    alpha.setup(dashboard.opts)

    -- Autocmd to open dashboard on start if no files passed
    vim.api.nvim_create_autocmd('VimEnter', {
      callback = function()
        if vim.fn.argc() == 0 then
          require('alpha').start(true)
          vim.cmd 'setlocal nofoldenable'
        end
      end,
    })
  end,
}
