-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
    hl_override = {
        -- override
        CursorLineNr = {bg = "#FFba00", fg = "#1f2335"},
        LineNr = {fg = "#5081c0"},
        Visual = {bg = "#FFba00", fg = "#000000"},
        ColorColumn = {bg = "#1f2335"},
        TabLine = {bg = "#343455", fg = "#7aa2f7"},
        Search = {bg = "red", fg = "black"}
    },
    hl_add = {
        -- plugin related
        -- "andymass/vim-matchup"
        MatchParen = {bg = "yellow", fg = "black"},
        MatchWord = {bg = "brown", fg = "white"},
        MatchWordCur = {bg = "yellow", fg = "black"},
        -- "phaazon/hop.nvim"
        HopNextKey = {bg = "#FFba00", fg = "black"},
        HopNextKey1 = {bg = "#FFba00", fg = "black"},
        HopNextKey2 = {bg = "#ff0000", fg = "white"},
        HopUnmatched = {fg = "white"}
    },
    theme_toggle = {"tokyonight", "gatekeeper"},
    theme = "tokyonight",
    transparency = true
}

M.hop = {
    hl_override = {
        HopNextKey = {bg = "yellow", fg = "black"},
        HopNextKey1 = {bg = "yellow", fg = "black"},
        HopNextKey2 = {bg = "yellow", fg = "black"},
        HopUnmatched = {bg = "yellow", fg = "black"}
    }
}

return M
