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
            ["]l"] = "@assignment.lhs",
            ["]r"] = "@assignment.rhs",
            ["]c"] = "@call.inner",
            ["]o"] = "@loop.outer",
            ["]b"] = "@block.outer",
            ["]t"] = "@conditional.outer",
            ["]s"] = "@statement.outer",
          },
          goto_next_end = {
            ["]F"] = "@function.outer",
            ["]I"] = "@class.outer",
            ["]M"] = "@assignment.outer",
            ["]L"] = "@assignment.lhs",
            ["]R"] = "@assignment.rhs",
            ["]C"] = "@call.inner",
            ["]O"] = "@loop.inner",
            ["]B"] = "@block.inner",
            ["]T"] = "@conditional.inner",
            ["]S"] = "@statement.inner",
          },
          goto_previous_start = {
            ["[f"] = "@function.outer",
            ["[i"] = "@class.outer",
            ["[m"] = "@assignment.outer",
            ["[l"] = "@assignment.lhs",
            ["[r"] = "@assignment.rhs",
            ["[c"] = "@call.inner",
            ["[o"] = "@loop.outer",
            ["[b"] = "@block.outer",
            ["[t"] = "@conditional.outer",
            ["[s"] = "@statement.outer",
          },
          goto_previous_end = {
            ["[F"] = "@function.outer",
            ["[I"] = "@class.outer",
            ["[M"] = "@assignment.outer",
            ["[L"] = "@assignment.lhs",
            ["[R"] = "@assignment.rhs",
            ["[C"] = "@call.inner",
            ["[O"] = "@loop.outer",
            ["[B"] = "@block.inner",
            ["[T"] = "@conditional.inner",
            ["[S"] = "@statement.inner",
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
            ["ic"] = "@call.inner",
            ["ac"] = "@call.outer",
            ["io"] = "@loop.inner",
            ["ao"] = "@loop.outer",
            ["ib"] = "@block.inner",
            ["ab"] = "@block.outer",
            ["at"] = "@conditional.outer",
            ["is"] = "@statement.outer",
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
