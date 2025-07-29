local search = require('grug-far.actions.search')

--- toggles fixed strings mode
---@param params { buf: integer, context: grug.far.Context }
local function toggleFixedStrings(params)
  local context = params.context
  local buf = params.buf

  context.state.fixedStrings = not context.state.fixedStrings

  vim.notify(
    'grug-far: fixed strings mode toggled ' .. (context.state.fixedStrings and 'on' or 'off') .. '!',
    vim.log.levels.INFO
  )
  search({ buf = buf, context = context })
end

return toggleFixedStrings