local M = {}

M.numbertoggle = function ()
	if vim.wo.number then
		vim.wo.number = false
	else
		vim.wo.number = true
	end
end


return M
