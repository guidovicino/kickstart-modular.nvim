-- 'github/codecompanion.vim'

return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    opts = {
        log_level = "DEBUG",

        -- strategie: quale adapter usare per chat/inline/cmd
        strategies = {
            chat   = { adapter = "openrouter" },
            inline = { adapter = "openrouter" },
            cmd    = { adapter = "openrouter" },
        },

        -- definizione adapter "openrouter" basato sull'OpenAI-compatible
        adapters = {
            openrouter = function()
                return require("codecompanion.adapters").extend("openai_compatible", {
                    env = {
                        -- base URL OpenRouter (OpenAI-compat)
                        url = "https://openrouter.ai/api",
                        api_key = "OPENROUTER_API_KEY",
                        -- l’endpoint chat è quello OpenAI-style
                        chat_url = "/v1/chat/completions",
                    },
                    -- imposta un modello di default (cambialo a piacere)
                    schema = {
                        model = { default = "deepseek/deepseek-chat-v3-0324:free" },
                    },
                })
            end,
        },
    },

    keys = {
        { "<leader>ac", "<cmd>CodeCompanionChat<cr>",    desc = "AI Chat" },
        { "<leader>ai", "<cmd>CodeCompanionInline<cr>",  desc = "AI Inline Edit" },
        { "<leader>aa", "<cmd>CodeCompanionAsk<cr>",     desc = "Ask AI (selected)" },
        { "<leader>aA", "<cmd>CodeCompanionActions<cr>", desc = "AI Actions/Tools" },
    },
}
