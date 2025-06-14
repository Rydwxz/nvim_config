return {

    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    opts = {
        defaults = {
            path_display = { shorten = 3, },
            layout_strategy = 'horizontal',
            layout_config = { height = vim.o.lines, width = vim.o.columns },
        },
        pickers = {
            find_files = {
                hidden = true,
            },
        },
    },

}
