--A fair notice is that this interpreter is in my opinion not necessary but merely for the point of proving that I am a good coder who can make terrible decisions :p

local InterpreterClass = {}
InterpreterClass.__index = InterpreterClass

local cloneref = cloneref or function(...) return ... end
local TWS = cloneref(game:GetService("TweenService"))

InterpreterClass.Protos = {
    ["FNC"] = {
        [1] = function(Instruction)
            if typeof(Instruction.BND) ~= "function" then
                Instruction.ERR[Instruction.IDX] = "Invalid BND Register"
                return
            end

            Instruction.BND(table.unpack(Instruction.V))
        end,
        [2] = function(Instruction)
            if typeof(Instruction.BND) ~= "function" then
                Instruction.ERR[Instruction.IDX] = "Invalid BND Register"
                return
            end

            task.spawn(Instruction.BND, table.unpack(Instruction.V))
        end
    },
    ["TWN"] = {
        [1] = function(Instruction)
            if (typeof(Instruction.V[1]) ~= "TweenInfo" and typeof(Instruction.V[1]) ~= "number") or typeof(Instruction.V[2]) ~= "table" then
                Instruction.ERR[Instruction.IDX] = "Invalid V Register"
                return
            end

            TWS:Create(Instruction.BND, typeof(Instruction.V[1]) == "TweenInfo" and Instruction.V[1] or TweenInfo.new(Instruction.V[1] or 1), Instruction.V[2]):Play()
        end,
        [2] = function(Instruction)
            if (typeof(Instruction.V[1]) ~= "TweenInfo" and typeof(Instruction.V[1]) ~= "number") or typeof(Instruction.V[2]) ~= "table" then
                Instruction.ERR[Instruction.IDX] = "Invalid V Register"
                return
            end

            local TW = TWS:Create(Instruction.BND, typeof(Instruction.V[1]) == "TweenInfo" and Instruction.V[1] or TweenInfo.new(Instruction.V[1] or 1), Instruction.V[2])

            TW:Play()
            TW.Completed:Wait()
        end
    },
    ["SLP"] = {
        [1] = function(Instruction)
            if typeof(Instruction.V[1]) ~= "number" then
                Instruction.ERR[Instruction.IDX] = "Invalid V[1] Register"
                return
            end

            task.wait(Instruction.V[1])
        end
    }
}
InterpreterClass.InstructionsIndexxed = 1

InterpreterClass.NewSet = function(Debug)
    local Set = {
        ["DBG"] = Debug or false
    }

    setmetatable(Set, InterpreterClass)

    return Set
end

function InterpreterClass:BindToSet(Binded, RegisterA, Opcode, ...)
    local Instruction = {
        ["BND"] = Binded or "NULL",
        ["A"] = RegisterA or "NULL",
        ["OP"] = Opcode or 1,
        ["V"] = {...},

        ["ERR"] = {},
        ["IDX"] = InterpreterClass.InstructionsIndexxed
    }

    if not InterpreterClass.Protos[Instruction.A] then
        Instruction.ERR["PRO"] = "Invalid Proto"
        return nil
    end

    if not InterpreterClass.Protos[Instruction.A][Instruction.OP] then
        Instruction.ERR["OPC"] = "Invalid Opcode"
        return nil
    end

    InterpreterClass.InstructionsIndexxed += 1

    self[Instruction.IDX] = Instruction
end

function InterpreterClass:RunSet()
    local Set = self
    local ERRDAT = {}

    for k, Instruction in Set do
        if typeof(k) ~= "number" then continue end

        InterpreterClass.Protos[Instruction.A][Instruction.OP](Instruction)

        if next(Instruction.ERR) == nil or not Set.DBG then continue end
        for ERRIDX, ERRINFO in Instruction.ERR do
            table.insert(ERRDAT,
                `Instruction Error [{ERRIDX}]: {ERRINFO}\n    BND: {Instruction.BND}\n    OP: {Instruction.OP}\n    A: {Instruction.A}`
            )
        end
    end

    if not Set.DBG then return end

    warn(table.concat(ERRDAT, "\n\n"))
end

return InterpreterClass