return {

	'stevearc/oil.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	opts = {
		default_file_explorer = false,
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
	},


}
