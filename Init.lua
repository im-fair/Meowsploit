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

local RequiredFunctions = {
    {"hookfunction", false},
    {"cloneref", true},
    {"gethui", true},
    {"getgenv", true},
    {"loadstring", false}
}
local LimitedFunctions = {}

for _, FunctionData in RequiredFunctions do
    if not getfenv()[FunctionData[1]] and not FunctionData[2] then
        table.insert(LimitedFunctions, FunctionData[1])
    end
end

local cloneref = GetFuncFallback(cloneref)
local gethui = GetFuncFallback(gethui, function()
    return cloneref(game:GetService("CoreGui"))
end)
local getgenv = GetFuncFallback(getgenv, function())

require("Footer/Attribution").Init(gethui(), cloneref)