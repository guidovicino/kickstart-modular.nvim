-- Configure Syntax Highlighting
vim.g.pico8_config = {
    colorize_graphics = true,
    imitate_console = true,
    pico8_args = '',
    pico8_path = '$HOME/Sources/pico-8/pico8',
    use_keymap = true
}

-- vim.treesitter.language.register("lua", "pico8")

-- Configure LSP Client (pico8-ls)
vim.api.nvim_create_autocmd({ 'BufNew', 'BufEnter' }, {
    pattern = { '*.p8' },
    callback = function(args)
        vim.lsp.start({
            name = 'pico8-ls',
            cmd = { 'pico8-ls', '--stdio' },
            root_dir = vim.fs.dirname(vim.api.nvim_buf_get_name(args.buf)),
            -- Setup your keybinds in the on_attach function
            on_attach = on_attach,
        })
    end
})
