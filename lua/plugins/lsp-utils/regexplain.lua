return {

	'bennypowers/nvim-regexplainer',
	opts = {
		mappings = {
			toggle = '<leader>ex',
		},
		popup = {
			border = {
				padding = {1,1},
				style = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
			},
		},
	},
	dependencies = {
		'nvim-treesitter/nvim-treesitter',
		'MunifTanjim/nui.nvim',
	},

}
