local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
    return
end

require("base46").load_highlight "treesitter"

local options = {
    context_commentstring = {
        enable = true,
        config = {
            css = "/* %s */",
            scss = "/* %s */",
            javascript = {
                __default = "// %s",
                jsx_element = "{/* %s */}",
                jsx_fragment = "{/* %s */}",
                jsx_attribute = "// %s",
                comment = "// %s"
            },
            typescript = {
                __default = "// %s",
                jsx_element = "{/* %s */}",
                jsx_fragment = "{/* %s */}",
                jsx_attribute = "// %s",
                comment = "// %s"
            },
            python = "# %s",
            sh = "# %s",
            vim = '" %s',
            html = "<!-- %s -->"
        }
    },
    ensure_installed = {
        "c",
        "cpp",
        "css",
        "html",
        "java",
        "javascript",
        "typescript",
        "vue",
        "json",
        "php",
        "python",
        "scss",
        "toml",
        "yaml"
    },
    highlight = {
        enable = true,
        use_languagetree = true
    },
    indent = {
        enable = true
    },
    matchup = {
        enable = true
    }
}

-- check for any override
options = require("core.utils").load_override(options, "nvim-treesitter/nvim-treesitter")

treesitter.setup(options)
