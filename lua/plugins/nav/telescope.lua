return {

	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	opts = {
		defaults = {
			path_display = { shorten = 3, },
		},
		pickers = {
			find_files = {
				hidden = true,
			},
		},
	},

}
