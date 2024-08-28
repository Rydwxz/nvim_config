return {

	'shellRaining/hlchunk.nvim',
	enabled = true,
	event = 'UIEnter',
	opts = {
		blank = {
			enable = false,
		},
		chunk = {
			style = '#360808',
			--style = '#ad0023',
			--style = '#f9003f',
			use_treesitter = false,
			chars = {
				-- horizontal_line = '',
				right_arrow = '',
			},
		},
		line_num = {
			enable = false,
			style = '#ff5a1d',
			--style = '#cf4c00',
		},
		indent = {
			enable = false,
			style = '#7f0800',
		},
	},

}
