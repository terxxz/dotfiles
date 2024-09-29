return {
  'numToStr/Comment.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {},
  -- `gc`  - Toggles the region using linewise comment
  -- `gcc` - Toggles the current line using linewise comment
  -- `gco` - Insert comment to the next line and enters INSERT mode
  -- `gcO` - Insert comment to the previous line and enters INSERT mode
  -- `gcA` - Insert comment to end of the current line and enters INSERT mode
  -- `gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
}
