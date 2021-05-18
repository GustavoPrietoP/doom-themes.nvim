local util = require("doom-tokyonight.util")
local theme = require("doom-tokyonight.theme")

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

return M
