--// HEY U IF UR READING THIS DONT TRY TO SKIND LOADING SCREEN :ANGRYYYYY:

                            --[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local ImageLabel = Instance.new("ImageLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 99999

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.Size = UDim2.new(0, 10000, 0, 10000)

UIAspectRatioConstraint.Parent = Frame

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.0487000011, 0, 0.0153000001, 0)
ImageLabel.Size = UDim2.new(0, 358, 0, 358)
ImageLabel.Image = "http://www.roblox.com/asset/?id=13441881980"
ImageLabel.ScaleType = Enum.ScaleType.Fit

UIAspectRatioConstraint_2.Parent = ImageLabel
UIAspectRatioConstraint_2.AspectType = Enum.AspectType.ScaleWithParentSize

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.0280000009, 0, 0.0478000008, 0)
TextLabel.Size = UDim2.new(0, 840, 0, 145)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "We're restarting Pet Simulator X!"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.0373999998, 0, 0.0612313449, 0)
TextLabel_2.Size = UDim2.new(0, 583, 0, 91)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Please wait while we redirect you..."
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

UIAspectRatioConstraint_3.Parent = ScreenGui
UIAspectRatioConstraint_3.AspectType = Enum.AspectType.ScaleWithParentSize
