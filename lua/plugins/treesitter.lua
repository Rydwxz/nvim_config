return {

	{

	'nvim-treesitter/nvim-treesitter',
	config = function()
		require('nvim-treesitter.configs').setup({
			ensure_installed = {
				'arduino',
				'bash',
				'c',
				'cpp',
				'cmake',
				'json',
				'lua',
				'markdown_inline',
				'python',
				'rust',
				'toml',
				'javascript',
				'typescript',
  			'tsx',
				'go',
			},
			highlight = {enable = true},
			indent = {enable = true},
			incremental_selection = {enable = true},
			playground = {
				enable = true,
			},
		})
	end,

	},

	{
		'nvim-treesitter/playground',
		dependencies = 'nvim-treesitter/nvim-treesitter',
	},
}
