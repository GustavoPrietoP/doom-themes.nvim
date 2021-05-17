local util = {}
local moonlight = require('doom-moonlight.theme')

-- Go trough the table and highlight the group with the color values
util.highlight = function (group, color)
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
    local sp = color.sp and "guisp=" .. color.sp or ""

    local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

    vim.cmd(hl)
    if color.link then vim.cmd("highlight! link " .. group .. " " .. color.link) end
end

-- Only define Moonlight if it's the active colorshceme
function util.onColorScheme()
  if vim.g.colors_name ~= "moonlight" then
    vim.cmd [[autocmd! Moonlight]]
    vim.cmd [[augroup! Moonlight]]
  end
end

-- Change the background for the terminal, packer and qf windows
util.contrast = function ()
    vim.cmd [[augroup Moonlight]]
    vim.cmd [[  autocmd!]]
    vim.cmd [[  autocmd ColorScheme * lua require("moonlight.util").onColorScheme()]]
    vim.cmd [[  autocmd TermOpen * setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]]
    vim.cmd [[  autocmd FileType packer setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]]
    vim.cmd [[  autocmd FileType qf setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]]
    vim.cmd [[augroup end]]
end

-- Load the theme
function util.load()
    -- Set the theme environment
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "moonlight"

    -- Load plugins, treesitter and lsp async
    local async
    async = vim.loop.new_async(vim.schedule_wrap(function ()
        moonlight.loadTerminal()

        -- imort tables for plugins, treesitter and lsp
        local plugins = moonlight.loadPlugins()
        local treesitter = moonlight.loadTreeSitter()
        local lsp = moonlight.loadLSP()

        -- loop trough the plugins table and highlight every member
        for group, colors in pairs(plugins) do
            util.highlight(group, colors)
        end

        -- loop trough the treesitter table and highlight every member
        for group, colors in pairs(treesitter) do
            util.highlight(group, colors)
        end

        -- loop trough the lsp table and highlight every member
        for group, colors in pairs(lsp) do
            util.highlight(group, colors)
        end

        -- if contrast is enabled, apply it to sidebars and floating windows
        if vim.g.moonlight_contrast == true then
            util.contrast()
        end
        async:close()

    end))

    -- load the most importaint parts of the theme
    local editor = moonlight.loadEditor()
    local syntax = moonlight.loadSyntax()

    -- load editor highlights
    for group, colors in pairs(editor) do
        util.highlight(group, colors)
    end

    -- load syntax highlights
    for group, colors in pairs(syntax) do
        util.highlight(group, colors)
    end

    -- load the rest later ( lsp, treesitter, plugins )
    async:send()
end

return util
