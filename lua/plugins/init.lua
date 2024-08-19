return {
    -- can't live w/o em
    { import = "plugins.base.conform" },
    { import = "plugins.base.mason" },
    { import = "plugins.base.treesitter" },
    { import = "plugins.lang.lspconfig" },

    -- language related
    { import = "plugins.lang.ts-autotag" },
    { import = "plugins.lang.ts-tools" },
    { import = "plugins.lang.ts-comments" },

    -- util
    { import = "plugins.util.harpoon2" },
    { import = "plugins.util.trouble" },
    { import = "plugins.util.neominimap" },
    { import = "plugins.util.fugitive" },

    -- db
    { import = "plugins.ui.vim-dadbod-ui" },

    -- ui
    { import = "plugins.ui.dashboard-nvim" },
    { import = "plugins.ui.noice" },
    { import = "plugins.ui.notify" },
    { import = "plugins.ui.todo-comments" },
    { import = "plugins.ui.zen-mode" },
}
