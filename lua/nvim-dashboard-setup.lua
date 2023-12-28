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
      { action = "ene | startinsert", desc = "New", group = '@property', icon = " ", key = "n" },
      { action = "Telescope find_files", desc = "Files", group = '@variable', icon = " ", key = "f" },
      { action = "Telescope live_grep", desc = "Find", group = 'Label', icon = " ", key = "g" },
      { action = "Lazy update", desc = "Update", group = 'DiagnosticHint', icon = "󰊳 ", key = "u" },
      { action = "qa", desc = "Quit", group = 'Number', icon = " ", key = "q" },
    },
  },
})
