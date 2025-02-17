-- <CR> means pressing Enter after the command
-- silent: True Don't show command in the command line
-- noremap: Don't allow this mapping to be remaped by other configs 

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set("v", "<leader>y", '"+y', opts)
vim.keymap.set("n", "<leader>/", 'gcc', { noremap = true, silent = true})
vim.keymap.set("v", "<leader>/", 'gc', { noremap =true, silent = true })
vim.keymap.set("n", "<leader>pp", ':Lspsaga peek_definition<CR>', {silent=true, noremap=true})
vim.keymap.set("n","<leader>p",':Lspsaga hover_doc<CR>', {silent=true, noremap=true})
