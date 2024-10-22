local statusline_theme = {
	normal = {
		 a = 'LualineNA',
		 b = 'LualineNB',
		 c = 'LualineNC',
		 x = 'LualineNC',
		 y = 'LualineNB',
		 z = 'LualineNA',
	  },
	  insert = {
		 a = 'LualineIA',
		 b = 'LualineIB',
		 c = 'LualineIC',
		 x = 'LualineIC',
		 y = 'LualineIB',
		 z = 'LualineIA',
	  },
	  visual = {
		 a = 'LualineVA',
		 b = 'LualineVB',
		 c = 'LualineVC',
		 x = 'LualineVC',
		 y = 'LualineVB',
		 z = 'LualineVA',
	  },
	  replace = {
		 a = 'LualineRA',
		 b = 'LualineRB',
		 c = 'LualineRC',
		 x = 'LualineRC',
		 y = 'LualineRB',
		 z = 'LualineRA',
	  },
	  command = {
		 a = 'LualineCA',
		 b = 'LualineCB',
		 c = 'LualineCC',
		 x = 'LualineCC',
		 y = 'LualineCB',
		 z = 'LualineCA',
	  },
	  inactive = {
		 a = 'LualineEA',
		 b = 'LualineEB',
		 c = 'LualineEC',
		 x = 'LualineEC',
		 y = 'LualineEB',
		 z = 'LualineEA',
	  },

}

return {

	'nvim-lualine/lualine.nvim',
	opts = {
		options = {
			theme = statusline_theme,
			component_separators = {right = ''},
		},
		sections = {
			lualine_a = {{'filename', path = 1 }}, -- {{'mode', fmt = function(res) return res:sub(1,1)..":" end}},
			lualine_b = {},
			lualine_c = { function()
				local sig = require('lsp_signature').status_line(80)
				return sig.label
			end},

			lualine_x = { function()
				return require('lsp-progress').progress()
			end},
			lualine_y = {'progress', 'filesize'},
			lualine_z = {
				'branch',
				{  'diff',
					diff_color = {
						added = {fg='#00881b'},
						modified = {fg='#f42b4c'},
						removed = {fg='#d6071f'},
					},
				},
				{  'diagnostics',
					diagnostics_color = {
						error = {fg='#d6071f'},
						warn = {fg='#e7008b'},
						info = {fg='#5200cc'},
						hint = {fg='#00881b'},
					},
				},
			},
		},
		inactive_sections = {
			lualine_x = {'filetype'},
		},
	},
	dependencies = {
	    'linrongbin16/lsp-progress.nvim',
	    'ray-x/lsp_signature.nvim',
		'SmiteshP/nvim-navic',
		'Rydwxz/bhs',
	},
	extensions = {
		'fugitive',
		'lazy',
		'man',
	},

}
