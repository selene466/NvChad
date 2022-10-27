local opt = vim.opt
local g = vim.g
local config = require("core.utils").load_config()

vim.cmd([[let &showbreak = '>>>   ']])

g.nvchad_theme = config.ui.theme
g.toggle_theme_icon = "   "
g.transparency = config.ui.transparency
g.theme_switcher_loaded = false

opt.laststatus = 3 -- global statusline
opt.showmode = false

opt.title = true
opt.clipboard = "unnamedplus"
opt.cursorline = true

-- Own
opt.wfw = true
opt.equalalways = false
opt.backup = false
opt.writebackup = false
opt.compatible = false
opt.swapfile = false
opt.undofile = true
opt.shadafile = "NONE"
opt.colorcolumn = "79"
opt.encoding = "UTF-8"
opt.fileencoding = "UTF-8"
opt.hlsearch = true
opt.incsearch = true
opt.hidden = true
opt.guicursor = "n-v-c:block-Cursor,i:hor1-iCursor"
opt.lazyredraw = true
opt.linebreak = true
opt.cpoptions = "n"
opt.background = "dark"
opt.showcmd = true
-- opt.showtabline = 2
-- opt.shortmess = "csF"
opt.splitbelow = true
opt.splitright = true
opt.pumheight = 10
opt.cmdheight = 1
opt.backspace = "indent,eol,start"

opt.cursorline = true
opt.list = true
opt.listchars = {
    tab = "»  ",
    trail = "·",
    precedes = "‹",
    extends = "›",
    eol = "←",
    nbsp = "␣"
}

opt.exrc = true
opt.secure = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2
opt.autoindent = true
opt.smartindent = true
opt.cindent = true
opt.foldmethod = "indent"
opt.foldlevel = 99
opt.foldopen = {
    "percent",
    "search"
}
opt.scrolloff = 4

opt.fillchars = {eob = " "}
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Numbers
opt.relativenumber = true
opt.number = true
opt.numberwidth = 2
opt.ruler = false

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"

g.mapleader = " "

-- disable some builtin vim plugins
local default_plugins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
    "tutor",
    "rplugin",
    "syntax",
    "synmenu",
    "optwin",
    "compiler",
    "bugreport",
    "ftplugin"
}

for _, plugin in pairs(default_plugins) do
    g["loaded_" .. plugin] = 1
end

local default_providers = {
    "node",
    "perl",
    "python3",
    "ruby"
}

for _, provider in ipairs(default_providers) do
    vim.g["loaded_" .. provider .. "_provider"] = 0
end
