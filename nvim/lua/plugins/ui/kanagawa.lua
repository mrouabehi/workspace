return {
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    lazy = false,
    priority = 1000,
    opts = {
        style = 'wave',
    },
    config = function()
        vim.cmd('colorscheme kanagawa')
    end,
}
