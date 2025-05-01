local M = {}

M.numbertoggle = function()
    if vim.wo.number then
        vim.wo.number = false
    else
        vim.wo.number = true
    end
end

M.flash_hover = function()
    require("flash").jump({
        action = function(match, state)
            vim.api.nvim_win_call(match.win, function()
                vim.api.nvim_win_set_cursor(match.win, match.pos)
                vim.lsp.buf.hover()
            end)
            state:restore()
        end,
    })
end

M.flash_diag = function()
    require("flash").jump({
        action = function(match, state)
            vim.api.nvim_win_call(match.win, function()
                vim.api.nvim_win_set_cursor(match.win, match.pos)
                vim.diagnostic.open_float()
            end)
            state:restore()
        end,
    })
end

return M
