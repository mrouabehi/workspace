return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    cmd = 'Telescope',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-fzf-native.nvim',
        'nvim-telescope/telescope-file-browser.nvim',
    },
    keys = {
        -- Most used
        { '<leader>,', '<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>', desc = 'Switch Buffer' },
        { '<leader>/', '<cmd>Telescope live_grep<cr>', desc = 'Find in Files (Grep)' },
        { '<leader>:', '<cmd>Telescope command_history<cr>', desc = 'Command History' },

        -- Files and Search
        { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Search Files' },
        { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' },
        { '<leader>fw', '<cmd>Telescope grep_string<cr>', desc = 'Find Word' },
        { '<leader>fb', '<cmd>Telescope file_browser<cr>', desc = 'File Browser' },
        { '<leader>fr', '<cmd>Telescope oldfiles<cr>', desc = 'Recent Files' },
        { '<leader>fk', '<cmd>Telescope keymaps<cr>', desc = 'Keymaps' },
        { '<leader>fh', '<cmd>Telescope git_files<cr>', desc = 'Search Git' },
    },
    opts = {
        defaults = {
            prompt_prefix = ' ',
            selection_caret = ' ',
            vimgrep_arguments = {
                "rg",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
                "--trim",
                "--glob",
                "!{**/.git/*,**/node_modules/*,**/package-lock.json,**/yarn.lock,**/pnpm-lock.json}"

            },
        },
        pickers = {
            find_files = {
                hidden = false,
                -- find_command = { 'fd', '--type', 'f', '--strip-cwd-prefix' },
                find_command = {
                    'rg',
                    '--files',
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                    "--trim",
                    "--no-require-git",
                    "--glob",
                    "!{**/.git/*,**/node_modules/*,**/package-lock.json,**/yarn.lock,**/pnpm-lock.json}"
                },
            },
        },
        extensions = {
            fzf = {
                fuzzy = true,
                override_generic_sorter = true,
                override_file_sorter = true,
                case_mode = 'smart_case',
            },
            file_browser = {
                hijack_netrw = true,
                hidden = { file_browser = false, folder_browser = false },
                theme = 'ivy',
            },
        },
    },
    config = function(_, opts)
        local telescope = require('telescope')
        telescope.setup(opts)
        telescope.load_extension('fzf')
        telescope.load_extension('file_browser')
    end,
}
