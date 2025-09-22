local M = {}

M.config = {
	theme = "onedark",
	transparency = true,
	integrations = {
		treesitter = true,
		neogit     = true,
		telescope  = true,
		lsp        = true,
		defaults   = true,
		blink      = true,
	}
}

M.colors = require("nvtheme.themes." .. M.config.theme).colors

M.setup = function(opts)
	opts = opts or M.config
	vim.api.nvim_command('hi clear')
	if vim.fn.exists('syntax_on') then
		vim.api.nvim_command('syntax reset')
	end

	vim.g.colors_name = 'nvtheme'

	local result = {}
	local integrations = {
		treesitter = require("nvtheme.integrations.treesitter"),
		neogit = require("nvtheme.integrations.neogit"),
		telescope = require("nvtheme.integrations.telescope"),
		lsp = require("nvtheme.integrations.lsp"),
		defaults = require("nvtheme.integrations.defaults"),
		blink = require("nvtheme.integrations.blink"),
	}

	result = vim.tbl_deep_extend("force", result, integrations.blink)

	for name, fields in pairs(integrations) do
		if opts.integrations[name] then
			result = vim.tbl_deep_extend("force", result, fields)
		end
	end

	if opts.transparency then
		transparent = require("nvtheme.transparent")
		result = vim.tbl_deep_extend("force", result, transparent)
	end

	for group, values in pairs(result) do
		vim.api.nvim_set_hl(0, group, values)
	end
end

return M
