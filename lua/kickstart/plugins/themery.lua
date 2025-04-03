return {
  'zaldih/themery.nvim',
  lazy = false,
  dependencies = { 'navarasu/onedark.nvim' }, -- Ensure it loads on demand
  config = function()
    local onedark = require 'onedark'

    -- Function to apply OneDark styles correctly
    local function set_onedark_style(style)
      onedark.setup { style = style }
      onedark.load()
    end

    require('themery').setup {
      themes = {
        {
          name = 'catppuccin latte',
          colorscheme = 'catppuccin-latte',
        },
        {
          name = 'catppuccin frappe',
          colorscheme = 'catppuccin-frappe',
        },
        {
          name = 'catppuccin macchiatto',
          colorscheme = 'catppuccin-macchiato',
        },
        {
          name = 'catppuccin mocha',
          colorscheme = 'catppuccin-mocha',
        },
        {
          name = 'tokyo night dark',
          colorscheme = 'tokyonight-night',
        },
        {
          name = 'rose pine',
          colorscheme = 'rose-pine-main',
        },
        {
          name = 'rose pine moon',
          colorscheme = 'rose-pine-moon',
        },
        {
          name = 'rose pine dawn',
          colorscheme = 'rose-pine-dawn',
        },
        {
          name = 'OneDark Dark',
          colorscheme = 'onedark',
          config = function()
            set_onedark_style 'dark'
          end,
        },
        {
          name = 'OneDark Darker',
          colorscheme = 'onedark',
          config = function()
            set_onedark_style 'darker'
          end,
        },
        {
          name = 'OneDark Cool',
          colorscheme = 'onedark',
          config = function()
            set_onedark_style 'cool'
          end,
        },
        {
          name = 'OneDark Deep',
          colorscheme = 'onedark',
          config = function()
            set_onedark_style 'deep'
          end,
        },
        {
          name = 'OneDark Warm',
          colorscheme = 'onedark',
          config = function()
            set_onedark_style 'warm'
          end,
        },
        {
          name = 'OneDark Warmer',
          colorscheme = 'onedark',
          config = function()
            set_onedark_style 'warmer'
          end,
        },
        {
          name = 'OneDark Light',
          colorscheme = 'onedark',
          config = function()
            set_onedark_style 'light'
          end,
        },
      },
    }
  end,
}
