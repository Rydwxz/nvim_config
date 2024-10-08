return {

	'shellRaining/hlchunk.nvim',
	enabled = true,
  lazy = false,
	event = {'BufReadPre', 'BufNewFile'},
	opts = {
		chunk = {
      enable = true,
			-- style = '#360808',
			-- style = '#ad0023',
			style = '#f9003f',
			chars = {
				right_arrow = '',
			},
      delay = 0,
		},
		indent = {
      enable = true,
			style = '#7f0800',
		},
	},

}
