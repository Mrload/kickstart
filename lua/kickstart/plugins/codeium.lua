return {
  'Exafunction/codeium.nvim',
  event = 'BufEnter',
  cmd = 'Codeium',
  build = ':Codeium Auth',
  dependencies = {
    'hrsh7th/nvim-cmp',
  },
  config = function()
    require('codeium').setup()

    local sc = require('cmp').get_config()['sources']
    table.insert(sc, 1, { name = 'codeium' })
  end,
}
