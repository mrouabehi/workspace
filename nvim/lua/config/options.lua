local opt = vim.opt

-- [[ General ]]
opt.autowrite = true -- Auto write buffer when it's not focused
opt.clipboard = vim.env.SSH_TTY and '' or 'unnamedplus' -- System clipboard
opt.confirm = true -- Confirm before closing unsaved buffers
opt.showmode = false -- Don't show mode in command line
opt.showcmd = false -- Show partial command in last line
opt.virtualedit = 'onemore' -- Allow cursor one character beyond line end
opt.history = 500 -- Maximum command history
opt.timeout = true
opt.timeoutlen = 300 -- Time to wait for mapped sequence to complete
opt.ttimeoutlen = 10 -- Time in milliseconds to wait for a key code sequence to complete
opt.updatetime = 200 -- Faster completion
opt.mouse = 'a' -- Enable mouse support
opt.backspace = 'indent,eol,start' -- Make backspace behave normally

-- [[ File Management ]]
opt.backup = false -- Don't create backup files
opt.swapfile = false -- Don't create swap files
opt.undofile = true -- Enable persistent undo
opt.undolevels = 500 -- Maximum number of changes that can be undone
opt.writebackup = false -- Don't make backup before overwriting
opt.autoread = true -- Auto reload file if changed outside vim
opt.hidden = true -- Allow switching buffers without saving

-- Type and Syntax
opt.filetype = 'on'
opt.filetype.indent = 'on'
opt.filetype.plugin = 'on'
vim.cmd 'syntax enable' -- Enable syntax highlighting

-- [[ UI Configuration ]]
opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.cursorline = true -- Highlight current line
opt.colorcolumn = '81,121' -- Show column guidelines
opt.termguicolors = true -- True color support
opt.ruler = false -- Don't show cursor position in command line
opt.showmatch = true -- Highlight matching brackets
opt.foldcolumn = '1' -- Show fold column
opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99
opt.foldenable = true
opt.signcolumn = 'yes' -- Always show sign column
opt.laststatus = 3 -- Global status line
opt.scrolloff = 8 -- Lines of context above/below cursor
opt.sidescrolloff = 8 -- Columns of context left/right of cursor
opt.cmdheight = 1 -- Height of command line
opt.pumheight = 10 -- Maximum number of items in popup menu
opt.list = true -- Show invisible characters
opt.listchars = {
    tab = '→ ',
    extends = '⟩',
    precedes = '⟨',
    trail = '·',
    nbsp = '␣',
}
opt.shortmess:append {
    I = true, -- No splash screen
    W = true, -- Don't print "written" when writing
    a = true, -- Use abbreviations in messages
    c = true, -- Don't show completion messages
    F = true, -- Don't print file info when editing
}

-- [[ Editor Behavior ]]
-- Indentation
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4 -- Size of indent
opt.softtabstop = 4 -- Number of spaces tabs count for in insert mode
opt.tabstop = 4 -- Size of tab character
opt.smartindent = true -- Smart indenting
opt.autoindent = true -- Copy indent from current line
opt.smarttab = true -- Smart handling of tab character
opt.wrap = false -- Don't wrap lines
opt.breakindent = true -- Preserve indentation in wrapped text
opt.linebreak = true -- Break lines at word boundaries

-- Search
opt.ignorecase = true -- Ignore case in search
opt.smartcase = true -- Don't ignore case if pattern has uppercase
opt.hlsearch = true -- Highlight search results
opt.incsearch = true -- Show search matches while typing
opt.grepprg = 'rg --vimgrep' -- Use ripgrep for grepping
opt.grepformat = '%f:%l:%c:%m'

--------------------------------------------------------------------------------
-- Window and Buffer Management
--------------------------------------------------------------------------------
opt.splitright = true -- Open vertical splits to the right
opt.splitbelow = true -- Open horizontal splits below
opt.switchbuf = 'usetab' -- Use existing tab when switching buffers
opt.fillchars = {
    horiz = '━',
    horizup = '┻',
    horizdown = '┳',
    vert = '┃',
    vertleft = '┫',
    vertright = '┣',
    verthoriz = '╋',
    fold = ' ',
    eob = ' ',
    diff = '╱',
    msgsep = '‾',
}

--------------------------------------------------------------------------------
-- Completion and Wild Menu
--------------------------------------------------------------------------------
opt.completeopt = 'menu,menuone,noselect' -- Better completion
opt.wildmode = 'longest:full,full' -- Command-line completion mode
opt.wildignorecase = true -- Ignore case in file/dir completion
opt.wildignore:append {
    '*.o',
    '*.obj',
    '*.dylib',
    '*.bin',
    '*.dll',
    '*.exe',
    '*.pdf',
    '*.zip',
    '*.gz',
    '*.tar',
    '*.tar.gz',
    '.git',
    '.hg',
    '.svn',
    '*.pyc',
    '*/__pycache__/*',
    '*.DS_Store',
    '*/node_modules/*',
}

--------------------------------------------------------------------------------
-- Spell Checking
--------------------------------------------------------------------------------
opt.spell = false -- Disable spell checking by default
opt.spelllang = { 'en' } -- Default language for spell checking

--------------------------------------------------------------------------------
-- Performance
--------------------------------------------------------------------------------
opt.ttyfast = true -- Faster terminal connection
