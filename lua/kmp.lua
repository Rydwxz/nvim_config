local kym = vim.keymap.set
--autoformat
kym('n', '<leader>az', function() vim.b.autoformat = not vim.b.autoformat end, { desc = "toggle autoformat" })

--buffers/tabs
kym('n', '<leader>,', '<Cmd>bprev<CR>', { desc = "prev buffer" })
kym('n', '<leader>.', '<Cmd>bnext<CR>', { desc = "next buffer" })
kym('n', '<leader>x', function() require('bufdelete').bufdelete(0, true) end, { desc = "close buffer" })

--broot
-- kym('n', '<leader>lb', function() require('fnc').term.broot() end, { desc = "broot" })

--code-action
kym('n', '<leader>ca', function() require('tiny-code-action').code_action() end, { desc = "code action list" })

--codewindow
kym('n', '<leader>mm', function() require('codewindow').toggle_minimap() end, { desc = "minimap" })
kym('n', '<leader>mf', function() require('codewindow').toggle_focus() end, { desc = "focus minimap" })

--color picker
kym('n', '<leader>4', '<cmd>CccPick<cr>', { desc = "color picker" })

--colorizer
kym('n', '<leader>tc', '<cmd>ColorizerToggle<cr>', { desc = "toggle colorizer" })

--cmp mapping declared in lspzero.lua for reasons
--

--diffview
kym('n', '<leader>dd', '<cmd>DiffviewOpen<cr>', { desc = "open diffview" })
kym('n', '<leader>dr', '<cmd>DiffviewRefresh<cr>', { desc = "refresh diffview" })
kym('n', '<leader>dc', '<cmd>DiffviewClose<cr>', { desc = "close diffview" })

--digraphs
kym('i', '<C-k><C-k>', function() require('better-digraphs').digraphs("insert") end, { desc = "digraph search" })

--flash
kym({ 'n', 'x', 'o' }, "s", function() require("flash").jump() end, { desc = "flash!" })
kym({ 'n', 'x', 'o' }, "S", function() require("flash").treesitter() end, { desc = "flash treesitter" })
kym('o', "r", function() require("flash").remote() end, { desc = "flash remote" })
kym({ "o", "x" }, "R", function() require("flash").treesitter_search() end, { desc = "flash treesitter search" })
kym('c', "<c-s>", function() require("flash").toggle() end, { desc = "flash toggle" })
kym('n', "<leader>sk", function() require('fnc').flash_hover() end, { desc = "flash remote hover" })
kym('n', "<leader>sd", function() require('fnc').flash_diag() end, { desc = "flash remote diagnostic" })

--highlights
kym('n', '<leader>di', '<cmd>Inspect<cr>', { desc = "inspect highlight under cursor" })

--iron keymaps in iron because they're inconvenient
kym('n', "<leader>rr",
    function() require('iron.core').repl_for(vim.api.nvim_get_option_value("filetype", { scope = "local", buf = 0 })) end,
    { desc = "flash remote diagnostic" })


--lazygit
kym('n', '<leader>dg', '<cmd>LazyGit<cr>', { desc = "lazygit" })

--oil
kym('n', '-', '<CMD>Oil<CR>', { desc = "open Oil" })

--playground
kym('n', '<leader>ht', '<cmd>TSPlaygroundToggle<cr>', { desc = "toggle treesitter pane" })
kym('n', '<leader>hc', '<cmd>TSNodeUnderCursor<cr>', { desc = "inspect treesitter node under cursor" })

--tabby
vim.g.tabby_keybinding_accept = '<C-i>'

--telescope
kym('n', '<leader>ff', function() require('telescope.builtin').find_files() end, { desc = "find file" })
kym('n', '<leader>fs', function() require('telescope.builtin').live_grep() end, { desc = "find string in file" }) --cwd
kym('n', '<leader>ft', function() require('telescope.builtin').treesitter() end, { desc = "find treesitter symbol" })
kym('n', '<leader>f/', function() require('telescope.builtin').current_buffer_fuzzy_find() end,
    { desc = "find current buffer" })
kym('n', '<leader>fg', function() require('telescope.builtin').git_files() end, { desc = "find git files" })
kym('n', '<leader>fm', function() require('telescope.builtin').marks() end, { desc = "find marks" })
kym('n', '<leader>fr', function() require('telescope.builtin').lsp_references() end, { desc = "find references" })
kym('n', '<leader>fi', function() require('telescope.builtin').lsp_implementations() end,
    { desc = "find implementations" })
kym('n', '<leader>fq', function() require('telescope.builtin').quickfix() end, { desc = "find quickfix items" })
kym('n', '<leader>fs', function() require('telescope.builtin').grep_string() end, { desc = "find word under cursor" }) --cursor
kym('n', '<leader>fb', function() require('telescope.builtin').buffers() end, { desc = "find buffers" })
kym('n', '<leader>fh', function() require('telescope.builtin').help_tags() end, { desc = "find help" })
kym('n', '<leader>fp', function() require('telescope.builtin').man_pages() end, { desc = "find man page" }) --pages
kym('n', '<leader>fo', function() require('telescope.builtin').vim_options() end, { desc = "find vim options" })
kym('n', '<leader>fy', function() require('telescope.builtin').registers() end, { desc = "find yank" })     --yank
kym('n', '<leader>fk', function() require('telescope.builtin').keymaps() end, { desc = "find keymapping" })
kym('n', '<leader>fd', function() require('telescope.builtin').diagnostics() end, { desc = "find diagnostics" })
kym('n', '<leader>fl', function() require('telescope.builtin').highlights() end, { desc = "find hightlights" })
kym('n', '<leader>fz', function() require('telescope.builtin').colorscheme() end, { desc = "find colorcheme" })
kym('n', '<leader>fj', function() require('telescope.builtin').jumplist() end, { desc = "find jumplist" })

-- television
kym('n', '<leader>lf', function() require('fnc').term.find_file() end, { desc = "television files" })
kym('n', '<leader>lb', function() require('fnc').term.find_buffer() end, { desc = "television buffers" })
kym('n', '<leader>la', function() require('fnc').term.find_buffer2() end, { desc = "television buffers" })
-- kym('n', '<leader>fs', function() require('fnc').term.find_content() end, { desc = "television contents" })

--terminal
vim.keymap.set('t', '<C-Space>', [[<C-\><C-n>]], { desc = "exit terminal mode" })

--tree -- see nv-tree.lua for in-window keymaps
kym('n', '<leader>tt', '<cmd>NvimTreeToggle<cr>', { desc = "toggle tree view" })
kym('n', '<leader>tf', '<cmd>NvimTreeFocus<cr>', { desc = "focus tree view" })

--trouble
-- kym('n', '<leader>zz', function() require 'trouble'.toggle({ mode = "diagnostics symbols" }) end,
-- { desc = "show diagnostics bottom " })
kym('n', '<leader>zd', "<cmd>Trouble diagnostics toggle<cr>", { desc = "show diagnostics bottom " })
kym('n', '<leader>ze', "<cmd>Trouble diagnostics toggle win.position=right win.size=0.5<cr>",
    { desc = "show diagnostics right" })
kym('n', '<leader>zs', "<cmd>Trouble symbols toggle<cr>", { desc = "show symbol panel" })

--renamer
kym('n', '<leader>dr', function() require("renamer").rename() end, { desc = "rename item under cursor" })

--smartsplits
vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left, { desc = "resize left" })
vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down, { desc = "resize down" })
vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up, { desc = "resize up" })
vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right, { desc = "resize right" })
-- moving between splits
vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left, { desc = "move to split" })
vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down, { desc = "move to split" })
vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up, { desc = "move to split" })
vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right, { desc = "move to split" })
vim.keymap.set('n', '<C-\\>', require('smart-splits').move_cursor_previous, { desc = "move to split" })
-- swapping buffers between windows
vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left, { desc = "swap split" })
vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down, { desc = "swap split" })
vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up, { desc = "swap split" })
vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right, { desc = "swap split" })

--spider
kym({ "n" }, "w", "<cmd>lua require('spider').motion('w')<CR>")
kym({ "o", "v", 'x' }, "f", function() require('spider').motion('w') end)
kym({ "o", 'v', 'x' }, "F", function() require('spider').motion('w') end)
kym({ "n" }, "e", "<cmd>lua require('spider').motion('e')<CR>")
kym({ "n" }, "b", "<cmd>lua require('spider').motion('b')<CR>")
kym({ "n" }, "ge", "<cmd>lua require('spider').motion('ge')<CR>")

--quickfix
kym("n", "<leader>cn", "<cmd>cnext<cr>", { desc = "next quickfix " })
kym("n", "<leader>cp", "<cmd>cprev<cr>", { desc = "prev quickfix " })
kym("n", "<leader>co", "<cmd>copen<cr>", { desc = "open quickfix" })
kym("n", "<leader>cq", "<cmd>cclose<cr>", { desc = "close quickfix" })

--undotree
kym("n", "<leader>u", "<cmd>UndotreeToggle<cr>", { desc = "toggle undotree" })
