vim.g.barbar_auto_setup = false -- disable auto-setup

require("barbar").setup {
    animation = false,
    clickable = true,
    sidebar_filetypes = {
        -- Use the default values: {event = 'BufWinLeave', text = nil}
        NvimTree = true,
        undotree = {text = 'undotree'},
    },

}
