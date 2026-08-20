local InterpreterClass = {}
InterpreterClass.__index = InterpreterClass

InterpreterClass.RunningUvdat = {}

InterpreterClass.Protos = {
    ["FUNC"] = {
        [1] = function(Instruction)
            if typeof(Instruction.B) ~= "function" then
                Instruction.ERR[Instruction.IDX] = "Invalid B Register"
                return
            end

            if Instruction.C == "Async" then
                task.spawn(Instruction.B)
            elseif Instruction.C == "Sync" then
                Instruction.B()
            else
                Instruction.ERR[Instruction.IDX] = "Invalid C Register"
            end
        end
    },
    ["TWN"] = {
        [1] = function(Instruction)
            if not Instruction.B or not Instruction.B:IsA("Tween") then
                Instruction.ERR[Instruction.IDX] = "Invalid B Register"
                return
            end

            Instruction.B:Play()
            InterpreterClass.RunningUvdat[Instruction.IDX] = Instruction.B
            Instruction.B.Completed:Once(function() InterpreterClass.RunningUvdat[Instruction.IDX] = nil end)
        end
    },
    ["CTWN"] = {
        [1] = function(Instruction)
            if not Instruction.B or typeof(Instruction.B) ~= "number" then
                Instruction.ERR[Instruction.IDX] = "Invalid B Register"
                return
            end

            local Uvdat = InterpreterClass.RunningUvdat[Instruction.B]

            if not Uvdat then
                Instruction.ERR[Instruction.IDX] = "B Register was already cleared from RunningUvdat"
                return
            end

            Uvdat.Completed:Wait()
        end
    },
    ["SLP"] = {
        [1] = function(Instruction)
            if not Instruction.B or typeof(Instruction.B) ~= "number" then
                Instruction.ERR[Instruction.IDX] = "Invalid B Register"
                return
            end

            task.wait(Instruction.B)
        end
    }
}
InterpreterClass.InstructionsIndexxed = 1

InterpreterClass.NewInstruction = function(OpCode, Debug, RegisterA, RegisterB, RegisterC)
    local Instruction = {
        ["A"] = RegisterA or "NULL",
        ["B"] = RegisterB or "NULL",
        ["C"] = RegisterC or "NULL",
        ["OP"] = OpCode or 1,
        ["DBG"] = Debug or false,
        ["ERR"] = {},
        ["IDX"] = InterpreterClass.InstructionsIndexxed
    }

    if Instruction.A == "NULL" and Instruction.B == "NULL" and Instruction.C == "NULL" then
        Instruction.ERR["NULL"] = "Invalid Instruction"
        return
    end

    if not InterpreterClass.Protos[Instruction.A] then
        Instruction.ERR["STRT"] = "Invalid Proto"
        return nil
    end

    if not InterpreterClass.Protos[Instruction.A][Instruction.OP] then
        Instruction.ERR["OP"] = "Invalid Operation"
        return nil
    end

    setmetatable(Instruction, InterpreterClass)
    InterpreterClass.InstructionsIndexxed += 1

    return Instruction
end

function InterpreterClass:Run()
    local Instruction = self
    InterpreterClass.Protos[Instruction.A][Instruction.OP](Instruction)

    if next(Instruction.ERR) == nil or not Instruction.DBG then return end

    local ERRDAT = {}
    for ERRIDX, ERRINFO in Instruction.ERR do
        table.insert(ERRDAT,
            `Instruction Error [{ERRIDX}]: {ERRINFO}\n    OP: {Instruction.OP}\n    A: {Instruction.A}\n    B: {Instruction.B}\n    C: {Instruction.C}`
        )
    end
    warn(table.concat(ERRDAT, "\n"))
end

function InterpreterClass.RunSet(InstructionSet)
    for _, Instruction in InstructionSet do
        if Instruction == nil then continue end

        Instruction:Run()
    end
end

return InterpreterClass