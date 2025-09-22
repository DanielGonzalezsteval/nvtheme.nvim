-- idk about lines below I stole it from the nvchad https://github.com/NvChad/base46/blob/v3.0/lua/base46/integrations/treesitter.lua
--
-- Credits to original https://github.com/NTBBloodbath/doom-one.nvim
-- This is modified version of it

local M = {}

M.colors = {
  white = "#abb2bf",
  darker_black = "#1b1f27",
  black = "#1e222a", --  nvim bg
  black2 = "#252931",
  one_bg = "#282c34", -- real bg of onedark
  one_bg2 = "#353b45",
  one_bg3 = "#373b43",
  grey = "#42464e",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  light_grey = "#6f737b",
  red = "#e06c75",
  baby_pink = "#DE8C92",
  pink = "#ff75a0",
  line = "#31353d", -- for lines like vertsplit
  green = "#98c379",
  vibrant_green = "#7eca9c",
  nord_blue = "#81A1C1",
  blue = "#61afef",
  yellow = "#e7c787",
  sun = "#EBCB8B",
  purple = "#de98fd",
  dark_purple = "#c882e7",
  teal = "#519ABA",
  orange = "#fca2aa",
  cyan = "#a3b8ef",
  statusline_bg = "#22262e",
  lightbg = "#2d3139",
  pmenu_bg = "#61afef",
  folder_bg = "#61afef",
}
-- M.colors = {
-- 	bg = "#282c34",
-- 	fg = "#bbc2cf",
--
-- 	bg_alt = "#21242b",
-- 	fg_alt = "#5b6268",
--
-- 	base0 = "#1b2229",
-- 	base1 = "#282c34",
-- 	base2 = "#32363e",
-- 	base3 = "#3c4048",
-- 	base4 = "#4e525a",
-- 	base5 = "#5a5e66",
-- 	base6 = "#a7aebb",
-- 	base7 = "#b3bac7",
-- 	base8 = "#bbc2cf",
--
-- 	red = "#ff6c6b",
-- 	orange = "#ea9558",
-- 	yellow = "#ECBE7B",
-- 	green = "#50a14f",
-- 	teal = "#98be65",
-- 	cyan = "#66c4ff",
-- 	magenta = "#a626a4",
-- 	violet = "#dc8ef3",
-- 	blue = "#48a6e6",
-- 	dark_red = "#c85a50",
-- 	grey = "#9ca0a4",
-- 	dark_blue = "#a0bcf8",
-- 	dark_cyan = "#005478",
--
-- }
-- M.light_colors = {
-- 	bg = "#fafafa",
-- 	fg = "#383a42",
--
-- 	bg_alt = "#f0f0f0",
-- 	fg_alt = "#c6c7c7",
--
-- 	base0 = "#bbc2cf",
-- 	base1 = "#b3bac7",
-- 	base2 = "#a7aebb",
-- 	base3 = "#5a5e66",
-- 	base4 = "#4e525a",
-- 	base5 = "#3c4048",
-- 	base6 = "#32363e",
-- 	base7 = "#282c34",
-- 	base8 = "#1b2229",
--
-- 	red = "#ff6c6b",
-- 	orange = "#ea9558",
-- 	yellow = "#ECBE7B",
-- 	green = "#50a14f",
-- 	teal = "#98be65",
-- 	cyan = "#66c4ff",
-- 	magenta = "#a626a4",
-- 	violet = "#dc8ef3",
-- 	blue = "#48a6e6",
-- 	dark_red = "#c85a50",
-- 	grey = "#9ca0a4",
-- 	dark_blue = "#a0bcf8",
-- 	dark_cyan = "#005478",
--
-- }

M.polish_hl = {
	treesitter = {
		["@variable.member"] = { fg = M.colors.blue },
		["@punctuation.bracket"] = { fg = M.colors.yellow },
	},
}

M.type = "dark"

return M
