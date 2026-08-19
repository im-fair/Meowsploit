local Acquire = require
if not game then --Use a dynamic package path for running on vscode
    pcall(function()
        local PathInitDir = debug.getinfo(1, "S").source:sub(2):match("^(.*)[/\\]")
        package.path=PathInitDir.."/?.lua;"..PathInitDir.."/?/init.lua;"..package.path
    end)
else
    Acquire = function(Path)
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/im-fair/Meowsploit/refs/heads/main/" .. Path .. ".lua"))()
    end
end

local function GetFuncFallback(Func, Fallback)
    local Function = getfenv()[Func]

    if Function then
        return Function
    else
        return Fallback or function(...) return ... end
    end
end

local RequiredFunctions = {
}
local LimitedFunctions = {}

for _, FunctionKey in RequiredFunctions do
    if not getfenv()[FunctionKey] then
        table.insert(LimitedFunctions, FunctionData[1])
    end
end

--Function Fallbacks
local cloneref = GetFuncFallback(cloneref)
local gethui = GetFuncFallback(gethui, function()
    return cloneref(game:GetService("CoreGui"))
end)
local genv = {}; local getgenv = GetFuncFallback(getgenv, function() return genv end)

--Important
local function Interpret(Instructions)
    local ActiveTweens = {}

    for Index = 1, #Instructions do
        local Instruction = Instructions[Index]
        local Type = Instruction[1]

        if Type == "Tween" then
            local TweenObject = Instruction[2]

            if TweenObject then
                ActiveTweens[Index] = TweenObject
                TweenObject:Play()
            end
        elseif Type == "Function" then
            task.spawn(Instruction[2])
        elseif Type == "CompleteTween" then
            local TweenObject = ActiveTweens[Instruction[2]]

            if TweenObject then
                TweenObject.Completed:Wait()
            end
        elseif Type == "Wait" then
            task.wait(tonumber(Instruction[2]))
        end
    end
end

--UI Init
Acquire("Footer/Attribution").Init(gethui(), cloneref, {Interpret = Interpret})