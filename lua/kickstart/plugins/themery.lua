return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = {
        {
          name = 'catppucin latte',
          colorscheme = 'catppuccin-latte', -- Latte flavor
        },
        {
          name = 'catppucin frappe',
          colorscheme = 'catppuccin-frappe', -- Frappe flavor
        },
        {
          name = 'catppucin macchiatto',
          colorscheme = 'catppuccin-macchiato', -- Macchiato flavor
        },
        {
          name = 'catppucin mocha',
          colorscheme = 'catppuccin-mocha', -- Mocha flavor
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
          name = 'one dark (use <C-q>',
          colorscheme = 'onedark',
          config = function()
            require('onedark').setup {
              -- Main options --
              style = 'dark', -- Default theme style
              transparent = false, -- Show/hide background
              term_colors = true, -- Change terminal color as per the selected theme style
              ending_tildes = false, -- Show the end-of-buffer tildes
              cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

              -- Toggle theme style ---
              toggle_style_key = '<C-q>', -- Set keybinding to toggle style
              toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between

              -- Change code style ---
              code_style = {
                comments = 'italic',
                keywords = 'none',
                functions = 'none',
                strings = 'none',
                variables = 'none',
              },

              -- Lualine options --
              lualine = {
                transparent = false, -- lualine center bar transparency
              },

              -- Custom Highlights --
              colors = {}, -- Override default colors
              highlights = {}, -- Override highlight groups

              -- Plugins Config --
              diagnostics = {
                darker = true, -- darker colors for diagnostic
                undercurl = true, -- use undercurl instead of underline for diagnostics
                background = true, -- use background color for virtual text
              },
            }
          end,
        },
      },
    }
  end,
}
