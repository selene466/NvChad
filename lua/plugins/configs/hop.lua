local utils = require "core.utils"
local present, hop = pcall(require, "hop")

if not present then
    return
end

local options = {}
utils.load_mappings("hop")

-- check for any override
options = require("core.utils").load_override(options, "phaazon/hop.nvim")

hop.setup(options)
