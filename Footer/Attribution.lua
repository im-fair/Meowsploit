local function Init(SafeUi, Cloneref, Interpreter)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = SafeUi
    ScreenGui.Name = ""
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.IgnoreGuiInset = true

    local Frame = Instance.new("Frame")
    Frame.Parent = ScreenGui
    Frame.LayoutOrder = 0
    Frame.Active = false
    Frame.Interactable = true
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.Rotation = 0
    Frame.AutomaticSize = Enum.AutomaticSize.None
    Frame.Name = ""
    Frame.BorderMode = Enum.BorderMode.Outline
    Frame.SizeConstraint = Enum.SizeConstraint.RelativeXY
    Frame.ZIndex = 2
    Frame.BorderSizePixel = 0
    Frame.Visible = true
    Frame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
    Frame.BackgroundTransparency = 1
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame.Size = UDim2.new(0.24464832246303558, 0, 0.4194630980491638, 0)

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = Frame
    UICorner.Name = ""
    UICorner.CornerRadius = UDim.new(0.03200000151991844, 0)

    local UIShadow = Instance.new("UIShadow")
    UIShadow.Parent = Frame
    UIShadow.Name = ""
    UIShadow.ZIndex = -1
    UIShadow.BlurRadius = UDim.new(0, 20)
    UIShadow.Transparency = 1

    local UIStroke = Instance.new("UIStroke")
    UIStroke.Parent = Frame
    UIStroke.Name = ""
    UIStroke.ZIndex = 3
    UIStroke.Color = Color3.fromRGB(0, 0, 0)
    UIStroke.Thickness = 3
    UIStroke.Transparency = 1

    local ImageLabel = Instance.new("ImageLabel")
    ImageLabel.Parent = Frame
    ImageLabel.LayoutOrder = 0
    ImageLabel.Active = false
    ImageLabel.Interactable = true
    ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLabel.Rotation = 0
    ImageLabel.AutomaticSize = Enum.AutomaticSize.None
    ImageLabel.Name = ""
    ImageLabel.BorderMode = Enum.BorderMode.Outline
    ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeXY
    ImageLabel.ZIndex = 2
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Visible = true
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
    ImageLabel.Size = UDim2.new(0.25, 0, 0.4000000059604645, 0)
    ImageLabel.Image = "rbxassetid://115232362040752"
    ImageLabel.ImageTransparency = 1

    local Frame2 = Instance.new("Frame")
    Frame2.Parent = Frame
    Frame2.LayoutOrder = 0
    Frame2.Active = false
    Frame2.Interactable = true
    Frame2.AnchorPoint = Vector2.new(0, 0)
    Frame2.Rotation = 0
    Frame2.AutomaticSize = Enum.AutomaticSize.None
    Frame2.Name = ""
    Frame2.BorderMode = Enum.BorderMode.Outline
    Frame2.SizeConstraint = Enum.SizeConstraint.RelativeXY
    Frame2.ZIndex = 2
    Frame2.BorderSizePixel = 0
    Frame2.Visible = true
    Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame2.BackgroundTransparency = 1
    Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame2.Position = UDim2.new(0.375, 0, 0.30000001192092896, 0)
    Frame2.Size = UDim2.new(0.5, 0, 0.4000000059604645, 0)
    Frame2.ClipsDescendants = true

    local TextLabel = Instance.new("TextLabel")
    TextLabel.Parent = Frame2
    TextLabel.LayoutOrder = 0
    TextLabel.Active = false
    TextLabel.Interactable = true
    TextLabel.AnchorPoint = Vector2.new(0, 0)
    TextLabel.Rotation = 0
    TextLabel.AutomaticSize = Enum.AutomaticSize.None
    TextLabel.Name = ""
    TextLabel.BorderMode = Enum.BorderMode.Outline
    TextLabel.SizeConstraint = Enum.SizeConstraint.RelativeXY
    TextLabel.ZIndex = 2
    TextLabel.BorderSizePixel = 0
    TextLabel.Visible = true
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.Position = UDim2.new(-1, 0, 0.25, 0)
    TextLabel.Size = UDim2.new(1, 0, 0.5, 0)
    TextLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    TextLabel.RichText = true
    TextLabel.Text = "Meowsploit"
    TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.TextSize = 43

    local UIGradient = Instance.new("UIGradient")
    UIGradient.Parent = TextLabel
    UIGradient.Rotation = 0
    UIGradient.Name = ""
    UIGradient.Rotation = 0

    local Frame3 = Instance.new("Frame")
    Frame3.Parent = Frame
    Frame3.LayoutOrder = 0
    Frame3.Active = false
    Frame3.Interactable = true
    Frame3.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame3.Rotation = 0
    Frame3.AutomaticSize = Enum.AutomaticSize.None
    Frame3.Name = ""
    Frame3.BorderMode = Enum.BorderMode.Outline
    Frame3.SizeConstraint = Enum.SizeConstraint.RelativeXY
    Frame3.ZIndex = 2
    Frame3.BorderSizePixel = 0
    Frame3.Visible = true
    Frame3.BackgroundColor3 = Color3.fromRGB(212, 68, 68)
    Frame3.BackgroundTransparency = 1
    Frame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame3.Position = UDim2.new(0.5, 0, 0.21199999749660492, 0)
    Frame3.Size = UDim2.new(0.875, 0, 0.019999999552965164, 0)

    local UICorner2 = Instance.new("UICorner")
    UICorner2.Parent = Frame3
    UICorner2.Name = ""
    UICorner2.CornerRadius = UDim.new(1.600000023841858, 0)

    local UIGradient2 = Instance.new("UIGradient")
    UIGradient2.Parent = Frame3
    UIGradient2.Rotation = 0
    UIGradient2.Name = ""
    UIGradient2.Rotation = 0

    local UIShadow2 = Instance.new("UIShadow")
    UIShadow2.Parent = Frame3
    UIShadow2.Name = ""
    UIShadow2.ZIndex = -1
    UIShadow2.BlurRadius = UDim.new(0, 20)
    UIShadow2.Color = Color3.fromRGB(255, 98, 98)
    UIShadow2.Transparency = 1

    local Frame4 = Instance.new("Frame")
    Frame4.Parent = Frame
    Frame4.LayoutOrder = 0
    Frame4.Active = false
    Frame4.Interactable = true
    Frame4.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame4.Rotation = 0
    Frame4.AutomaticSize = Enum.AutomaticSize.None
    Frame4.Name = ""
    Frame4.BorderMode = Enum.BorderMode.Outline
    Frame4.SizeConstraint = Enum.SizeConstraint.RelativeXY
    Frame4.ZIndex = 2
    Frame4.BorderSizePixel = 0
    Frame4.Visible = true
    Frame4.BackgroundColor3 = Color3.fromRGB(212, 68, 68)
    Frame4.BackgroundTransparency = 1
    Frame4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame4.Position = UDim2.new(0.5, 0, 0.7879999876022339, 0)
    Frame4.Size = UDim2.new(0.875, 0, 0.019999999552965164, 0)

    local UICorner3 = Instance.new("UICorner")
    UICorner3.Parent = Frame4
    UICorner3.Name = ""
    UICorner3.CornerRadius = UDim.new(1.600000023841858, 0)

    local UIShadow3 = Instance.new("UIShadow")
    UIShadow3.Parent = Frame4
    UIShadow3.Name = ""
    UIShadow3.ZIndex = -1
    UIShadow3.BlurRadius = UDim.new(0, 20)
    UIShadow3.Color = Color3.fromRGB(255, 98, 98)
    UIShadow3.Transparency = 1

    local UIGradient3 = Instance.new("UIGradient")
    UIGradient3.Parent = Frame4
    UIGradient3.Rotation = 0
    UIGradient3.Name = ""
    UIGradient3.Rotation = 0

    local UIGradient4 = Instance.new("UIGradient")
    UIGradient4.Parent = Frame
    UIGradient4.Rotation = 90
    UIGradient4.Name = ""
    UIGradient4.Rotation = 90

    local ImageLabel2 = Instance.new("ImageLabel")
    ImageLabel2.Parent = Frame
    ImageLabel2.LayoutOrder = 0
    ImageLabel2.Active = false
    ImageLabel2.Interactable = true
    ImageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLabel2.Rotation = 90
    ImageLabel2.AutomaticSize = Enum.AutomaticSize.None
    ImageLabel2.Name = ""
    ImageLabel2.BorderMode = Enum.BorderMode.Outline
    ImageLabel2.SizeConstraint = Enum.SizeConstraint.RelativeXY
    ImageLabel2.ZIndex = 0
    ImageLabel2.BorderSizePixel = 0
    ImageLabel2.Visible = true
    ImageLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel2.BackgroundTransparency = 1
    ImageLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel2.Position = UDim2.new(0.5, 0, 0.5, 0)
    ImageLabel2.Size = UDim2.new(0.6175000071525574, 0, 1.5880000591278076, 0)
    ImageLabel2.Image = "rbxassetid://128396430862819"
    ImageLabel2.ImageColor3 = Color3.fromRGB(255, 73, 73)
    ImageLabel2.ImageTransparency = 1

    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint.Parent = Frame
    UIAspectRatioConstraint.Name = ""
    UIAspectRatioConstraint.AspectRatio = 1.600000023841858

    --Interpreted Tweens

    local TweenService = Cloneref(game:GetService("TweenService"))
    local function Tween(Inst, Props, t, ti)
        return TweenService:Create(Inst, ti or TweenInfo.new(t or 1), Props)
    end

    local Instructions = {
        Interpreter.NewInstruction(1, true, "TWN", Tween(Frame, {BackgroundTransparency = 0.4}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(UIShadow, {Transparency = 0.3}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(ImageLabel2, {ImageTransparency = 0.9})),
        Interpreter.NewInstruction(1, true, "TWN", Tween(UIStroke, {Transparency = 0.2}, 1)),
        Interpreter.NewInstruction(1, true, "FUNC", function() for i = 1, 150 do UIGradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(i, i, i))}) task.wait(1 / 75) end end, "Async"),
        Interpreter.NewInstruction(1, true, "CTWN", 4),
        Interpreter.NewInstruction(1, true, "TWN", Tween(ImageLabel, {ImageTransparency = 0.4}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(Frame3, {BackgroundTransparency = 0.2}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(Frame4, {BackgroundTransparency = 0.2}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(UIShadow2, {Transparency = 0.5}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(UIShadow3, {Transparency = 0.5}, 1)),
        Interpreter.NewInstruction(1, true, "CTWN", 11),
        Interpreter.NewInstruction(1, true, "TWN", Tween(ImageLabel, {Position = UDim2.new(0.25, 0, 0.5, 0)}, 1)),
        Interpreter.NewInstruction(1, true, "CTWN", 13),
        Interpreter.NewInstruction(1, true, "TWN", Tween(TextLabel, {Position = UDim2.new(0, 0, 0.25, 0)}, 1)),
        Interpreter.NewInstruction(1, true, "CTWN", 15),
        Interpreter.NewInstruction(1, true, "FUNC", function() for i = 0, 30 do local Color = Color3.fromRGB(0, 0, 0):Lerp(Color3.fromRGB(212, 68, 68), i / 30) TextLabel.Text = string.format('Meow<font color="%s">sploit</font>', string.format("#%02x%02x%02x", Color.R * 255, Color.G * 255, Color.B * 255)) task.wait(1 / 30) end end, "Sync"),
        Interpreter.NewInstruction(1, true, "SLP", 4),
        Interpreter.NewInstruction(1, true, "TWN", Tween(ImageLabel, {ImageTransparency = 1}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(TextLabel, {TextTransparency = 1}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(Frame3, {BackgroundTransparency = 1}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(Frame4, {BackgroundTransparency = 1}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(UIShadow2, {Transparency = 1}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(UIShadow3, {Transparency = 1}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(ImageLabel2, {ImageTransparency = 1}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(UIStroke, {Transparency = 1}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(UIShadow, {Transparency = 1}, 1)),
        Interpreter.NewInstruction(1, true, "TWN", Tween(Frame, {BackgroundTransparency = 1}, 1)),
        Interpreter.NewInstruction(1, true, "CTWN", 28),
        Interpreter.NewInstruction(1, true, "FUNC", function() ScreenGui:Destroy() end)
    }

    Interpreter.RunSet(Instructions)
end

return {Init = Init}