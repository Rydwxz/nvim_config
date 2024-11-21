local kym = function(a, b, c) vim.keymap.set(a, b, c) end
--
--buffers/tabs
kym('n', '<leader>,', '<Cmd>bprev<CR>')
kym('n', '<leader>.', '<Cmd>bnext<CR>')
kym('n', '<leader>x', function() require('bufdelete').bufdelete(0, true) end)

--code-action
kym('n', '<leader>ca', function() require('tiny-code-action').code_action() end)

--codewindow
kym('n', '<leader>mm', function() require('codewindow').toggle_minimap() end)
kym('n', '<leader>mf', function() require('codewindow').toggle_focus() end)

--color picker
kym('n', '<leader>4', '<cmd>CccPick<cr>')

--colorizer
kym('n', '<leader>tc', '<cmd>ColorizerToggle<cr>')

--cmp mapping declared in lspzero.lua for reasons
--
--diagnostics
kym('n', '<leader>ce', function() require 'fnc'.v_line_toggle() end)

--diffview
kym('n', '<leader>dm', '<cmd>DiffviewOpen<cr>')
kym('n', '<leader>dr', '<cmd>DiffviewRefresh<cr>')
kym('n', '<leader>dc', '<cmd>DiffviewClose<cr>')

--flash map in flash.lua for laziness
--
--highlights
kym('n', '<leader>di', '<cmd>Inspect<cr>')

--hover
vim.keymap.set("n", "<leader>k", require("hover").hover, { desc = "hover.nvim" })
vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })

--lazygit
kym('n', '<leader>dg', '<cmd>LazyGit<cr>')

--oil
kym('n', '-', '<CMD>Oil<CR>')

--playground
kym('n', '<leader>ht', '<cmd>TSPlaygroundToggle<cr>')
kym('n', '<leader>hc', '<cmd>TSNodeUnderCursor<cr>')

--tabby
vim.g.tabby_keybinding_accept = '<C-i>'

--telescope
kym('n', '<leader>ff', function() require('telescope.builtin').find_files() end)
kym('n', '<leader>fs', function() require('telescope.builtin').live_grep() end) --cwd
kym('n', '<leader>ft', function() require('telescope.builtin').treesitter() end)
kym('n', '<leader>f/', function() require('telescope.builtin').current_buffer_fuzzy_find() end)
kym('n', '<leader>fg', function() require('telescope.builtin').git_files() end)
kym('n', '<leader>fm', function() require('telescope.builtin').marks() end)
kym('n', '<leader>fr', function() require('telescope.builtin').lsp_references() end)
kym('n', '<leader>fi', function() require('telescope.builtin').lsp_implementation() end)
kym('n', '<leader>fq', function() require('telescope.builtin').quickfix() end)
kym('n', '<leader>fc', function() require('telescope.builtin').grep_string() end) --cursor
kym('n', '<leader>fb', function() require('telescope.builtin').buffers() end)
kym('n', '<leader>fh', function() require('telescope.builtin').help_tags() end)
kym('n', '<leader>fp', function() require('telescope.builtin').man_pages() end) --pages
kym('n', '<leader>fo', function() require('telescope.builtin').vim_options() end)
kym('n', '<leader>fy', function() require('telescope.builtin').registers() end) --yank
kym('n', '<leader>fk', function() require('telescope.builtin').keymaps() end)
kym('n', '<leader>fe', function() require('telescope.builtin').diagnostics() end)
kym('n', '<leader>fl', function() require('telescope.builtin').highlights() end)
kym('n', '<leader>fz', function() require('telescope.builtin').colorscheme() end)

--terminal
vim.keymap.set('t', '<C-Space>', [[<C-\><C-n>]])

--tree -- see nv-tree.lua for in-window keymaps
kym('n', '<leader>tt', '<cmd>NvimTreeToggle<cr>')
kym('n', '<leader>tf', '<cmd>NvimTreeFocus<cr>')

--renamer
kym('n', '<leader>dr', function() require("renamer").rename() end)

--smartsplits
vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
-- moving between splits
vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
vim.keymap.set('n', '<C-\\>', require('smart-splits').move_cursor_previous)
-- swapping buffers between windows
vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)

--spider
kym({ "n" }, "w", "<cmd>lua require('spider').motion('w')<CR>")
kym({ "o", "v", 'x' }, "f", function() require('spider').motion('w') end)
kym({ "o", 'v', 'x' }, "F", function() require('spider').motion('w') end)
kym({ "n" }, "e", "<cmd>lua require('spider').motion('e')<CR>")
kym({ "n" }, "b", "<cmd>lua require('spider').motion('b')<CR>")
kym({ "n" }, "ge", "<cmd>lua require('spider').motion('ge')<CR>")

--quickfix
kym("n", "<leader>cn", "<cmd>cnext<cr>")
kym("n", "<leader>cp", "<cmd>cprev<cr>")
kym("n", "<leader>co", "<cmd>copen<cr>")
kym("n", "<leader>cq", "<cmd>cclose<cr>")

--undotree
kym("n", "<leader>u", "<cmd>UndotreeToggle<cr>")
