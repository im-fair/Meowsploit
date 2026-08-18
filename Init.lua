if not game then --Use a dynamic package path for running on a lua environment
    local PathInitDir = debug.getinfo(1, "S").source:sub(2):match("^(.*)[/\\]")
    package.path=PathInitDir.."/?.lua;"..PathInitDir.."/?/init.lua;"..package.path
end

local function GetFuncFallback(Func, Fallback)
    local Success = (pcall(function()
        return getfenv()[Func]
    end))

    if Success then
        return Func
    else
        return Fallback or function(...) return ... end
    end
end

local cloneref = GetFuncFallback(cloneref)
local gethui = GetFuncFallback(gethui, function()
    return cloneref(game:GetService("CoreGui"))
end)

require("Footer/Attribution").Init(gethui(), cloneref)