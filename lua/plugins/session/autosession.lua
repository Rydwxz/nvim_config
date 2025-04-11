local function pre_sve_cmd()
  require("nvim-tree.api").tree.toggle({ focus = false })
end

local function pst_rst_cmd()
  require("nvim-tree.api").tree.toggle({ focus = false })
end

return {

  'rmagatti/auto-session',
  opts = {
    pre_save_cmds = { pre_sve_cmd },
    post_restore_cmds = { pst_rst_cmd },
    use_git_branch = true,
  },
  dependencies = {
    'nvim-tree/nvim-tree.lua',
  },

}
