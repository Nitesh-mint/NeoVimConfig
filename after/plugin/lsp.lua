local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
end)

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "eslint", "pyright", "csharp_ls", "ts_ls" },
	handlers = {
		function(server_name)
			if server_name == "tsserver" then
				require("lspconfig").tsserver.setup({
					on_attach = function(client, bufnr)
						lsp_zero.default_keymaps({ buffer = bufnr })
						vim.keymap.set("n", "gd", function()
							vim.lsp.buf.definition()
						end, { buffer = bufnr })
					end,
					settings = {
						typescript = {
							inlayHints = {
								includeInlayParameterNameHints = "all",
								includeInlayParameterNameHintsWhenArgumentMatchesName = false,
								includeInlayFunctionParameterTypeHints = true,
								includeInlayVariableTypeHints = true,
							},
						},
						javascript = {
							inlayHints = {
								includeInlayParameterNameHints = "all",
								includeInlayParameterNameHintsWhenArgumentMatchesName = false,
								includeInlayFunctionParameterTypeHints = true,
								includeInlayVariableTypeHints = true,
							},
						},
					},
				})
			else
				require("lspconfig")[server_name].setup({})
			end
		end,
	},
})

-- configure autocomplete
local cmp = require("cmp")

cmp.setup({
	mapping = {
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<M-Tab>"] = cmp.mapping.select_prev_item(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	},
	sources = {
		{ name = "nvim_lsp" },
	},
})
