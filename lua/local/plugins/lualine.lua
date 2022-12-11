M = {}
local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

local lualine_scheme = "nord"
-- local lualine_scheme = "nord"

local status_theme_ok, theme = pcall(require, "lualine.themes." .. lualine_scheme)
if not status_theme_ok then
  return
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = theme,
    section_separators = '',
    component_separators = '',
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      'branch',
      'diff',
      'diagnostics'
    },
    lualine_c = {
      'filename',
      'lsp_progress'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
