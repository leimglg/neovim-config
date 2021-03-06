require("which-key").setup {
    plugins = {
        spelling = { enabled = true, suggestions = 20, },
        presets = { operators = false, motions = false, text_objects = false, windows = false, nav = false, z = false, g = false, },
    },
    icons = { breadcrumb = "»", separator = "→", group = "+", },
    popup_mappings = { scroll_down = '<c-d>', scroll_up = '<c-u>', },
    layout = { height = { min = 5, max = 20 }, width = { min = 20, max = 35 }, spacing = 3, align = "center", },
    ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
    hidden = {}, -- hide mapping boilerplate,  "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "
    show_help = true, -- show help message on the command line when the popup is visible
    triggers = "auto", -- automatically setup triggers, triggers = {"<leader>"} -- or specify a list manually
    triggers_blacklist = {
        i = { "j", "k" },
        v = { "j", "k" },
        c = { "j" },
    },
}

require("which-key").register({

    -- [';'] = { name = ";",
    --     [';'] = { "/(00)<CR>v4l", "find next (00)"},
    --     [':'] = { "/(00)<CR>Nv4l", "find previous (00)"},
    -- },

    ['['] = { name = "jump previous",
        [']'] = { "[]", "function end"},
        ['['] = { "[[", "function start"},
        c = { "<Plug>(GitGutterPrevHunk)", "git hunk"},
        p = { "`[", "paste start" },
        q = { ":cprev<CR>", "quickfix"},
        Q = { ":cfirst<CR>", "First quickfix"},
        s = { "[s", "spell error"},
    },
    [']'] = { name = "jump next",
        [']'] = { "]]", "function start"},
        ['['] = { "][", "function end"},
        c = { "<Plug>(GitGutterNextHunk)", "git hunk"},
        p = { "`]", "paste end" },
        q = { ":cnext<CR>", "quickfix"},
        Q = { ":clast<CR>", "Last quickfix"},
        s = { "]s", "spell error"},
    },
    [' '] = { name = "<SPC>",
        ['?'] = { "<cmd>Telescope help_tags<cr>", "Find in help tags"},
        [':'] = { "<cmd>Telescope command_history<cr>", "Find in command history"},
        e = { "<cmd>Telescope file_browser<cr>", "Search files"},
        E = { "<cmd>Telescope find_files<cr>", "File explorer"},
        f = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Find in current file"},
        F = { "<cmd>Telescope live_grep<cr>", "Find in current folder"},
        q = { "<C-w>j:q<CR>", "Quit the window under current window"},
        r = { "<cmd>Telescope registers<cr>", "Open register"},
        T = { ":term<cr>", "Open terminal"},
        z = { "za", "Toggle fold code"},
        l = { name = "formatting",
            t = { ":Tabularize /", "Tabularize", silent=false},
        },
        v = { name = "view",
            m = {":MarkdownPreview<CR>", "view markdown", silent=false},
        },
        s = { name = "setting",
            c = { ':<C-r>=printf("e %s/", stdpath("config"))<CR>', "Edit file in config folder", silent=false},
            e = { ':e $MYVIMRC<CR>', "Edit init.vim", silent=false},
            f = { ":set filetype=unix<CR>", "set filetype=unix"},
            h = { ":set hlsearch<CR>", "set hlsearch"},
            H = { ":set nohlsearch<CR>", "set nohlsearch"},
            v = { ":source $MYVIMRC<CR>", "source init.vim", silent=false},
            w = { ":set wrap<CR>", "set wrap"},
            W = { ":set unwrap<CR>", "set unwrap"},
            s = { name = "Startify...",
                c = { ":SClose<CR>", "Startify close session", silent=false},
                d = { ":SDelete <c-d>", "Startify delete session", silent=false},
                l = { ":SLoad <c-d>", "Startify load session", silent=false},
                s = { ":SSave <c-d>", "Startify save session", silent=false},
                S = { ":mks! .vimsession<CR>", "Vim save session", silent=false},
                L = { "(expand('%') ==? '.vimsession' ? ':so %<CR>:bd! 1<CR>' : ':so ')", "Vim load session", expr = true},
            },
        },
        w = { name = "words",
            s = { ":setlocal spell spelllang=en_us<CR>", "spell check", silent=false},
            S = { ":set nospell<CR>", "turn off spell check", silent=false},
            t = { ":TranslateW<CR>", "translate words", silent=false},
        },
        G = { ":Git<CR>", "Git status", silent=false},
        g = { name = "git",
            [' '] = { name = "Search",
                b = { "<cmd> Telescope git_bcommits<CR>", "Search blame commits"},
                B = { "<cmd> Telescope git_branchs<CR>", "Search branches"},
                c = { "<cmd> Telescope git_commits<CR>", "Search commits"},
                s = { "<cmd> Telescope git_status<CR>", "Search in git status listed files"},
                S = { "<cmd> Telescope git_stash<CR>", "Search in git stash"},
            },
            ['0'] = { name = "reminder",
                ['0'] = { ":!git config --global core.editor \"\"<left>", "git config core.editor"},
                ['1'] = { ":!git config --global user.name \"\"<left>", "git config user.name"},
                ['2'] = { ":!git config --global user.email \"\"<left>", "git config user.email"},
            },
            a = { "&diff ? ':diffput<CR>' : ':GitGutterStageHunk<CR>'", "stage current hunk", silent=false, expr=true},
            A = { ":!git add %<CR>", "git add %", silent=false},
            b = { ":Git blame<CR>", "git blame %", silent=false},
            C = { ":!git commit -am \"\"<left>", "git commit -am \"message\"", silent=false},
            g = { ":Gvdiffsplit<CR>", "compare with staged", silent=false},
            G = { ":diffupdate<CR>", "Update diff mode", silent=false},
            l = { ":Gclog %<CR>", "git log", silent=false},
            L = { ":Gclog<CR>", "git log", silent=false},
            p = { ":diffput<CR>", "put difference in diff buffer", silent=false},
            s = { "&diff ? ':diffput<CR>' : ':GitGutterStageHunk<CR>'", "stage current hunk", silent=false, expr=true},
            S = { ":Git<CR>", "git status", silent=false},
            u = { ":diffget<CR>", "get difference in diff buffer", silent=false},
            U = { ":!git checkout %<CR>", "Discard all changes", silent=false},
            v = { "<Plug>(GitGutterPreviewHunk)", "preview hunk", silent=false},
            z = { ":GitGutterFold<CR>", "fold all unchanged", silent=false},
        },
    },

    [','] = { name = "code",
        q = {"<cmd>Telescope quickfix<CR>", "list quickfix", silent=false},
        r = {"<cmd>Telescope lsp_references<CR>", "list reference", silent=false},
    },

    g = { name = "go to",
        f = { "gf", "open the file under cursor" },
        x = { "gx", "open file under cursor with system app" },
        i = { "gi", "go to previous edit and insert"},
        v = { "gv", "go to previous visual selection"},
        [','] = { "g,", "go to next edit" },
        [';'] = { "g;", "go to previous edit"},
        ['.'] = { "`.", "go to last change"},
        ['^'] = { "`^", "go to last insert"},
    },

    b = { name = "list buffer",
        [' '] = { ":b ", "open existing buffer with name or #", silent=false},
        a = { ":tab sball", "show all buffer in tab"},
        b = { "<cmd>Telescope buffers<cr>", "list buffer"},
        d = { ":bd! ", "delete buffer and close window"},
        D = { ":bp<CR>:bd! #<CR>", "delete buffer but keep the window"},
        h = { ":tabprev<CR>", "go to left tab"},
        l = { ":tabnext<CR>", "go to right tab"},
        H = { ":-tabmove<CR>", "move tab left"},
        L = { ":+tabmove<CR>", "move tab right"},
        j = { ":bn<CR>", "go to next buffer"},
        k = { ":bp<CR>", "go to previous buffer"},
        r = { "<cmd>Telescope oldfiles<CR>", "list recent opened files"},
        t = { ":set splitright<CR>:vsplit<CR><C-w>T", "open current buffer in tab"},
        u = { ":b #<CR>", "reopen last buffer in current window"},
    },

    s = { name = "split",
        h = { "<C-w>h", "navigate left"},
        j = { "<C-w>j", "navigate down"},
        k = { "<C-w>k", "navigate up"},
        l = { "<C-w>l", "navigate right"},
        H = { "<C-w>H", "move window left"},
        J = { "<C-w>J", "move window down"},
        K = { "<C-w>K", "move window up"},
        L = { "<C-w>L", "move window right"},
        p = { "<C-w>p", "previous window"},
        r = { "<C-w>r", "rotate split screen"},
        R = { "<C-w>R", "rotate split screen"},
        s = { ":set splitright<CR>:vsplit<CR>", "split right"},
        t = { "<C-w>T", "window to tab"},
        v = { ":set splitbelow<CR>:split<CR>", "split below"},
        x = { "<C-w>x", "swap with last window"},
    },
}, {mode="n"})


require("which-key").register({
    ['<Space>'] = { name = "<leader>",
        n = { ":normal ", ":'<,'>normal ", silent=false},
        t = { ":Tabularize /", "Tabularize", silent=false},
    },
}, {mode="v"})


require("which-key").register({
    -- [';'] = { name = "special...",
    --     [';'] = { "<Esc>/(00)<CR>c4l", 'search next (00) and replace'},
    --     [':'] = { "<Esc>/(00)<CR>Nc4l", 'search previous (00) and replace'},
    --     ["<"] = { "<C-g>u(00)", '"(00)"'},
    -- }
}, {mode="i"})

require("which-key").register({
    [";"] = { name = "Path",
        ["%"] = { "<C-R>=expand('%')<cr>", "Path: current full", silent=false },
        ["$"] = { "<C-R>=expand('%:h').'/'<cr>", "Path: current dir", silent=false },
        ["^"] = { "<C-R>=expand('%:t')<cr>", "Path: basename", silent=false },
    },
}, { mode = "c"})
