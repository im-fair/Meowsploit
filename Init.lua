if not game then --Use a dynamic package path for running on a lua environment
    pcall(function()
        local PathInitDir = debug.getinfo(1, "S").source:sub(2):match("^(.*)[/\\]")
        package.path=PathInitDir.."/?.lua;"..PathInitDir.."/?/init.lua;"..package.path
    end)
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

--Required to run with my architecture
if table.find(LimitedFunctions, "hookfunction") or table.find(LimitedFunctions, "loadstring") then
    error("Your executor is not compatible with Meowsploit's architecture!")
end

--Function Fallbacks
local cloneref = GetFuncFallback(cloneref)
local gethui = GetFuncFallback(gethui, function()
    return cloneref(game:GetService("CoreGui"))
end)
local getgenv = GetFuncFallback(getgenv, function())

if game then --Hook require locally to get code blobs from github instead of a sandboxed environment like vscode
    local OldRequire; OldRequire = hookfunction(getfenv()["require"], function(Path)
        if checkcaller() then return OldRequire(Path) end

        return loadstring(game:HttpGet("https://raw.githubusercontent.com/im-fair/Meowsploit/refs/heads/main/" .. Path .. ".lua"))()
    end)
end

--UI Init
require("Footer/Attribution").Init(gethui(), cloneref)