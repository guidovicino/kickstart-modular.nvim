local logo = [[
░   ░░░  ░        ░░      ░░  ░░░░  ░        ░  ░░░░  ░
▒    ▒▒  ▒  ▒▒▒▒▒▒▒  ▒▒▒▒  ▒  ▒▒▒▒  ▒▒▒▒  ▒▒▒▒   ▒▒   ▒
▓  ▓  ▓  ▓      ▓▓▓  ▓▓▓▓  ▓▓  ▓▓  ▓▓▓▓▓  ▓▓▓▓        ▓
█  ██    █  ███████  ████  ███    ██████  ████  █  █  █
█  ███   █        ██      █████  ████        █  ████  █
                                           @guidovicino
]]

logo = string.rep("\n", 8) .. logo .. "\n\n"

local db = require("dashboard")
db.setup({
    theme = 'hyper',
    config = {
        header = vim.split(logo, "\n"),
        week_header = {
            enable = false,
        },
        shortcut = {
            { action = "ene | startinsert", desc = "New", group = 'Normal', icon = " ", key = "n" },
            { action = "Neotree", desc = "Projects", group = 'DiagnosticWarn', icon = ' ', key = "p" },
            { action = "Telescope find_files", desc = "Files", group = 'DiagnosticInfo', icon = " ", key = "f" },
            { action = "Telescope live_grep", desc = "Find", group = 'DiagnosticHint', icon = " ", key = "g" },
            { action = "Lazy update", desc = "Update", group = 'Number', icon = "󰊳 ", key = "u" },
            { action = "qa", desc = "Quit", group = 'Label', icon = " ", key = "q" },
        },
    },
})
