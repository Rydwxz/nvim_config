vim.api.nvim_create_autocmd({ 'BufEnter' }, {
  pattern = 'NvimTree*',
  callback = function()
    local api = require('nvim-tree.api')
    local view = require('nvim-tree.view')

    if not view.is_visible() then
      api.tree.open()
    end
  end,
})

-- vim.api.nvim_create_autocmd("BufEnter", {
--   group = vim.api.nvim_create_augroup("Broot start directory", { clear = true }),
--   pattern = "*",
--   callback = function()
--     vim.schedule(function()
--       -- Early return if netrw or not a directory
--       if vim.bo[0].filetype == "netrw" or vim.fn.isdirectory(vim.fn.expand("%:p")) == 0 or vim.api.nvim_buf_get_option(0, 'buflisted') == false then
--         return
--       end
--
--       -- vim.api.nvim_buf_set_option(0, "bufhidden", "wipe")
--
--       require("fnc").term.find_file()
--     end)
--   end,
-- })

vim.lsp.enable('nushell')
