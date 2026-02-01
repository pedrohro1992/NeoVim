return {
  {
    'jay-babu/mason-null-ls.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'williamboman/mason.nvim',
      'nvimtools/none-ls.nvim',
    },
                ops = {
                        ensure_installed = {
                                'tflint',
                                'tfsec',

                        },
                },
  },
}
