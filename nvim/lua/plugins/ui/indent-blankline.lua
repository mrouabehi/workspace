local exclude_filetypes = { 'help', 'git' }

return {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPost",
    main = "ibl",
    opts = {
        indent = {
            char = "│",
            tab_char = "│"
        },

        scope = {
            enabled = true,
            show_start = false,
            show_end = false,
            injected_languages = true
        },

        exclude = {
            filetypes = exclude_filetypes
        },

        whitespace = {
            remove_blankline_trail = true
        }
    },
    config = function(_, opts)
        require('ibl').setup(opts)
    end
}
