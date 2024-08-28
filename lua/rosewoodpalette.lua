local options = require('rose-pine.config').options
-- this is my personal variant - rosewood, or dusk, if you will
local variants = {
	main = {
		---@deprecated for backwards compatibility
		_experimental_nc = '#16141f',
		nc = '#16141f',
		base = '#241722',
		surface = '#2b3b44',
		overlay = '#2d3f3a',
		muted = '#857cb8',
		subtle = '#b1cbff',
		text = '#fdbcc7',
		love = '#2b96a5',
		gold = '#fad39c',
		rose = '#ca3c47',
		pine = '#eb6f92',
		foam = '#9dc7c7',
		iris = '#c1a1e8',
		highlight_low = '#271e30',
		highlight_med = '#173b3e',
		highlight_high = '#8c87ae',
		none = 'NONE',
	},
	moon = {
		---@deprecated for backwards compatibility
		_experimental_nc = '#1f1d30',
		nc = '#1f1d30',
		base = '#232136',
		surface = '#2a273f',
		overlay = '#393552',
		muted = '#6e6a86',
		subtle = '#908caa',
		text = '#e0def4',
		love = '#eb6f92',
		gold = '#f6c177',
		rose = '#ea9a97',
		pine = '#3e8fb0',
		foam = '#9ccfd8',
		iris = '#c4a7e7',
		highlight_low = '#2a283e',
		highlight_med = '#44415a',
		highlight_high = '#56526e',
		none = 'NONE',
	},
	dawn = {
		---@deprecated for backwards compatibility
		_experimental_nc = '#f8f0e7',
		nc = '#f8f0e7',
		base = '#faf4ed',
		surface = '#fffaf3',
		overlay = '#f2e9e1',
		muted = '#9893a5',
		subtle = '#797593',
		text = '#575279',
		love = '#b4637a',
		gold = '#ea9d34',
		rose = '#d7827e',
		pine = '#286983',
		foam = '#56949f',
		iris = '#907aa9',
		highlight_low = '#f4ede8',
		highlight_med = '#dfdad9',
		highlight_high = '#cecacd',
		none = 'NONE',
	},
}

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == 'light' and variants.dawn
	or variants[options.dark_variant or 'main']
