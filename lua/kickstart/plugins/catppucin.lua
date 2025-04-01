-- Catppuccin Setup with Themery Integration
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- Load early
  config = function()
    -- Setup Catppuccin colorscheme
    require("catppuccin").setup({
      flavour = "mocha", -- You can change this to "latte", "frappe", or "macchiato" if needed
      integrations = {
        treesitter = true,
        gitsigns = true,
        telescope = true,
        cmp = true,
        nvimtree = true,
        lsp_saga = true,
        mason = true,
      }
    })
  end
}

