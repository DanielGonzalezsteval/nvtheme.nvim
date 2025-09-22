local theme = require("nvtheme").colors

local opts = require("nvtheme").config

return {

	["@variable"] = { fg = theme.white },
	["@variable.builtin"] = { fg = theme.orange },
	["@variable.parameter"] = { fg = theme.red },
	["@variable.member"] = { fg = theme.red },
	["@variable.member.key"] = { fg = theme.red },

	["@module"] = { fg = theme.red },
	-- ["@module.builtin"] = { fg = theme.red },

	["@constant"] = { fg = theme.orange },
	["@constant.builtin"] = { fg = theme.orange },
	["@constant.macro"] = { fg = theme.red },

	["@string"] = { fg = theme.green },
	["@string.regex"] = { fg = theme.cyan },
	["@string.escape"] = { fg = theme.cyan },
	["@character"] = { fg = theme.red },
	-- ["@character.special"] = { fg = theme.red },
	["@number"] = { fg = theme.orange },
	["@number.float"] = { fg = theme.orange },

	["@annotation"] = { fg = theme.red },
	["@attribute"] = { fg = theme.yellow },
	["@error"] = { fg = theme.red },

	["@keyword.exception"] = { fg = theme.red },
	["@keyword"] = { fg = theme.pink },
	["@keyword.function"] = { fg = theme.pink },
	["@keyword.return"] = { fg = theme.pink },
	["@keyword.operator"] = { fg = theme.pink },
	["@keyword.import"] = { link = "Include" },
	["@keyword.conditional"] = { fg = theme.pink },
	["@keyword.conditional.ternary"] = { fg = theme.pink },
	["@keyword.repeat"] = { fg = theme.yellow },
	["@keyword.storage"] = { fg = theme.yellow },
	["@keyword.directive.define"] = { fg = theme.pink },
	["@keyword.directive"] = { fg = theme.yellow },

	["@function"] = { fg = theme.teal },
	["@function.builtin"] = { fg = theme.teal },
	["@function.macro"] = { fg = theme.red },
	["@function.call"] = { fg = theme.teal },
	["@function.method"] = { fg = theme.teal },
	["@function.method.call"] = { fg = theme.teal },
	["@constructor"] = { fg = theme.cyan },

	["@operator"] = { fg = theme.white },
	["@reference"] = { fg = theme.white },
	["@punctuation.bracket"] = { fg = theme.red },
	["@punctuation.delimiter"] = { fg = theme.red },
	["@symbol"] = { fg = theme.green },
	["@tag"] = { fg = theme.yellow },
	["@tag.attribute"] = { fg = theme.red },
	["@tag.delimiter"] = { fg = theme.red },
	["@text"] = { fg = theme.white },
	["@text.emphasis"] = { fg = theme.orange },
	["@text.strike"] = { fg = theme.red, strikethrough = true },
	["@type.builtin"] = { fg = theme.yellow },
	["@definition"] = { sp = theme.grey_fg, underline = true },
	["@scope"] = { bold = true },
	["@property"] = { fg = theme.red },

	-- markup
	["@markup.heading"] = { fg = theme.teal },
	["@markup.raw"] = { fg = theme.orange },
	["@markup.link"] = { fg = theme.red },
	["@markup.link.url"] = { fg = theme.orange, underline = true },
	["@markup.link.label"] = { fg = theme.cyan },
	["@markup.list"] = { fg = theme.red },
	["@markup.strong"] = { bold = true },
	["@markup.underline"] = { underline = true },
	["@markup.italic"] = { italic = true },
	["@markup.strikethrough"] = { strikethrough = true },
	["@markup.quote"] = { bg = opts.transparency and nil or theme.black2 },

	["@comment"] = { fg = theme.grey_fg },
	["@comment.todo"] = { fg = theme.grey, bg = theme.white },
	["@comment.warning"] = { fg = theme.black2, bg = theme.orange },
	["@comment.note"] = { fg = theme.black, bg = theme.blue },
	["@comment.danger"] = { fg = theme.black2, bg = theme.red },

	["@diff.plus"] = { fg = theme.green },
	["@diff.minus"] = { fg = theme.red },
	["@diff.delta"] = { fg = theme.light_grey },
}
