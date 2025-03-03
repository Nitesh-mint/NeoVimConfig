-- require("catppuccin").setup({
--     flavour = "mocha", -- Choose your preferred flavor: latte, frappe, macchiato, mocha
-- })

-- function ColorMyPencils(color)
-- 	color = color or "catppuccin"
-- 	vim.cmd.colorscheme(color)
-- end

-- ColorMyPencils()

-- vim.cmd.colorscheme("catppuccin")

-- Define global Catppuccin settings
vim.g.catppuccin_flavour = 'mocha' -- Default flavor (used as a fallback)
require('catppuccin').setup({
    -- Add any custom Catppuccin configuration here
})
