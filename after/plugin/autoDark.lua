local auto_dark_mode = require('auto-dark-mode')

auto_dark_mode.setup({
    update_interval = 1000,
    set_dark_mode = function()
        vim.api.nvim_set_option_value('background', 'dark', {})
        vim.g.catppuccin_flavour = 'mocha'
        vim.cmd('colorscheme catppuccin')
    end,
    set_light_mode = function()
        vim.api.nvim_set_option_value('background', 'light', {})
        vim.g.catppuccin_flavour = 'latte'
        vim.cmd('colorscheme catppuccin')
    end,
})

auto_dark_mode.init()
