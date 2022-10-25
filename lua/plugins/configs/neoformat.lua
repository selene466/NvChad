local present, neoformat = pcall(require, "neoformat")

if not present then
  return
end

local options = {}

-- check for any override
options = require("core.utils").load_override(options, "sbdchd/neoformat")

neoformat.setup(options)
