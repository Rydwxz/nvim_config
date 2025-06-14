return {

    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    opts = {
        defaults = {
            path_display = { shorten = 3, },
            layout_strategy = 'horizontal',
            layout_config = { height = 0.99, width = 0.99 },
        },
        pickers = {
            find_files = {
                hidden = true,
            },
        },
    },

}
