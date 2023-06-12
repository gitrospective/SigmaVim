
--Enabling modules
require("ui")
require("keymap")
require("colors")

-- Define a Lua function
function MyCustomCommand()
  -- Add your custom logic here
  print("Custom command executed!")
end

-- Register the Lua function as an editor command
vim.cmd("command! ActivateLsp lua MyCustomCommand()")

require("plugins")

