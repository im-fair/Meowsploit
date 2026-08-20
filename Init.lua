--Function Fallbacks
local function GetFuncFallback(Func, Fallback)
    local Function = getfenv()[Func]

    if Function then return Function end
    return Fallback or function(...) return ... end
end

local cloneref = GetFuncFallback(cloneref)
local gethui = GetFuncFallback(gethui, function()
    return cloneref(game:GetService("CoreGui"))
end)
local genv = {}; local getgenv = GetFuncFallback(getgenv, function() return genv end)



--UI Init
local Acquire = require
if game then
    Acquire = function(Path)
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/im-fair/Meowsploit/refs/heads/main/" .. Path .. ".lua"))()
    end
end

local Interpreter = Acquire("Utilities/Interpreter")

Acquire("Footer/Attribution").Init(gethui(), cloneref, Interpreter)
--Acquire("Footer/Disclaimer").Init(gethui(), cloneref, Interpreter)
