local M = {}

M.autoformat = function(buf)
    local group = 'lsp_autoformat'
    vim.api.nvim_create_augroup(group, { clear = false })
    vim.api.nvim_clear_autocmds({ group = group, buffer = buf })
    vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = buf,
        group = group,
        desc = 'LSP format on save',
        callback = function()
            if vim.b.autoformat == true then
                vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
            end
        end,
    })
end

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
