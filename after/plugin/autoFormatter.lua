local auto_formatter = require("conform")

auto_formatter.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },
		-- You can customize some of the format options for the filetype (:help conform.format)
		rust = { "rustfmt" },
		-- Conform will run the first available formatter
		javascript = { "prettierd", "prettier", stop_after_first = true },
		javascriptreact = { "prettired", "prettier", stop_after_first = true },
		typescript = { "prettired", "prettier", stop_after_first = true },
		typescriptreact = { "prettired", "prettier", stop_after_first = true },
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_format = true,
	},
})
