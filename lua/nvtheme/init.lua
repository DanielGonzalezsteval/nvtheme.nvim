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
		syntax     = true,
	}
}

M.themes = require("nvtheme.themes." .. M.config.theme)
M.colors = M.themes.colors
M.base_16 = M.themes.base_16

M.setup = function(opts)
	opts = opts or {}
	opts = vim.tbl_deep_extend("force", opts, M.config)

	local result = {}
	local integrations = {
		treesitter = require("nvtheme.integrations.treesitter"),
		neogit = require("nvtheme.integrations.neogit"),
		telescope = require("nvtheme.integrations.telescope"),
		lsp = require("nvtheme.integrations.lsp"),
		defaults = require("nvtheme.integrations.defaults"),
		blink = require("nvtheme.integrations.blink"),
		syntax = require("nvtheme.integrations.syntax"),
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

	local polish = M.themes.polish_hl
	if polish then
		result = vim.tbl_deep_extend("force", result, polish)
	end

	for group, values in pairs(result) do
		vim.api.nvim_set_hl(0, group, values)
	end
end

return M
