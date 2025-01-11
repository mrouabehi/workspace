return {
    'nvim-treesitter/nvim-treesitter',
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter.config').setup({
            ensure_installed = {
                'html',
                'css',
                'scss',
                'javascript',
                'typescript',
                'tsx',
                'json',
                'jsonc',
                'yaml',
                'vue',
                'angular',
                'astro',

                'bash',
                'c',
                'rust',
                'sql',
                'prisma',
                'dockerfile',
                'dot',

                'vim',
                'lua',
                'regex',

                'markdown',
                'markdown_inline',

                'gitignore',
                'git_config',
                'editorconfig',
            },

            highlight = {
                enable = true,
            },
        })
    end
}
