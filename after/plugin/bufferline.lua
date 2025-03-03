vim.opt.termguicolors = true

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

require("bufferline").setup({
    options = {
        mode = "buffers",
        separator_style = "thin",
        always_show_bufferline = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        color_icons = true
    },
    highlights = require("catppuccin.groups.integrations.bufferline").get()
})
