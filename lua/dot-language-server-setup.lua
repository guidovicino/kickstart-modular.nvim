vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "*.dot" },
    callback = function()
        vim.lsp.start({
            name = "dot",
            cmd = { "dot-language-server", "--stdio" }
        })
    end,
})
