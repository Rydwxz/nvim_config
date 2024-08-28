return {

	{'NvChad/nvim-colorizer.lua', config = true, lazy = false, opts = {}, enabled = true, },
	{'rktjmp/lush.nvim'},
	{'uga-rosa/ccc.nvim', opts ={},},

	{ dir = '~/dev/nv/bhs/' },

	{'Skalyaeve/a-nvim-theme'},
	{'projekt0n/caret.nvim'},
	{'challenger-deep-theme/vim'},
	{'Everblush/nvim', name = 'everblush'},
    {'EdenEast/nightfox.nvim'}, -- GOAT
	{'rose-pine/neovim', name = 'rose-pine'},
	--{ dir = '~/.config/nvim/lua/plugins/rosepine/'},
	{'LunarVim/horizon.nvim', name = 'horizon'},
	{'nyoom-engineering/oxocarbon.nvim'},
	{'Mofiqul/vscode.nvim'},
	{'marko-cerovac/material.nvim'},
	{'lighthaus-theme/vim-lighthaus'},
	{'junegunn/seoul256.vim'},
	{'josegamez82/starrynight'}, -- no styler
	{'felipeagc/fleet-theme-nvim', name = 'fleet'},
	{'rockerBOO/boo-colorscheme-nvim'},
	{'maxmx03/fluoromachine.nvim', opts = {theme = 'flouromachine'}},
	{'folke/tokyonight.nvim'},
	{'sainnhe/sonokai'},
	{'sainnhe/edge'},
	{'monsonjeremy/onedark.nvim'},
	{'eldritch-theme/eldritch.nvim'},
	{'zootedb0t/citruszest.nvim'},
	{'ishan9299/modus-theme-vim'},--{'miikanissi/modus-themes.nvim',opts={transparent=true},},
	{'kevinm6/kurayami.nvim'},
	{'samharju/synthweave.nvim'},
	{'scottmckendry/cyberdream.nvim'},
	{'alexmozaidze/palenight.nvim'},
	{'Mofiqul/adwaita.nvim'},
	{'shaunsingh/moonlight.nvim'},
	{'bkegley/gloombuddy', dependencies = {'tjdevries/colorbuddy.vim'},},

	{
		'folke/styler.nvim',
		enabled = false,
		opts = {
			themes = {
				markdown = { colorscheme =  'rose-pine'},
				c = { colorscheme =  'fleet'},
				cpp = { colorscheme =  'vscode'},
				python = { colorscheme = 'everblush'},
				rust = { colorscheme = 'black_hole_sun'},
				lua = { colorscheme = 'oxocarbon'},
			},
		},
	},

}
