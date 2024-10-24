return {

  {
    'VonHeikemen/lsp-zero.nvim',
    config = false,
    branch = 'v4.x',
  },
  {
    'williamboman/mason.nvim',
    opts = {},
  },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  {
    'neovim/nvim-lspconfig',
    cmd = { 'LspInfo', 'LspInstal', 'LspStart' },
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
    },
    init = function()
      vim.opt.signcolumn = 'yes'
    end,
    config = function()
      local lsp_def = require 'lspconfig'.util.default_config
      lsp_def.capabilities = vim.tbl_deep_extend(
        'force',
        lsp_def.capabilities,
        require 'cmp_nvim_lsp'.default_capabilities()
      )

      vim.api.nvim_create_autocmd('LspAttach', {
        desc = 'LSP actions',
        callback = function(event)
          local opts = { buffer = event.buf }
          vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
          vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
          vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
          vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
          vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
          vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
          vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
          vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
          vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
          vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
          local id = vim.tbl_get(event, 'data', 'client_id')
          local client = id and vim.lsp.get_client_by_id(id)
          if client == nil then
            return
          end
          if client.supports_method('textDocument/formatting') then
            require('lsp-zero').buffer_autoformat()
          end
        end,
      })
      require 'mason-lspconfig'.setup({
        ensure_installed = {
          'bashls',
          'biome',
          'clangd',
          'cmake',
          'cssls',
          'dockerls',
          'gopls',
          'hls',
          'jsonls',
          'lemminx', --xml
          'lua_ls',
          'marksman',
          'pyre',
          'quick_lint_js',
          'reason_ls',
          'rust_analyzer',
          'sorbet', --ruby
          'vimls',
          'yamlls',
          'zls',
        },
        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end,
        },
      })
      vim.diagnostic.config({
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '',
            [vim.diagnostic.severity.INFO] = '', --
          }
        }
      })
    end,
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    config = function()
      local cmp = require 'cmp'
      cmp.setup({
        sources = {
          { name = 'nvim_lsp' },
          { name = 'buffer' },
          { name = 'path' },
        },
        mapping = {
          ['<cr>'] = function(fallback)
            if cmp.visible() then
              cmp.confirm({ select = true })
            else
              fallback()
            end
          end,
          ['<tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
              cmp.confirm()
            else
              fallback()
            end
          end,
          ['<a-tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
              cmp.select_next_item()
              cmp.confirm()
            else
              fallback()
            end
          end,
          ['<c-tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
              cmp.select_next_item()
              cmp.select_next_item()
              cmp.confirm()
            else
              fallback()
            end
          end,
        },
      })
    end,
  },

}
