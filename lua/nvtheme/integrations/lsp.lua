local colors = require("nvtheme").colors

return {
  -- LSP References
  LspReferenceText = { bg = colors.one_bg3 },
  LspReferenceRead = { bg = colors.one_bg3 },
  LspReferenceWrite = { bg = colors.one_bg3 },

  -- Lsp Diagnostics
  DiagnosticHint = { fg = colors.purple },
  DiagnosticError = { fg = colors.red },
  DiagnosticWarn = { fg = colors.yellow },
  DiagnosticInfo = { fg = colors.green },
  LspSignatureActiveParameter = { fg = colors.black, bg = colors.green },

  LspInlayHint = {
    bg = colors.black2,
    fg = colors.light_grey,
  },
}

