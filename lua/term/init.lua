local M = {}

local get_output_lines = function(buffer)
    local lines = vim.api.nvim_buf_get_lines(buffer, 0, -1, false)
    local output = ""
    for row = 1, #lines do
        if lines[row] == "" then
            return output
        end
        output = output .. lines[row]
    end
end

M.broot = function()
    vim.cmd("enew")
    local buf = vim.api.nvim_get_current_buf()
    vim.fn.jobstart("broot --conf ~/.config/nvim/lua/term/brootconf.hjson", {
        term = true,
        on_exit = function(_, exit_code)
            if exit_code == 0 then
                local filename = get_output_lines(buf)
                local file = vim.fn.findfile(filename, vim.o.path)
                vim.api.nvim_buf_delete(buf, {})
                if file ~= "" then
                    vim.cmd("edit " .. vim.fn.fnameescape(file))
                end
            else
                vim.api.nvim_buf_delete(buf, {})
            end
        end
    })
    vim.cmd("startinsert")
end

M.find_file = function()
    vim.cmd("enew")
    local buf = vim.api.nvim_get_current_buf()
    vim.fn.jobstart("tv", {
        term = true,
        on_exit = function(_, exit_code)
            if exit_code == 0 then
                local filename = get_output_lines(buf)
                local file = vim.fn.findfile(filename, vim.o.path)
                vim.api.nvim_buf_delete(buf, {})
                if file ~= "" then
                    vim.cmd("edit " .. vim.fn.fnameescape(file))
                end
            else
                vim.api.nvim_buf_delete(buf, {})
            end
        end
    })
    vim.cmd("startinsert")
end

M.find_buffer = function()
    vim.cmd("enew")
    local buf = vim.api.nvim_get_current_buf()
    vim.cmd("redir! > .out | silent ls | redir END")
    vim.fn.jobstart("cat .out | tv", {
        term = true,
        on_exit = function(_, exit_code)
            if exit_code == 0 then
                local unformatted = get_output_lines(buf)
                local bufnr = string.match(unformatted, "%d+")
                vim.api.nvim_buf_delete(buf, {})
                vim.cmd("buffer " .. bufnr)
            else
                vim.api.nvim_buf_delete(buf, {})
            end
            vim.cmd("silent! !rm .out")
        end
    })
    vim.cmd("startinsert")
end

M.find_buffer2 = function()
    local input = vim.api.nvim_list_bufs()
    vim.cmd("enew")
    local buf = vim.api.nvim_get_current_buf()
    local str = ""
    for k, v in pairs(input) do
        str = str .. (vim.api.nvim_buf_get_name(v)) .. "\n"
    end
    vim.fn.jobstart("sh -c " .. vim.fn.shellescape('tv --preview "cat {0}" <<EOF ' .. str .. 'EOF'), {
        term = true,
        on_exit = function(_, exit_code)
            if exit_code == 0 then
                local unformatted = get_output_lines(buf)
                local bufnr = string.match(unformatted, "%d+")
                vim.api.nvim_buf_delete(buf, {})
                vim.cmd("buffer " .. bufnr)
            else
                vim.api.nvim_buf_delete(buf, {})
            end
        end
    })
    vim.cmd("startinsert")
end

M.find_env = function()
    vim.cmd("enew")
    local buf = vim.api.nvim_get_current_buf()
    vim.fn.jobstart("tv env", {
        term = true,
        on_exit = function(_, exit_code)
            vim.api.nvim_buf_delete(buf, {})
        end
    })
    vim.cmd("startinsert")
end

return M
