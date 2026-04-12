local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.vinx = {
    install_info = {
        -- Change this url to your grammar
        url = "https://github.com/hohran/tree-sitter-vinx.git",
        files = { "src/parser.c" },
        generate_reqires_npm = true,
        requires_generate_from_grammar = true,
    },
    -- The filetype you want it registered as
    filetype = "vinx",
    used_by = {"vinx"},
}
vim.filetype.add({ extension = { vinx = 'vinx' } })
