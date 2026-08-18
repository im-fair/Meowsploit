local function Init(SafeUi, Cloneref)
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = SafeUi
    ScreenGui.Name = ""
    ScreenGui.IgnoreGuiInset = true
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

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
    Frame.ZIndex = 1
    Frame.BorderSizePixel = 0
    Frame.Visible = true
    Frame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
    Frame.BackgroundTransparency = 1
    Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    Frame.Size = UDim2.new(0.24464832246303558, 0, 0.33557048439979553, 0)

    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint.Name = ""
    UIAspectRatioConstraint.Parent = Frame
    UIAspectRatioConstraint.AspectRatio = 2

    local UIGradient = Instance.new("UIGradient")
    UIGradient.Parent = Frame
    UIGradient.Rotation = 0
    UIGradient.Name = ""
    UIGradient.Rotation = 0

    local UICorner = Instance.new("UICorner")
    UICorner.Parent = Frame
    UICorner.Name = ""
    UICorner.CornerRadius = UDim.new(0.03999999538064003, 0)

    local UIShadow = Instance.new("UIShadow")
    UIShadow.Parent = Frame
    UIShadow.Name = ""
    UIShadow.ZIndex = -1
    UIShadow.BlurRadius = UDim.new(0, 20)
    UIShadow.Transparency = 1

    local ImageLabel = Instance.new("ImageLabel")
    ImageLabel.Parent = ScreenGui
    ImageLabel.LayoutOrder = 0
    ImageLabel.Active = false
    ImageLabel.Interactable = true
    ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLabel.Rotation = 0
    ImageLabel.AutomaticSize = Enum.AutomaticSize.None
    ImageLabel.Name = ""
    ImageLabel.BorderMode = Enum.BorderMode.Outline
    ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeXY
    ImageLabel.ZIndex = 1
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Visible = true
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
    ImageLabel.Size = UDim2.new(0.061162080615758896, 0, 0.15, 0)
    ImageLabel.Image = "rbxassetid://115232362040752"
    ImageLabel.ImageTransparency = 1

    local Frame2 = Instance.new("Frame")
    Frame2.Parent = ScreenGui
    Frame2.LayoutOrder = 0
    Frame2.Active = false
    Frame2.Interactable = true
    Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame2.Rotation = 0
    Frame2.AutomaticSize = Enum.AutomaticSize.None
    Frame2.Name = ""
    Frame2.BorderMode = Enum.BorderMode.Outline
    Frame2.SizeConstraint = Enum.SizeConstraint.RelativeXY
    Frame2.ZIndex = 1
    Frame2.BorderSizePixel = 0
    Frame2.Visible = true
    Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame2.BackgroundTransparency = 1
    Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Frame2.Position = UDim2.new(0.53, 0, 0.5, 0)
    Frame2.Size = UDim2.new(0.12232416123151779, 0, 0.08389262109994888, 0)
    Frame2.ClipsDescendants = true

    local UIAspectRatioConstraint2 = Instance.new("UIAspectRatioConstraint")
    UIAspectRatioConstraint2.Name = ""
    UIAspectRatioConstraint2.Parent = Frame
    UIAspectRatioConstraint2.AspectRatio = 4

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
    TextLabel.ZIndex = 1
    TextLabel.BorderSizePixel = 0
    TextLabel.Visible = true
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.Position = UDim2.new(-1, 0, 0, 0)
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.FontFace = Font.new("rbxassetid://12187365364")
    TextLabel.RichText = true
    TextLabel.Text = "Meowsploit"
    TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.TextSize = 40
    
    local TweenService = Cloneref(game:GetService("TweenService"))
    local function Tween(Inst, Props, t, ti)
        return TweenService:Create(Inst, ti or TweenInfo.new(t or 1), Props)
    end

    local T1 = Tween(Frame, {BackgroundTransparency=0}, 1.5)
    local T2 = Tween(UIShadow, {Transparency=0.5}, 1.5)
    local T3 = Tween(ImageLabel, {ImageTransparency=0})
    local T4 = Tween(ImageLabel, {Position=UDim2.new(0.44, 0, ImageLabel.Position.Y.Scale, 0)})
    local T5 = Tween(TextLabel, {Position=UDim2.new(0, 0, 0, 0)})
    local T6 = Tween(Frame, {BackgroundTransparency=1})
    local T7 = Tween(ImageLabel, {ImageTransparency=1})
    local T8 = Tween(TextLabel, {TextTransparency=1})
    local T9 = Tween(UIShadow, {Transparency=1})

    T1:Play()
    T2:Play()
    for i = 1, 74 do
        UIGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(255 - i, 255 - i, 255 - i))
        })
        task.wait()
    end
    T2.Completed:Wait()
    T3:Play()
    T3.Completed:Wait()
    T4:Play()
    T4.Completed:Wait()
    T5:Play()
    T5.Completed:Wait()
    for i = 0, 30 do
        local Color = Color3.fromRGB(0, 0, 0):Lerp(Color3.fromRGB(212, 68, 68), i / 30)
        TextLabel.Text = string.format('Meow<font color="%s">sploit</font>', string.format("#%02x%02x%02x", Color.R * 255, Color.G * 255, Color.B * 255))
        task.wait(1 / 30)
    end
    task.wait(2)
    for _, Tween in {T6, T7, T8, T9} do
        Tween:Play()
    end
    T9.Completed:Wait()
    ScreenGui:Destroy()
end

return {Init = Init}