return {

    'stevearc/oil.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
        default_file_explorer = true,
        delete_to_trash = true,
        columns = {
            'permissions',
            'icon',
            'size',
            'mtime',
        },
        win_options = {
            signcolumn = 'yes',
        },
        view_options = {
            show_hidden = true,
        },
        skip_confirm_for_simple_edits = true,
        watch_for_changes = true,
    },


}
