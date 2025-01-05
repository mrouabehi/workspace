return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VeryLazy',
    opts = {
        options = {
            theme = 'auto',
            globalstatus = true,
            disabled_filetypes = { statusline = { 'dashboard', 'alpha' } },
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch', 'diff', 'diagnostics' },
            lualine_c = {
                { 'filetype', icon_only = true, separator = '', padding = { left = 1, right = 0 } },
                { 'filename', path = 1, symbols = { modified = '  ', readonly = '  ', unnamed = '' } },
            },

            lualine_x = { 'encoding', 'fileformat', 'filetype' },
            lualine_y = {
                { 'progress', separator = ' ', padding = { left = 1, right = 0 } },
                { 'location', padding = { left = 0, right = 1 } },
            },
            lualine_z = {
                function()
                    return ' ' .. os.date('%R')
                end,
            },
        },
    },
}
