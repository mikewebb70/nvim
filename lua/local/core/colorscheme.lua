-- local colorscheme = "nord"
local colorscheme = "nord"

-- Nord theme configuration
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = true 
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = true
vim.g.nord_italic_comments = true

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  -- vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

