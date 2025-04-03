return {
  'goolord/alpha-nvim',
  priority = 1000,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local startify = require 'alpha.themes.startify'
    local dashboard = require 'alpha.themes.dashboard'

    -- Custom Header
    startify.section.header.val = {
      [[███╗   ███╗██╗██╗     ██╗  ██╗███████╗██╗   ██╗]],
      [[████╗ ████║██║██║     ╚██╗██╔╝███████╗╚██╗ ██╔╝]],
      [[██╔████╔██║██║██║      ╚███╔╝ ╚══███╔╝ ╚████╔╝ ]],
      [[██║╚██╔╝██║██║██║      ██╔██╗   ███╔╝   ╚██╔╝  ]],
      [[██║ ╚═╝ ██║██║███████╗██╔╝ ██╗███████╗   ██║   ]],
      [[╚═╝     ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   ]],
      [[                Welcome to MILXZY                ]],
    }

    local function footer()
      return "Don't Stop Until You are Proud..."
    end

    dashboard.section.footer.val = footer()

    dashboard.section.footer.opts.hl = 'Type'
    dashboard.section.header.opts.hl = 'Include'
    dashboard.section.buttons.opts.hl = 'Keyword'

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)

    -- Set up alpha
    alpha.setup(startify.config)

    -- Add autocmd to open alpha on startup when no file arguments
    vim.api.nvim_create_autocmd('VimEnter', {
      callback = function()
        -- Only start Alpha when Neovim is started without arguments
        local should_skip = false
        if vim.fn.argc() > 0 or vim.fn.line2byte '$' ~= -1 or vim.opt.insertmode:get() then
          should_skip = true
        end

        if not should_skip then
          require('alpha').start(true)
          vim.cmd [[au FileType alpha setlocal nofoldenable]]
        end
      end,
    })
  end,
}
