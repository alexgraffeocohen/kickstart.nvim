-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Legacy vim plugins from my old setup
  'tpope/vim-rails',
  'tpope/vim-surround',
  'vim-test/vim-test',
  -- More nvim plugins
  'ecomba/vim-ruby-refactoring',
  -- :nnoremap <leader>rap  :RAddParameter<cr>
  -- :nnoremap <leader>rcpc :RConvertPostConditional<cr>
  -- :nnoremap <leader>rel  :RExtractLet<cr>
  -- :vnoremap <leader>rec  :RExtractConstant<cr>
  -- :vnoremap <leader>relv :RExtractLocalVariable<cr>
  -- :nnoremap <leader>rit  :RInlineTemp<cr>
  -- :vnoremap <leader>rrlv :RRenameLocalVariable<cr>
  -- :vnoremap <leader>rriv :RRenameInstanceVariable<cr>
  -- :vnoremap <leader>rem  :RExtractMethod<cr>
  {
    'otavioschwanck/ruby-toolkit.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-treesitter/nvim-treesitter-textobjects' },
    -- override vim-ruby-refactoring where desired
    keys = {
      { '<leader>relv', "<cmd>lua require('ruby-toolkit').extract_variable()<CR>", desc = 'Extract Variable', mode = { 'v' } },
      { '<leader>rem', "<cmd>lua require('ruby-toolkit').extract_to_function()<CR>", desc = 'Extract To Method', mode = { 'v' } },
      { '<leader>remc', "<cmd>lua require('ruby-toolkit').create_function_from_text()<CR>", desc = 'Create Method from item on cursor' },
    },
  },
}
