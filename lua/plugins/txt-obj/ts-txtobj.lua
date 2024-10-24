return {

	'nvim-treesitter/nvim-treesitter-textobjects',
  lazy = false,
  config = function ()
    require'nvim-treesitter.configs'.setup {
      textobjects = {
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]f"] = "@function.outer",
            ["]i"] = "@class.outer",
            ["]m"] = "@assignment.outer",
            ["]v"] = "@assignment.lhs",
            ["]e"] = "@assignment.rhs",
            ["]a"] = "@call.outer",
            ["]l"] = "@loop.outer",
            ["]b"] = "@block.outer",
            ["]s"] = "@statement.outer",
            ["]c"] = "@conditional.inner",
            ["]r"] = "@return.inner",
            ["]p"] = "@parameter.inner",
          },
          goto_next_end = {
            ["]F"] = "@function.outer",
            ["]I"] = "@class.outer",
            ["]M"] = "@assignment.outer",
            ["]V"] = "@assignment.lhs",
            ["]E"] = "@assignment.rhs",
            ["]A"] = "@call.outer",
            ["]L"] = "@loop.inner",
            ["]B"] = "@block.inner",
            ["]T"] = "@conditional.inner",
            ["]S"] = "@statement.inner",
            ["]C"] = "@conditional.inner",
            ["]R"] = "@return.inner",
            ["]P"] = "@parameter.inner",
          },
          goto_previous_start = {
            ["[f"] = "@function.outer",
            ["[i"] = "@class.outer",
            ["[m"] = "@assignment.outer",
            ["[v"] = "@assignment.lhs",
            ["[e"] = "@assignment.rhs",
            ["[a"] = "@call.outer",
            ["[l"] = "@loop.outer",
            ["[b"] = "@block.outer",
            ["[s"] = "@statement.outer",
            ["[c"] = "@conditional.inner",
            ["[r"] = "@return.inner",
            ["[p"] = "@parameter.inner",
          },
          goto_previous_end = {
            ["[F"] = "@function.outer",
            ["[I"] = "@class.outer",
            ["[M"] = "@assignment.outer",
            ["[V"] = "@assignment.lhs",
            ["[E"] = "@assignment.rhs",
            ["[A"] = "@call.outer",
            ["[L"] = "@loop.outer",
            ["[B"] = "@block.inner",
            ["[S"] = "@statement.inner",
            ["[C"] = "@conditional.inner",
            ["[R"] = "@return.inner",
            ["[P"] = "@parameter.inner",
          },
        },
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ai"] = "@class.outer",
            ["ii"] = "@class.inner",
            ["im"] = "@assignment.outer",
            ["iM"] = "@assignment.outer",
            ["ia"] = "@call.inner",
            ["aa"] = "@call.outer",
            ["il"] = "@loop.inner",
            ["al"] = "@loop.outer",
            ["ib"] = "@block.inner",
            ["ab"] = "@block.outer",
            ["as"] = "@statement.outer",
            ["at"] = "@conditional.outer",
            ["ir"] = "@return.inner",
            ["ar"] = "@return.outer",
            ["ip"] = "@parameter.inner",
          },
        },
        swap = {
          enable = true,
          swap_next = {
            ["<leader>ds"] = "@parameter.inner",
          },
        },
      },
    }
  end


}
