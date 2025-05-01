return {

    'folke/trouble.nvim',
    opts = {
        auto_jump = true,
        indent_guides = false,
        open_no_results = true,
        keys = {
            s = {
                action = function(view)
                    require('flash').jump()
                end
            },
        },
        modes = {
            symbols = {
                win = {
                    size = { width = 0.4 },
                },
            },
        },
    },
    cmd = "Trouble",

}
