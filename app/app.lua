
local shell = require("resty.shell")

local args = {
   socket = "unix:/tmp/shell.sock",
}

function call()
    local status, out, err = shell.execute("ls  /", args)
    ngx.say(out)
end

return call