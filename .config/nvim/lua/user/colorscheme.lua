local colorscheme = "oxocarbon"

local function setHighlights(bg, c, b)
  bg = bg or "dark"
  c = c or 240
  b = b or "#585858"
  vim.opt["background"] = bg
  -- lsp highlighting
  vim.api.nvim_set_hl(0, "LspReferenceRead", { ctermbg = c, bg = b })
  vim.api.nvim_set_hl(0, "LspReferenceText", { ctermbg = c, bg = b })
  vim.api.nvim_set_hl(0, "LspReferenceWrite", { ctermbg = c, bg = b })
  --[[ vim.api.nvim_set_hl(0, "DiagnosticInfo", { ctermbg = c, bg = b }) ]]
  --[[ vim.api.nvim_set_hl(0, "DiagnosticHint", { ctermbg = c, bg = b }) ]]
  --[[ vim.api.nvim_set_hl(0, "DiagnosticWarn", { ctermbg = c, bg = b }) ]]
  --[[ vim.api.nvim_set_hl(0, "DiagnosticError", { ctermbg = c, bg = b }) ]]
  vim.api.nvim_set_hl(0, "Pmenu", { ctermbg = 'none', bg = 'none', ctermfg = 'white', fg = 'white' })
end

local lightDefaults = { mode = "light", ctermbg = 256, bg = "#e4e4e4" }
local darkDefaults = { mode = "dark", ctermbg = 240, bg = "#585858" }

local colors = {
  -- light
  ["onehalflight"] = { name = "onehalflight", colors = lightDefaults },
  ["sunbather-light"] = { name = "sunbather", colors = lightDefaults },
  ["papercolor-light"] = { name = "PaperColor", colors = lightDefaults },
  ["carbonized-light"] = { name = "carbonized-light", colors = lightDefaults },
  ["paramount-light"] = { name = "paramount", colors = lightDefaults },
  ["pyte"] = { name = "pyte", colors = lightDefaults },

  -- dark
  ["abstract"] = { name = "abstract", colors = darkDefaults },
  ["onehalfdark"] = { name = "onehalfdark", colors = darkDefaults },
  ["sunbather-dark"] = { name = "sunbather", colors = darkDefaults },
  ["papercolor-dark"] = { name = "PaperColor", colors = darkDefaults },
  ["darkplus"] = { name = "darkplus", colors = darkDefaults },
  ["deus"] = { name = "deus", colors = darkDefaults },
  ["elflord"] = { name = "elflord", colors = darkDefaults },
  ["gruvbox"] = { name = "gruvbox", colors = darkDefaults },
  ["happy_hacking"] = { name = "happy_hacking", colors = darkDefaults },
  ["hybrid"] = { name = "hybrid", colors = darkDefaults },
  ["industry"] = { name = "industry", colors = darkDefaults },
  ["paramount-dark"] = { name = "paramount", colors = darkDefaults },
  ["sierra"] = { name = "sierra", colors = darkDefaults },
  ["onedarker"] = { name = "onedarker", colors = darkDefaults },
  ["moonfly"] = { name = "moonfly", colors = darkDefaults },
  ["system76"] = { name = "system76", colors = darkDefaults },
  ["tokyonight"] = { name = "tokyonight", colors = darkDefaults },
  ["ayu"] = { name = "ayu", colors = darkDefaults },
  ["oxocarbon"] = { name = "oxocarbon", colors = darkDefaults },
}

local function applyColorscheme(nickName)
  local scheme = colors[nickName]
  if not scheme then
    vim.notify("theme nickname missing or not supported")
    return
  end
  vim.cmd([[colorscheme ]] .. scheme.name)
  setHighlights(scheme.colors.mode, scheme.colors.ctermbg, scheme.colors.bg)
end

applyColorscheme(colorscheme)
-- vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]]) -- set background to inherit from terminal
-- vim.cmd([[hi CursorLine ctermbg=0 guibg=#000000]]) -- sets highlight line to black. makes it easier to read hint text

-- Favorite themes:
-- vim theme | iterm2 theme
-- [LIGHT]
-- onehalflight (via vim awesome themes) | onehalflight
-- sunbather | onehalflight
--
-- [DARK]
-- sunbather (via vim awesome) | One Dark (or anything with a black bg)
-- onehalfdark | onehalfdark
