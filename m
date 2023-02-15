whitelist = {
	["smugEx"] = true;
	["Bloxume"] = true;
	["neeaba"] = true;
	["TfojaBabciaTereska"] = true;
	["Miguel_Mikaelsonn"] = true;
	["BEN10ENSEMBLEOSMO"] = true;
	["10KPhoton"] = true;
	["getrichboyz"] = true;
	["Evanisstinky"] = true;
}

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

if whitelist[Player.Name] ~= true then return end

local InsertService = game:GetService("InsertService")
local StarterGui = game:GetService("StarterGui")
local InputService = game:GetService("UserInputService")
local RepStorage = game:GetService("ReplicatedStorage")
local BadgeService = game:GetService("BadgeService")
local TweenService = game:GetService("TweenService")
local Debris = game:GetService("Debris")
local RunService = game:GetService("RunService")
local Events = InsertService.Events

Active = true
Cooldown = false
Holding = false
AntiObscuroOn = false
AntiSilencioOn = false
ShieldBypassOn = false
ElderBypassOn = false
GodModeOn = false
LoopSpellOn = false
AutoBlockOn = false
GhostHotkeysOn = true
KeyCooldownOn = true
AutoClashAmount = 51
CurrentChat = ""
OwnsElder = false
OwnsFlight = false
OwnsAim = false
PreDeathCFrame = nil

local GHotkey = Instance.new("ScreenGui")
local Tab = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Header = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Max = Instance.new("ImageButton")
local Background = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Hotkeys = Instance.new("Frame")
local EnterMsg = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local EnterKey = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local TextBox_2 = Instance.new("TextBox")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local List = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Item = Instance.new("Frame")
local ItemFrame = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Message = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local Key = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local Delete = Instance.new("ImageButton")
local UICorner_7 = Instance.new("UICorner")
local Register = Instance.new("ImageButton")
local UICorner_8 = Instance.new("UICorner")
local Regular = Instance.new("Frame")
local GhostHotkeys = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local Trigger = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local BackColor = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local Label = Instance.new("TextLabel")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local KeyCooldown = Instance.new("Frame")
local UICorner_12 = Instance.new("UICorner")
local Trigger_2 = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")
local BackColor_2 = Instance.new("Frame")
local UICorner_14 = Instance.new("UICorner")
local Label_2 = Instance.new("TextLabel")
local UITextSizeConstraint_9 = Instance.new("UITextSizeConstraint")
local AntiObscuro = Instance.new("Frame")
local UICorner_15 = Instance.new("UICorner")
local Trigger_3 = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local UITextSizeConstraint_10 = Instance.new("UITextSizeConstraint")
local BackColor_3 = Instance.new("Frame")
local UICorner_17 = Instance.new("UICorner")
local Label_3 = Instance.new("TextLabel")
local UITextSizeConstraint_11 = Instance.new("UITextSizeConstraint")
local ShieldBypass = Instance.new("Frame")
local UICorner_18 = Instance.new("UICorner")
local Trigger_4 = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local UITextSizeConstraint_12 = Instance.new("UITextSizeConstraint")
local BackColor_4 = Instance.new("Frame")
local UICorner_20 = Instance.new("UICorner")
local Label_4 = Instance.new("TextLabel")
local UITextSizeConstraint_13 = Instance.new("UITextSizeConstraint")
local AntiSilencio = Instance.new("Frame")
local UICorner_21 = Instance.new("UICorner")
local Trigger_5 = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local UITextSizeConstraint_14 = Instance.new("UITextSizeConstraint")
local BackColor_5 = Instance.new("Frame")
local UICorner_23 = Instance.new("UICorner")
local Label_5 = Instance.new("TextLabel")
local UITextSizeConstraint_15 = Instance.new("UITextSizeConstraint")
local AutoClash = Instance.new("Frame")
local UICorner_24 = Instance.new("UICorner")
local Slider = Instance.new("TextButton")
local UICorner_25 = Instance.new("UICorner")
local Scale = Instance.new("Frame")
local UICorner_26 = Instance.new("UICorner")
local Label_6 = Instance.new("TextLabel")
local UITextSizeConstraint_16 = Instance.new("UITextSizeConstraint")
local Amount = Instance.new("TextLabel")
local UITextSizeConstraint_17 = Instance.new("UITextSizeConstraint")
local OP = Instance.new("Frame")
local AutoBlock = Instance.new("Frame")
local UICorner_27 = Instance.new("UICorner")
local Trigger_6 = Instance.new("TextButton")
local UICorner_28 = Instance.new("UICorner")
local UITextSizeConstraint_18 = Instance.new("UITextSizeConstraint")
local BackColor_6 = Instance.new("Frame")
local UICorner_29 = Instance.new("UICorner")
local Label_7 = Instance.new("TextLabel")
local UITextSizeConstraint_19 = Instance.new("UITextSizeConstraint")
local ElderBypass = Instance.new("Frame")
local UICorner_30 = Instance.new("UICorner")
local Trigger_7 = Instance.new("TextButton")
local UICorner_31 = Instance.new("UICorner")
local UITextSizeConstraint_20 = Instance.new("UITextSizeConstraint")
local BackColor_7 = Instance.new("Frame")
local UICorner_32 = Instance.new("UICorner")
local Label_8 = Instance.new("TextLabel")
local UITextSizeConstraint_21 = Instance.new("UITextSizeConstraint")
local EnterPlr = Instance.new("Frame")
local UICorner_33 = Instance.new("UICorner")
local TextBox_3 = Instance.new("TextBox")
local UITextSizeConstraint_22 = Instance.new("UITextSizeConstraint")
local EnterSpell = Instance.new("Frame")
local UICorner_34 = Instance.new("UICorner")
local TextBox_4 = Instance.new("TextBox")
local UITextSizeConstraint_23 = Instance.new("UITextSizeConstraint")
local LoopSpell = Instance.new("Frame")
local GodMode = Instance.new("Frame")
local UICorner_35 = Instance.new("UICorner")
local Trigger_8 = Instance.new("TextButton")
local Trigger_9 = Instance.new("TextButton")
local UICorner_36 = Instance.new("UICorner")
local UITextSizeConstraint_24 = Instance.new("UITextSizeConstraint")
local BackColor_8 = Instance.new("Frame")
local BackColor_9 = Instance.new("Frame")
local UICorner_37 = Instance.new("UICorner")
local Label_9 = Instance.new("TextLabel")
local Label_10 = Instance.new("TextLabel")
local UITextSizeConstraint_25 = Instance.new("UITextSizeConstraint")
local GetAim = Instance.new("TextButton")
local UICorner_38 = Instance.new("UICorner")
local UITextSizeConstraint_26 = Instance.new("UITextSizeConstraint")
local GetPasses = Instance.new("TextButton")
local UICorner_39 = Instance.new("UICorner")
local UITextSizeConstraint_27 = Instance.new("UITextSizeConstraint")
local UITextSizeConstraint_28 = Instance.new("UITextSizeConstraint")
local Fire = Instance.new("TextButton")
local Teleport = Instance.new("TextButton")
local UICorner_40 = Instance.new("UICorner")
local UICorner_41 = Instance.new("UICorner")
local UICorner_42 = Instance.new("UICorner")
local UICorner_43 = Instance.new("UICorner")
local UICorner_44 = Instance.new("UICorner")
local UITextSizeConstraint_29 = Instance.new("UITextSizeConstraint")
local Min = Instance.new("ImageButton")
local Exit = Instance.new("ImageButton")
local Hotkeys_2 = Instance.new("TextButton")
local UITextSizeConstraint_30 = Instance.new("UITextSizeConstraint")
local OP_2 = Instance.new("TextButton")
local UITextSizeConstraint_31 = Instance.new("UITextSizeConstraint")
local Regular_2 = Instance.new("TextButton")
local UITextSizeConstraint_32 = Instance.new("UITextSizeConstraint")
local UITextSizeConstraint_33 = Instance.new("UITextSizeConstraint")
local UITextSizeConstraint_34 = Instance.new("UITextSizeConstraint")
local UITextSizeConstraint_35 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

GHotkey.Name = "GHotkey"
GHotkey.Parent = Player:WaitForChild("PlayerGui")
GHotkey.ResetOnSpawn = false

Tab.Name = "Tab"
Tab.Parent = GHotkey
Tab.Active = true
Tab.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
Tab.Position = UDim2.new(0, 8, 0, 351)
Tab.Selectable = true
Tab.Size = UDim2.new(0.204641357, 0, 0.0332278498, 0)
Tab.Draggable = true

UICorner.Parent = Tab

Header.Name = "Header"
Header.Parent = Tab
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.BackgroundTransparency = 1.000
Header.Position = UDim2.new(0, 0, 0, 0)
Header.Size = UDim2.new(1, 0, 1, 0)
Header.Font = Enum.Font.JosefinSans
Header.Text = "Goldenrod Exploit"
Header.TextColor3 = Color3.fromRGB(156, 151, 112)
Header.TextScaled = true
Header.TextSize = 14.000
Header.TextWrapped = true

UITextSizeConstraint.Parent = Header
UITextSizeConstraint.MaxTextSize = 14

Max.Name = "Max"
Max.Parent = Tab
Max.BackgroundTransparency = 1.000
Max.LayoutOrder = 10
Max.Position = UDim2.new(0.00343642617, 0, 0.0476190448, 0)
Max.Size = UDim2.new(0.0652920976, 0, 0.904761851, 0)
Max.Visible = false
Max.ZIndex = 2
Max.Image = "rbxassetid://3926307971"
Max.ImageColor3 = Color3.fromRGB(176, 227, 255)
Max.ImageRectOffset = Vector2.new(364, 164)
Max.ImageRectSize = Vector2.new(36, 36)

Background.Name = "Background"
Background.Parent = Tab
Background.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Background.Position = UDim2.new(0, 0, 0, 0)
Background.Size = UDim2.new(1, 0, 13, 0)
Background.ZIndex = 0

UICorner_2.Parent = Background

Hotkeys.Name = "Hotkeys"
Hotkeys.Parent = Background
Hotkeys.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hotkeys.BackgroundTransparency = 1.000
Hotkeys.Size = UDim2.new(1, 0, 1, 0)

EnterMsg.Name = "EnterMsg"
EnterMsg.Parent = Hotkeys
EnterMsg.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
EnterMsg.Position = UDim2.new(0.147766322, 0, 0.174574241, 0)
EnterMsg.Size = UDim2.new(0.704467356, 0, 0.102189779, 0)

UICorner_3.Parent = EnterMsg

TextBox.Parent = EnterMsg
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.Position = UDim2.new(0.0536585376, 0, 0.107142858, 0)
TextBox.Size = UDim2.new(0.897560954, 0, 0.785714269, 0)
TextBox.Font = Enum.Font.Highway
TextBox.FontFace.Bold = true
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.Text = "Expelliarmus"
TextBox.TextColor3 = Color3.fromRGB(150, 150, 150)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UITextSizeConstraint_2.Parent = TextBox
UITextSizeConstraint_2.MaxTextSize = 22

EnterKey.Name = "EnterKey"
EnterKey.Parent = Hotkeys
EnterKey.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
EnterKey.Position = UDim2.new(0.0240550097, 0, 0.174574241, 0)
EnterKey.Size = UDim2.new(0.103092782, 0, 0.102189779, 0)

UICorner_4.Parent = EnterKey

TextBox_2.Parent = EnterKey
TextBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.BackgroundTransparency = 1.000
TextBox_2.Position = UDim2.new(0.100000001, 0, 0.107142858, 0)
TextBox_2.Size = UDim2.new(0.800000012, 0, 0.785714269, 0)
TextBox_2.Font = Enum.Font.Highway
TextBox_2.FontFace.Bold = true
TextBox_2.Text = "E"
TextBox_2.TextColor3 = Color3.fromRGB(150, 150, 150)
TextBox_2.TextScaled = true
TextBox_2.TextSize = 14.000
TextBox_2.TextWrapped = true

UITextSizeConstraint_3.Parent = TextBox_2
UITextSizeConstraint_3.MaxTextSize = 22

List.Name = "List"
List.Parent = Hotkeys
List.Active = true
List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List.BackgroundTransparency = 1.000
List.BorderColor3 = Color3.fromRGB(70, 70, 70)
List.Position = UDim2.new(0, 0, 0.302919716, 0)
List.Size = UDim2.new(1, 0, 0.697080255, 0)
List.CanvasSize = UDim2.new(0, 0, 5, 0)

UIListLayout.Parent = List
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Item.Name = "Item"
Item.Parent = List
Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Item.BackgroundTransparency = 1.000
Item.Position = UDim2.new(0, 0, 0.0204377957, 0)
Item.Size = UDim2.new(0.95, 0, 0.036, 0)
Item.Visible = false

ItemFrame.Name = "ItemFrame"
ItemFrame.Parent = Item
ItemFrame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
ItemFrame.Position = UDim2.new(0.022, 0, 0.081, 0)
ItemFrame.Size = UDim2.new(0.944, 0, 0.773, 0)

UICorner_5.CornerRadius = UDim.new(0, 14)
UICorner_5.Parent = ItemFrame

Message.Name = "Message"
Message.Parent = ItemFrame
Message.BackgroundColor3 = Color3.fromRGB(156, 156, 156)
Message.BackgroundTransparency = 1.000
Message.Position = UDim2.new(0.288973391, 0, 0.102564104, 0)
Message.Size = UDim2.new(0.688212931, 0, 0.897435904, 0)
Message.Font = Enum.Font.JosefinSans
Message.Text = "Example Text"
Message.TextColor3 = Color3.fromRGB(150, 150, 150)
Message.TextScaled = true
Message.TextSize = 14.000
Message.TextWrapped = true

UITextSizeConstraint_4.Parent = Message
UITextSizeConstraint_4.MaxTextSize = 28

Key.Name = "Key"
Key.Parent = ItemFrame
Key.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Key.Position = UDim2.new(0.15209125, 0, 0.102564104, 0)
Key.Size = UDim2.new(0.121673003, 0, 0.820512831, 0)
Key.Font = Enum.Font.FredokaOne
Key.Text = "Z"
Key.TextColor3 = Color3.fromRGB(150, 150, 150)
Key.TextScaled = true
Key.TextSize = 14.000
Key.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 10)
UICorner_6.Parent = Key

UITextSizeConstraint_5.Parent = Key
UITextSizeConstraint_5.MaxTextSize = 32

Delete.Name = "Delete"
Delete.Parent = ItemFrame
Delete.BackgroundColor3 = Color3.fromRGB(165, 129, 129)
Delete.Position = UDim2.new(0.0114068445, 0, 0.102564104, 0)
Delete.Size = UDim2.new(0.121673003, 0, 0.794871807, 0)
Delete.ZIndex = 2
Delete.AutoButtonColor = false
Delete.Image = "rbxassetid://3926305904"
Delete.ImageRectOffset = Vector2.new(644, 724)
Delete.ImageRectSize = Vector2.new(36, 36)

UICorner_7.CornerRadius = UDim.new(0, 10)
UICorner_7.Parent = Delete

Register.Name = "Register"
Register.Parent = Hotkeys
Register.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Register.BorderColor3 = Color3.fromRGB(27, 42, 53)
Register.Position = UDim2.new(0.873000085, 0, 0.174574241, 0)
Register.Size = UDim2.new(0.103092782, 0, 0.102189779, 0)
Register.ZIndex = 2
Register.AutoButtonColor = false
Register.Image = "rbxassetid://3926305904"
Register.ImageColor3 = Color3.fromRGB(150, 150, 150)
Register.ImageRectOffset = Vector2.new(312, 4)
Register.ImageRectSize = Vector2.new(24, 24)

UICorner_8.Parent = Register

Regular.Name = "Regular"
Regular.Parent = Background
Regular.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Regular.BackgroundTransparency = 1.000
Regular.Size = UDim2.new(1, 0, 1, 0)
Regular.Visible = false

GhostHotkeys.Name = "GhostHotkeys"
GhostHotkeys.Parent = Regular
GhostHotkeys.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
GhostHotkeys.Position = UDim2.new(0.0274364259, 0, 0.215496361, 0)
GhostHotkeys.Size = UDim2.new(0.226804122, 0, 0.080291979, 0)

UICorner_9.Parent = GhostHotkeys

Trigger.Name = "Trigger"
Trigger.Parent = GhostHotkeys
Trigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Trigger.BackgroundTransparency = 0.100
Trigger.Position = UDim2.new(0.615, 0, -0.045, 0)
Trigger.Size = UDim2.new(0.264705896, 0, 1.09090912, 0)
Trigger.ZIndex = 2
Trigger.Font = Enum.Font.SourceSans
Trigger.Text = ""
Trigger.TextColor3 = Color3.fromRGB(0, 0, 0)
Trigger.TextScaled = true
Trigger.TextSize = 14.000
Trigger.TextWrapped = true

UICorner_10.Parent = Trigger

UITextSizeConstraint_6.Parent = Trigger
UITextSizeConstraint_6.MaxTextSize = 14

BackColor.Name = "BackColor"
BackColor.Parent = GhostHotkeys
BackColor.BackgroundColor3 = Color3.fromRGB(174, 255, 177)
BackColor.Position = UDim2.new(0.0441176482, 0, 0.13636364, 0)
BackColor.Size = UDim2.new(0.911764681, 0, 0.727272749, 0)

UICorner_11.Parent = BackColor

Label.Name = "Label"
Label.Parent = GhostHotkeys
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Position = UDim2.new(1, 0, 0, 0)
Label.Size = UDim2.new(3.12121201, 0, 0.909090817, 0)
Label.Font = Enum.Font.Highway
Label.FontFace.Bold = true
Label.Text = "Ghost Messages"
Label.TextColor3 = Color3.fromRGB(150, 150, 150)
Label.TextScaled = true
Label.TextSize = 14.000
Label.TextWrapped = true

UITextSizeConstraint_7.Parent = Label
UITextSizeConstraint_7.MaxTextSize = 15

KeyCooldown.Name = "KeyCooldown"
KeyCooldown.Parent = Regular
KeyCooldown.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
KeyCooldown.Position = UDim2.new(0.0274364259, 0, 0.324496329, 0)
KeyCooldown.Size = UDim2.new(0.226804122, 0, 0.080291979, 0)

UICorner_12.Parent = KeyCooldown

Trigger_2.Name = "Trigger"
Trigger_2.Parent = KeyCooldown
Trigger_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Trigger_2.BackgroundTransparency = 0.100
Trigger_2.Position = UDim2.new(0.615, 0, -0.045, 0)
Trigger_2.Size = UDim2.new(0.264705896, 0, 1.09090912, 0)
Trigger_2.ZIndex = 2
Trigger_2.Font = Enum.Font.SourceSans
Trigger_2.Text = ""
Trigger_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Trigger_2.TextScaled = true
Trigger_2.TextSize = 14.000
Trigger_2.TextWrapped = true

UICorner_13.Parent = Trigger_2

UITextSizeConstraint_8.Parent = Trigger_2
UITextSizeConstraint_8.MaxTextSize = 14

BackColor_2.Name = "BackColor"
BackColor_2.Parent = KeyCooldown
BackColor_2.BackgroundColor3 = Color3.fromRGB(174, 255, 177)
BackColor_2.Position = UDim2.new(0.0441176482, 0, 0.13636364, 0)
BackColor_2.Size = UDim2.new(0.911764681, 0, 0.727272749, 0)

UICorner_14.Parent = BackColor_2

Label_2.Name = "Label"
Label_2.Parent = KeyCooldown
Label_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_2.BackgroundTransparency = 1.000
Label_2.Position = UDim2.new(1, 0, 0, 0)
Label_2.Size = UDim2.new(3.12121201, 0, 0.909090817, 0)
Label_2.Font = Enum.Font.Highway
Label_2.FontFace.Bold = true
Label_2.Text = "Key Cooldown"
Label_2.TextColor3 = Color3.fromRGB(150, 150, 150)
Label_2.TextScaled = true
Label_2.TextSize = 14.000
Label_2.TextWrapped = true

UITextSizeConstraint_9.Parent = Label_2
UITextSizeConstraint_9.MaxTextSize = 15

AntiObscuro.Name = "AntiObscuro"
AntiObscuro.Parent = Regular
AntiObscuro.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
AntiObscuro.Position = UDim2.new(0.0274364259, 0, 0.543474436, 0)
AntiObscuro.Size = UDim2.new(0.226804122, 0, 0.080291979, 0)

UICorner_15.Parent = AntiObscuro

Trigger_3.Name = "Trigger"
Trigger_3.Parent = AntiObscuro
Trigger_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Trigger_3.BackgroundTransparency = 0.100
Trigger_3.Position = UDim2.new(0.119999997, 0, -0.0454545468, 0)
Trigger_3.Size = UDim2.new(0.264705896, 0, 1.09090912, 0)
Trigger_3.ZIndex = 2
Trigger_3.Font = Enum.Font.SourceSans
Trigger_3.Text = ""
Trigger_3.TextColor3 = Color3.fromRGB(0, 0, 0)
Trigger_3.TextScaled = true
Trigger_3.TextSize = 14.000
Trigger_3.TextWrapped = true

UICorner_16.Parent = Trigger_3

UITextSizeConstraint_10.Parent = Trigger_3
UITextSizeConstraint_10.MaxTextSize = 14

BackColor_3.Name = "BackColor"
BackColor_3.Parent = AntiObscuro
BackColor_3.BackgroundColor3 = Color3.fromRGB(255, 171, 171)
BackColor_3.Position = UDim2.new(0.0441176482, 0, 0.13636364, 0)
BackColor_3.Size = UDim2.new(0.911764681, 0, 0.727272749, 0)

UICorner_17.Parent = BackColor_3

Label_3.Name = "Label"
Label_3.Parent = AntiObscuro
Label_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_3.BackgroundTransparency = 1.000
Label_3.Position = UDim2.new(1, 0, 0, 0)
Label_3.Size = UDim2.new(3.12121201, 0, 0.909090817, 0)
Label_3.Font = Enum.Font.Highway
Label_3.FontFace.Bold = true
Label_3.Text = "Anti-Obscuro"
Label_3.TextColor3 = Color3.fromRGB(150, 150, 150)
Label_3.TextScaled = true
Label_3.TextSize = 14.000
Label_3.TextWrapped = true

UITextSizeConstraint_11.Parent = Label_3
UITextSizeConstraint_11.MaxTextSize = 15

ShieldBypass.Name = "ShieldBypass"
ShieldBypass.Parent = Regular
ShieldBypass.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
ShieldBypass.Position = UDim2.new(0.0274364259, 0, 0.433985382, 0)
ShieldBypass.Size = UDim2.new(0.226804122, 0, 0.080291979, 0)

UICorner_18.Parent = ShieldBypass

Trigger_4.Name = "Trigger"
Trigger_4.Parent = ShieldBypass
Trigger_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Trigger_4.BackgroundTransparency = 0.100
Trigger_4.Position = UDim2.new(0.119999997, 0, -0.0454545468, 0)
Trigger_4.Size = UDim2.new(0.264705896, 0, 1.09090912, 0)
Trigger_4.ZIndex = 2
Trigger_4.Font = Enum.Font.SourceSans
Trigger_4.Text = ""
Trigger_4.TextColor3 = Color3.fromRGB(0, 0, 0)
Trigger_4.TextScaled = true
Trigger_4.TextSize = 14.000
Trigger_4.TextWrapped = true

UICorner_19.Parent = Trigger_4

UITextSizeConstraint_12.Parent = Trigger_4
UITextSizeConstraint_12.MaxTextSize = 14

BackColor_4.Name = "BackColor"
BackColor_4.Parent = ShieldBypass
BackColor_4.BackgroundColor3 = Color3.fromRGB(255, 171, 171)
BackColor_4.Position = UDim2.new(0.0441176482, 0, 0.13636364, 0)
BackColor_4.Size = UDim2.new(0.911764681, 0, 0.727272749, 0)

UICorner_20.Parent = BackColor_4

Label_4.Name = "Label"
Label_4.Parent = ShieldBypass
Label_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_4.BackgroundTransparency = 1.000
Label_4.Position = UDim2.new(1, 0, 0, 0)
Label_4.Size = UDim2.new(3.12121201, 0, 0.909090817, 0)
Label_4.Font = Enum.Font.Highway
Label_4.FontFace.Bold = true
Label_4.Text = "Shield Bypass"
Label_4.TextColor3 = Color3.fromRGB(150, 150, 150)
Label_4.TextScaled = true
Label_4.TextSize = 14.000
Label_4.TextWrapped = true

UITextSizeConstraint_13.Parent = Label_4
UITextSizeConstraint_13.MaxTextSize = 15

AntiSilencio.Name = "AntiSilencio"
AntiSilencio.Parent = Regular
AntiSilencio.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
AntiSilencio.Position = UDim2.new(0.0274364259, 0, 0.652963459, 0)
AntiSilencio.Size = UDim2.new(0.226804122, 0, 0.080291979, 0)

UICorner_21.Parent = AntiSilencio

Trigger_5.Name = "Trigger"
Trigger_5.Parent = AntiSilencio
Trigger_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Trigger_5.BackgroundTransparency = 0.100
Trigger_5.Position = UDim2.new(0.119999997, 0, -0.0454545468, 0)
Trigger_5.Size = UDim2.new(0.264705896, 0, 1.09090912, 0)
Trigger_5.ZIndex = 2
Trigger_5.Font = Enum.Font.SourceSans
Trigger_5.Text = ""
Trigger_5.TextColor3 = Color3.fromRGB(0, 0, 0)
Trigger_5.TextScaled = true
Trigger_5.TextSize = 14.000
Trigger_5.TextWrapped = true

UICorner_22.Parent = Trigger_5

UITextSizeConstraint_14.Parent = Trigger_5
UITextSizeConstraint_14.MaxTextSize = 14

BackColor_5.Name = "BackColor"
BackColor_5.Parent = AntiSilencio
BackColor_5.BackgroundColor3 = Color3.fromRGB(255, 171, 171)
BackColor_5.Position = UDim2.new(0.0441176482, 0, 0.13636364, 0)
BackColor_5.Size = UDim2.new(0.911764681, 0, 0.727272749, 0)

UICorner_23.Parent = BackColor_5

Label_5.Name = "Label"
Label_5.Parent = AntiSilencio
Label_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_5.BackgroundTransparency = 1.000
Label_5.Position = UDim2.new(1, 0, 0, 0)
Label_5.Size = UDim2.new(3.12121201, 0, 0.909090817, 0)
Label_5.Font = Enum.Font.Highway
Label_5.FontFace.Bold = true
Label_5.Text = "Anti-Silencio"
Label_5.TextColor3 = Color3.fromRGB(150, 150, 150)
Label_5.TextScaled = true
Label_5.TextSize = 14.000
Label_5.TextWrapped = true

UITextSizeConstraint_15.Parent = Label_5
UITextSizeConstraint_15.MaxTextSize = 15

AutoClash.Name = "AutoClash"
AutoClash.Parent = Regular
AutoClash.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
AutoClash.Position = UDim2.new(0.0305696484, 0, 0.923357487, 0)
AutoClash.Size = UDim2.new(0.931271493, 0, 0.0255474448, 0)

UICorner_24.Parent = AutoClash

Slider.Name = "Slider"
Slider.Parent = AutoClash
Slider.Text = ""
Slider.BackgroundColor3 = Color3.fromRGB(160, 160, 160)
Slider.Position = UDim2.new(0.479999989, 0, -0.57099998, 0)
Slider.Size = UDim2.new(0.0300000012, 0, 2, 0)
Slider.ZIndex = 2

UICorner_25.Parent = Slider

Scale.Name = "Scale"
Scale.Parent = AutoClash
Scale.BackgroundColor3 = Color3.fromRGB(78, 132, 82)
Scale.Size = UDim2.new(0.5, 0, 1, 0)

UICorner_26.Parent = Scale

Label_6.Name = "Label"
Label_6.Parent = AutoClash
Label_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_6.BackgroundTransparency = 1.000
Label_6.Position = UDim2.new(0.207000002, 0, -3.5, 0)
Label_6.Size = UDim2.new(0.575645745, 0, 2.71428561, 0)
Label_6.Font = Enum.Font.Highway
Label_6.Text = "Auto-Clash Scale"
Label_6.TextColor3 = Color3.fromRGB(150, 150, 150)
Label_6.TextScaled = true
Label_6.TextSize = 14.000
Label_6.TextWrapped = true

UITextSizeConstraint_16.Parent = Label_6
UITextSizeConstraint_16.MaxTextSize = 19

Amount.Name = "Amount"
Amount.Parent = AutoClash
Amount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Amount.BackgroundTransparency = 1.000
Amount.Position = UDim2.new(0.849066436, 0, -3.5, 0)
Amount.Size = UDim2.new(0.14760147, 0, 2.71428561, 0)
Amount.Font = Enum.Font.Merriweather
Amount.FontFace.Bold = true
Amount.Text = "50%"
Amount.TextColor3 = Color3.fromRGB(78, 132, 82)
Amount.TextScaled = true
Amount.TextSize = 14.000
Amount.TextWrapped = true

UITextSizeConstraint_17.Parent = Amount
UITextSizeConstraint_17.MaxTextSize = 19

OP.Name = "OP"
OP.Parent = Background
OP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OP.BackgroundTransparency = 1.000
OP.Size = UDim2.new(1, 0, 1, 0)
OP.Visible = false

AutoBlock.Name = "AutoBlock"
AutoBlock.Parent = OP
AutoBlock.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
AutoBlock.Position = UDim2.new(0.03, 0, 0.314, 0)
AutoBlock.Size = UDim2.new(0.227, 0, 0.08, 0)

UICorner_27.Parent = AutoBlock

Trigger_6.Name = "Trigger"
Trigger_6.Parent = AutoBlock
Trigger_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Trigger_6.BackgroundTransparency = 0.100
Trigger_6.Position = UDim2.new(0.12, 0, -0.045, 0)
Trigger_6.Size = UDim2.new(0.265, 0, 1.091, 0)
Trigger_6.ZIndex = 2
Trigger_6.Font = Enum.Font.SourceSans
Trigger_6.Text = ""
Trigger_6.TextColor3 = Color3.fromRGB(0, 0, 0)
Trigger_6.TextScaled = true
Trigger_6.TextSize = 14.000
Trigger_6.TextWrapped = true

UICorner_28.Parent = Trigger_6

UITextSizeConstraint_18.Parent = Trigger_6
UITextSizeConstraint_18.MaxTextSize = 14

BackColor_6.Name = "BackColor"
BackColor_6.Parent = AutoBlock
BackColor_6.BackgroundColor3 = Color3.fromRGB(255, 171, 171)
BackColor_6.Position = UDim2.new(0.044, 0, 0.136, 0)
BackColor_6.Size = UDim2.new(0.912, 0, 0.727, 0)

UICorner_29.Parent = BackColor_6

Label_7.Name = "Label"
Label_7.Parent = AutoBlock
Label_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_7.BackgroundTransparency = 1.000
Label_7.Position = UDim2.new(1, 0, 0, 0)
Label_7.Size = UDim2.new(3.121, 0, 0.909, 0)
Label_7.Font = Enum.Font.Highway
Label_7.FontFace.Bold = true
Label_7.Text = "Auto-Block"
Label_7.TextColor3 = Color3.fromRGB(150, 150, 150)
Label_7.TextScaled = true
Label_7.TextSize = 14.000
Label_7.TextWrapped = true

UITextSizeConstraint_19.Parent = Label_7
UITextSizeConstraint_19.MaxTextSize = 15

ElderBypass.Name = "ElderBypass"
ElderBypass.Parent = OP
ElderBypass.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
ElderBypass.Position = UDim2.new(0.03, 0, 0.42, 0)
ElderBypass.Size = UDim2.new(0.227, 0, 0.08, 0)

UICorner_30.Parent = ElderBypass

Trigger_7.Name = "Trigger"
Trigger_7.Parent = ElderBypass
Trigger_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Trigger_7.BackgroundTransparency = 0.100
Trigger_7.Position = UDim2.new(0.12, 0, -0.045, 0)
Trigger_7.Size = UDim2.new(0.265, 0, 1.091, 0)
Trigger_7.ZIndex = 2
Trigger_7.Font = Enum.Font.SourceSans
Trigger_7.Text = ""
Trigger_7.TextColor3 = Color3.fromRGB(0, 0, 0)
Trigger_7.TextScaled = true
Trigger_7.TextSize = 14.000
Trigger_7.TextWrapped = true

UICorner_31.Parent = Trigger_7

UITextSizeConstraint_20.Parent = Trigger_7
UITextSizeConstraint_20.MaxTextSize = 14

BackColor_7.Name = "BackColor"
BackColor_7.Parent = ElderBypass
BackColor_7.BackgroundColor3 = Color3.fromRGB(255, 171, 171)
BackColor_7.Position = UDim2.new(0.044, 0, 0.136, 0)
BackColor_7.Size = UDim2.new(0.912, 0, 0.727, 0)

UICorner_32.Parent = BackColor_7

Label_8.Name = "Label"
Label_8.Parent = ElderBypass
Label_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_8.BackgroundTransparency = 1.000
Label_8.Position = UDim2.new(1, 0, 0, 0)
Label_8.Size = UDim2.new(3.121, 0, 0.909, 0)
Label_8.Font = Enum.Font.Highway
Label_8.FontFace.Bold = true
Label_8.Text = "Elder Bypass"
Label_8.TextColor3 = Color3.fromRGB(150, 150, 150)
Label_8.TextScaled = true
Label_8.TextSize = 14.000
Label_8.TextWrapped = true

UITextSizeConstraint_21.Parent = Label_8
UITextSizeConstraint_21.MaxTextSize = 15

EnterPlr.Name = "EnterPlr"
EnterPlr.Parent = OP
EnterPlr.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
EnterPlr.Position = UDim2.new(0.0368728377, 0, 0.886253059, 0)
EnterPlr.Size = UDim2.new(0.453608245, 0, 0.0839416087, 0)

UICorner_33.Parent = EnterPlr

TextBox_3.Parent = EnterPlr
TextBox_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox_3.BackgroundTransparency = 1.000
TextBox_3.Position = UDim2.new(0.0536585376, 0, 0.107142858, 0)
TextBox_3.Size = UDim2.new(0.897560954, 0, 0.785714269, 0)
TextBox_3.Font = Enum.Font.Highway
TextBox_3.FontFace.Bold = true
TextBox_3.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox_3.Text = "Player (or All)"
TextBox_3.TextColor3 = Color3.fromRGB(150, 150, 150)
TextBox_3.TextScaled = true
TextBox_3.TextSize = 14.000
TextBox_3.TextWrapped = true

UITextSizeConstraint_22.Parent = TextBox_3
UITextSizeConstraint_22.MaxTextSize = 18

EnterSpell.Name = "EnterSpell"
EnterSpell.Parent = OP
EnterSpell.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
EnterSpell.Position = UDim2.new(0.511099637, 0, 0.886253059, 0)
EnterSpell.Size = UDim2.new(0.453608245, 0, 0.0839416087, 0)

UICorner_34.Parent = EnterSpell

TextBox_4.Parent = EnterSpell
TextBox_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox_4.BackgroundTransparency = 1.000
TextBox_4.Position = UDim2.new(0.0536585376, 0, 0.107142858, 0)
TextBox_4.Size = UDim2.new(0.897560954, 0, 0.785714269, 0)
TextBox_4.Font = Enum.Font.Highway
TextBox_4.FontFace.Bold = true
TextBox_4.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox_4.Text = "Spell"
TextBox_4.TextColor3 = Color3.fromRGB(150, 150, 150)
TextBox_4.TextScaled = true
TextBox_4.TextSize = 14.000
TextBox_4.TextWrapped = true

UITextSizeConstraint_23.Parent = TextBox_4
UITextSizeConstraint_23.MaxTextSize = 18

LoopSpell.Name = "LoopSpell"
LoopSpell.Parent = OP
LoopSpell.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
LoopSpell.Position = UDim2.new(0.384, 0, 0.781, 0)
LoopSpell.Size = UDim2.new(0.227, 0, 0.08, 0)

UICorner_35.Parent = LoopSpell

Trigger_8.Name = "Trigger"
Trigger_8.Parent = LoopSpell
Trigger_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Trigger_8.BackgroundTransparency = 0.100
Trigger_8.Position = UDim2.new(0.12, 0, -0.045, 0)
Trigger_8.Size = UDim2.new(0.265, 0, 1.091, 0)
Trigger_8.ZIndex = 2
Trigger_8.Font = Enum.Font.SourceSans
Trigger_8.Text = ""
Trigger_8.TextColor3 = Color3.fromRGB(0, 0, 0)
Trigger_8.TextScaled = true
Trigger_8.TextSize = 14.000
Trigger_8.TextWrapped = true

UICorner_36.Parent = Trigger_8

UITextSizeConstraint_24.Parent = Trigger_8
UITextSizeConstraint_24.MaxTextSize = 14

BackColor_8.Name = "BackColor"
BackColor_8.Parent = LoopSpell
BackColor_8.BackgroundColor3 = Color3.fromRGB(255, 171, 171)
BackColor_8.Position = UDim2.new(0.044, 0, 0.136, 0)
BackColor_8.Size = UDim2.new(0.912, 0, 0.727, 0)

UICorner_37.Parent = BackColor_8

Label_9.Name = "Label"
Label_9.Parent = LoopSpell
Label_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_9.BackgroundTransparency = 1.000
Label_9.Position = UDim2.new(-0.515, 0, -1.2, 0)
Label_9.Size = UDim2.new(2.045, 0, 0.909, 0)
Label_9.Font = Enum.Font.Highway
Label_9.FontFace.Bold = true
Label_9.Text = "Loop Spell"
Label_9.TextColor3 = Color3.fromRGB(150, 150, 150)
Label_9.TextScaled = true
Label_9.TextSize = 14.000
Label_9.TextWrapped = true

UITextSizeConstraint_25.Parent = Label_9
UITextSizeConstraint_25.MaxTextSize = 15

GodMode.Name = "GodMode"
GodMode.Parent = OP
GodMode.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
GodMode.Position = UDim2.new(0.03, 0, 0.205, 0)
GodMode.Size = UDim2.new(0.227, 0, 0.08, 0)

UICorner_42.Parent = GodMode

Trigger_9.Name = "Trigger"
Trigger_9.Parent = GodMode
Trigger_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Trigger_9.BackgroundTransparency = 0.100
Trigger_9.Position = UDim2.new(0.12, 0, -0.045, 0)
Trigger_9.Size = UDim2.new(0.265, 0, 1.091, 0)
Trigger_9.ZIndex = 2
Trigger_9.Font = Enum.Font.SourceSans
Trigger_9.Text = ""
Trigger_9.TextColor3 = Color3.fromRGB(0, 0, 0)
Trigger_9.TextScaled = true
Trigger_9.TextSize = 14.000
Trigger_9.TextWrapped = true

UICorner_43.Parent = Trigger_9

UITextSizeConstraint_34.Parent = Trigger_9
UITextSizeConstraint_34.MaxTextSize = 14

BackColor_9.Name = "BackColor"
BackColor_9.Parent = GodMode
BackColor_9.BackgroundColor3 = Color3.fromRGB(255, 171, 171)
BackColor_9.Position = UDim2.new(0.044, 0, 0.136, 0)
BackColor_9.Size = UDim2.new(0.912, 0, 0.727, 0)

UICorner_44.Parent = BackColor_9

Label_10.Name = "Label"
Label_10.Parent = GodMode
Label_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_10.BackgroundTransparency = 1.000
Label_10.Position = UDim2.new(1, 0, 0, 0)
Label_10.Size = UDim2.new(3.121, 0, 0.909, 0)
Label_10.Font = Enum.Font.Highway
Label_10.FontFace.Bold = true
Label_10.Text = "God Mode"
Label_10.TextColor3 = Color3.fromRGB(150, 150, 150)
Label_10.TextScaled = true
Label_10.TextSize = 14.000
Label_10.TextWrapped = true

UITextSizeConstraint_35.Parent = Label_10
UITextSizeConstraint_35.MaxTextSize = 15

GetAim.Name = "GetAim"
GetAim.Parent = OP
GetAim.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
GetAim.Position = UDim2.new(0.509, 0, 0.548, 0)
GetAim.Size = UDim2.new(0.447, 0, 0.084, 0)
GetAim.Font = Enum.Font.Highway
GetAim.FontFace.Bold = true
GetAim.Text = "Get SilentAim"
GetAim.TextColor3 = Color3.fromRGB(120, 120, 120)
GetAim.TextScaled = true
GetAim.TextSize = 14.000
GetAim.TextWrapped = true

UICorner_38.Parent = GetAim

UITextSizeConstraint_26.Parent = GetAim
UITextSizeConstraint_26.MaxTextSize = 15

GetPasses.Name = "GetPasses"
GetPasses.Parent = OP
GetPasses.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
GetPasses.Position = UDim2.new(0.037, 0, 0.548, 0)
GetPasses.Size = UDim2.new(0.447, 0, 0.084, 0)
GetPasses.Font = Enum.Font.Highway
GetPasses.FontFace.Bold = true
GetPasses.Text = "Get Gamepasses"
GetPasses.TextColor3 = Color3.fromRGB(120, 120, 120)
GetPasses.TextScaled = true
GetPasses.TextSize = 14.000
GetPasses.TextWrapped = true

UICorner_39.Parent = GetPasses

UITextSizeConstraint_27.Parent = GetPasses
UITextSizeConstraint_27.MaxTextSize = 15

Fire.Name = "Fire"
Fire.Parent = OP
Fire.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Fire.Position = UDim2.new(0.678, 0, 0.778, 0)
Fire.Size = UDim2.new(0.288659781, 0, 0.0839416087, 0)
Fire.Font = Enum.Font.Highway
Fire.FontFace.Bold = true
Fire.Text = "Fire"
Fire.TextColor3 = Color3.fromRGB(150, 72, 72)
Fire.TextScaled = true
Fire.TextSize = 14.000
Fire.TextStrokeColor3 = Color3.fromRGB(150, 150, 150)
Fire.TextStrokeTransparency = 0.000
Fire.TextWrapped = true

UICorner_40.Parent = Fire

UITextSizeConstraint_29.Parent = Fire
UITextSizeConstraint_29.MaxTextSize = 18

Teleport.Name = "Teleport"
Teleport.Parent = OP
Teleport.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Teleport.Position = UDim2.new(0.037, 0, 0.778, 0)
Teleport.Size = UDim2.new(0.288659781, 0, 0.0839416087, 0)
Teleport.Font = Enum.Font.Highway
Teleport.FontFace.Bold = true
Teleport.Text = "Teleport"
Teleport.TextColor3 = Color3.fromRGB(150, 72, 72)
Teleport.TextScaled = true
Teleport.TextSize = 14.000
Teleport.TextStrokeColor3 = Color3.fromRGB(150, 150, 150)
Teleport.TextStrokeTransparency = 0.000
Teleport.TextWrapped = true

UICorner_41.Parent = Teleport

UITextSizeConstraint_33.Parent = Teleport
UITextSizeConstraint_33.MaxTextSize = 18

Min.Name = "Min"
Min.Parent = Tab
Min.BackgroundTransparency = 1.000
Min.LayoutOrder = 13
Min.Position = UDim2.new(0.00343642617, 0, 0.0476190448, 0)
Min.Size = UDim2.new(0.0652920976, 0, 0.904761851, 0)
Min.ZIndex = 2
Min.Image = "rbxassetid://3926307971"
Min.ImageColor3 = Color3.fromRGB(176, 227, 255)
Min.ImageRectOffset = Vector2.new(364, 444)
Min.ImageRectSize = Vector2.new(36, 36)

Exit.Name = "Exit"
Exit.Parent = Tab
Exit.BackgroundTransparency = 1.000
Exit.LayoutOrder = 6
Exit.Position = UDim2.new(0.93470788, 0, 0.0476190448, 0)
Exit.Size = UDim2.new(0.0652920976, 0, 0.904761851, 0)
Exit.ZIndex = 2
Exit.Image = "rbxassetid://3926305904"
Exit.ImageColor3 = Color3.fromRGB(255, 84, 61)
Exit.ImageRectOffset = Vector2.new(4, 4)
Exit.ImageRectSize = Vector2.new(24, 24)

Hotkeys_2.Name = "Hotkeys"
Hotkeys_2.Parent = Tab
Hotkeys_2.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
Hotkeys_2.BorderColor3 = Color3.fromRGB(70, 70, 70)
Hotkeys_2.Position = UDim2.new(0.00343642617, 0, 1, 0)
Hotkeys_2.Size = UDim2.new(0.331999987, 0, 1, 0)
Hotkeys_2.Font = Enum.Font.Michroma
Hotkeys_2.FontFace.Bold = true
Hotkeys_2.Text = "Hotkeys"
Hotkeys_2.TextColor3 = Color3.fromRGB(150, 150, 150)
Hotkeys_2.TextScaled = true
Hotkeys_2.TextSize = 14.000
Hotkeys_2.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
Hotkeys_2.TextStrokeTransparency = 0.000
Hotkeys_2.TextWrapped = true

UITextSizeConstraint_30.Parent = Hotkeys_2
UITextSizeConstraint_30.MaxTextSize = 14

OP_2.Name = "OP"
OP_2.Parent = Tab
OP_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
OP_2.BorderColor3 = Color3.fromRGB(70, 70, 70)
OP_2.Position = UDim2.new(0.66323024, 0, 1, 0)
OP_2.Size = UDim2.new(0.333999991, 0, 1, 0)
OP_2.Font = Enum.Font.Michroma
OP_2.FontFace.Bold = true
OP_2.Text = "OP Hacks"
OP_2.TextColor3 = Color3.fromRGB(150, 150, 150)
OP_2.TextScaled = true
OP_2.TextSize = 14.000
OP_2.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
OP_2.TextStrokeTransparency = 0.000
OP_2.TextWrapped = true

UITextSizeConstraint_31.Parent = OP_2
UITextSizeConstraint_31.MaxTextSize = 14

Regular_2.Name = "Regular"
Regular_2.Parent = Tab
Regular_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Regular_2.BorderColor3 = Color3.fromRGB(70, 70, 70)
Regular_2.Position = UDim2.new(0.333333343, 0, 1, 0)
Regular_2.Size = UDim2.new(0.333000004, 0, 1, 0)
Regular_2.Font = Enum.Font.Michroma
Regular_2.FontFace.Bold = true
Regular_2.Text = "Regular"
Regular_2.TextColor3 = Color3.fromRGB(150, 150, 150)
Regular_2.TextScaled = true
Regular_2.TextSize = 14.000
Regular_2.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
Regular_2.TextStrokeTransparency = 0.000
Regular_2.TextWrapped = true

UITextSizeConstraint_32.Parent = Regular_2
UITextSizeConstraint_32.MaxTextSize = 14

UIAspectRatioConstraint.Parent = GHotkey
UIAspectRatioConstraint.AspectRatio = 2.250

local Data = BadgeService:FindFirstChild("data")
if not Data then
	Data = Instance.new("Folder", BadgeService)
	Data.Name = "data"
end

local AdvanceClash = Data:FindFirstChild("advanceClash")
if not AdvanceClash then
	AdvanceClash = Instance.new("IntValue", Data)
	AdvanceClash.Name = "advanceClash"
	AdvanceClash.Value = 1
end

local SpellHit = Data:FindFirstChild("spellHit")
if not SpellHit then
	SpellHit = Instance.new("IntValue", Data)
	SpellHit.Name = "SpellHit"
	SpellHit.Value = 1
end

local UniqueSpell = Data:FindFirstChild("uniqueSpell")
if not UniqueSpell then
	UniqueSpell = Instance.new("IntValue", Data)
	UniqueSpell.Name = "uniqueSpell"
	UniqueSpell.Value = 1
end

local Protego = Data:FindFirstChild("protego")
if not Protego then
	Protego = Instance.new("IntValue", Data)
	Protego.Name = "protego"
	Protego.Value = 1
end

function GiveAim()
	workspace:WaitForChild(Player.Name)
	local Tool = Instance.new("Tool", Player.Backpack)
	Tool.Name = "SilentAim"
	Tool.CanBeDropped = false
	Tool.Enabled = false
	Tool.ToolTip = "Click the red area around a player to fire."
	Player.Character.ChildAdded:Connect(function(Child)
		if Child == Tool then
			for _, Target in pairs(Players:GetPlayers()) do
				local Hitbox = Target.Character:FindFirstChild("Hitbox")
				if Hitbox then
					Hitbox.Transparency = 0.75
					Hitbox.Detector.MaxActivationDistance = 6000
				end
			end
		end
	end)
	Player.Character.ChildRemoved:Connect(function(Child)
		if Child == Tool then
			for _, Target in pairs(Players:GetPlayers()) do
				local Hitbox = Target.Character:FindFirstChild("Hitbox")
				if Hitbox then
					Hitbox.Transparency = 1
					Hitbox.Detector.MaxActivationDistance = 0
				end
			end
		end
	end)
	OwnsAim = true
end

function GiveElder()
	local Backup = RepStorage:FindFirstChild("Elder Wand")
	if not Backup then
		for _, SelPlayer in pairs(Players:GetPlayers()) do
			local Elder = SelPlayer.Backpack:FindFirstChild("Elder Wand") or SelPlayer.Character:FindFirstChild("Elder Wand")
			if Elder then
				local Clone1 = Elder:Clone()
				local Clone2 = Elder:Clone()
				Clone1.CanBeDropped = false
				Clone2.CanBeDropped = false
				Clone1.Parent = Player.Backpack
				Clone2.Parent = RepStorage
				return
			end
		end
	else
		local Clone = Backup:Clone()
		Clone.Parent = Player.Backpack
	end
	OwnsElder = true
end

function GiveFlight()
	local Backup = RepStorage:FindFirstChild("Flight")
	if not Backup then
		for _, SelPlayer in pairs(Players:GetPlayers()) do
			local Flight = SelPlayer.Backpack:FindFirstChild("Flight") or SelPlayer.Character:FindFirstChild("Flight")
			if Flight then
				local Clone1 = Flight:Clone()
				local Clone2 = Flight:Clone()
				Clone1.Parent = Player.Backpack
				Clone2.Parent = RepStorage
				return
			end
		end
	else
		local Clone = Backup:Clone()
		Clone.Parent = Player.Backpack
	end
	OwnsFlight = true
end

function AddCharacter()
	task.wait(0.5)
	local Character = Player.Character
	local Root = Character.PrimaryPart
	if Active and GodModeOn then
		Root.CFrame = PreDeathCFrame
		if OwnsFlight then
			GiveFlight()
		end
		if OwnsAim then
			GiveAim()
		end
		if OwnsElder then
			GiveElder()
		end
	else
		OwnsFlight = false
		OwnsElder = false
		OwnsAim = false
	end
	pcall(function()
		local Humanoid = Character.Humanoid
		Humanoid.Changed:Connect(function()
			if Active and GodModeOn then
				if Humanoid.Health ~= 100 and Humanoid.Health ~= 0 then
					local Spell = "vulnera sanentur"
					local LoopNumber = 0
					repeat
						local SpellID = tostring(Player.Name .. workspace.DistributedGameTime)
						local DistanceID = ((SpellHit.Value + 0.5428) * 2) ^ (math.pi * 0.5)
						if CurrentChat ~= Spell then
							Players:Chat(Spell)
						end
						local DataTable = {
							hitPart = Character;
							actor = Character;
							hitCf = Character.PrimaryPart.CFrame;
							spellName = Spell;
							id = SpellID;
							distance = DistanceID;
						}
						Events.spellHit:FireServer(DataTable)
						LoopNumber = LoopNumber + 1
					until LoopNumber == 10
				elseif Humanoid.Health ~= 0 and Humanoid.WalkSpeed == 0 or Root.Anchored then
					local Spell = "liberacorpus"
					local SpellID = tostring(Player.Name .. workspace.DistributedGameTime)
					local DistanceID = ((SpellHit.Value + 0.5428) * 2) ^ (math.pi * 0.5)
					if CurrentChat ~= Spell then
						task.wait(0.5)
						Players:Chat(Spell)
					end
					local DataTable = {
						hitPart = Character;
						actor = Character;
						hitCf = Character.PrimaryPart.CFrame;
						spellName = Spell;
						id = SpellID;
						distance = DistanceID;
					}
					Events.spellHit:FireServer(DataTable)
					local Spell = "rennervate"
					local SpellID = tostring(Player.Name .. workspace.DistributedGameTime)
					if CurrentChat ~= Spell then
						task.wait(0.5)
						Players:Chat(Spell)
					end
					local DataTable = {
						hitPart = Character;
						actor = Character;
						hitCf = Character.PrimaryPart.CFrame;
						spellName = Spell;
						id = SpellID;
						distance = DistanceID;
					}
					Events.spellHit:FireServer(DataTable)
				end
			end
			PreDeathCFrame = Player.Character.PrimaryPart.CFrame
		end)
		Character.ChildAdded:Connect(function()
			wait()
			if Active and Character.Humanoid.Health ~= 0 then
				if Character:FindFirstChild("ragdollModel") or Character:FindFirstChild("frozenData") or Character:FindFirstChild("bondageFolder") then
					local Spell = "finite incantatem"
					local SpellID = tostring(Player.Name .. workspace.DistributedGameTime)
					local DistanceID = ((SpellHit.Value + 0.5428) * 2) ^ (math.pi * 0.5)
					if CurrentChat ~= Spell then
						task.wait(0.5)
						Players:Chat(Spell)
					end
					local DataTable = {
						hitPart = Character;
						actor = Character;
						hitCf = Character.PrimaryPart.CFrame;
						spellName = Spell;
						id = SpellID;
						distance = DistanceID;
					}
					Events.spellHit:FireServer(DataTable)
					local Spell = "diffindo"
					local SpellID = tostring(Player.Name .. workspace.DistributedGameTime)
					if CurrentChat ~= Spell then
						task.wait(0.5)
						Players:Chat(Spell)
					end
					local DataTable = {
						hitPart = Character;
						actor = Character;
						hitCf = Character.PrimaryPart.CFrame;
						spellName = Spell;
						id = SpellID;
						distance = DistanceID;
					}
					Events.spellHit:FireServer(DataTable)
				end
			end
		end)
	end)
end

function Detect(Character)
	local Humanoid = Character:WaitForChild("Humanoid")
	local Primary = Character:WaitForChild("HumanoidRootPart")
	local Hitbox = Instance.new("Part", Character)
	Hitbox.Name = "Hitbox"
	Hitbox.CanCollide = false
	Hitbox.Size = Vector3.new(10, 10, 10)
	Hitbox.Position = Primary.Position
	Hitbox.Material = Enum.Material.Neon
	Hitbox.Shape = Enum.PartType.Ball
	Hitbox.Color = Color3.fromRGB(200, 20, 20)
	Hitbox.Transparency = 1
	local Weld = Instance.new("Weld", Primary)
	Weld.Part0 = Primary
	Weld.Part1 = Hitbox
	local Detector = Instance.new("ClickDetector", Hitbox)
	Detector.Name = "Detector"
	Detector.MaxActivationDistance = 0
	if Player.Character:FindFirstChild("SilentAim") then
	    Hitbox.Transparency = 0.75
	    Detector.MaxActivationDistance = 6000
    end
	Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
		if Humanoid.Health == 0 then
			Hitbox:Destroy()
			Weld:Destroy()
		end
	end)
	Detector.MouseClick:Connect(function()
		local Target = Players:GetPlayerFromCharacter(Character)
		local Spell = string.lower(EnterSpell.TextBox.Text)
		local SpellID = tostring(Player.Name .. workspace.DistributedGameTime)
		local DistanceID = ((SpellHit.Value + 0.5428) * 2) ^ (math.pi * 0.5)
		if CurrentChat ~= Spell then
			task.wait(0.1)
			Players:Chat(Spell)
		end
		local DataTable = {
			hitPart = Character;
			actor = Character;
			hitCf = Primary.CFrame;
			spellName = Spell;
			id = SpellID;
			distance = DistanceID;
		}
		Events.spellHit:FireServer(DataTable)
	end)
end

Players.PlayerAdded:Connect(function(SelPlayer)
	if Active then
		SelPlayer.CharacterAdded:Connect(Detect)
	end
end)

for _, SelPlayer in pairs(Players:GetPlayers()) do
	if SelPlayer ~= Player then
		SelPlayer.CharacterAdded:Connect(Detect)
		local Character = workspace:FindFirstChild(SelPlayer.Name)
		if Character then
			Detect(Character)
		end
	end
end

GetPasses.MouseButton1Click:Connect(function()
	GiveElder()
	GiveFlight()
end)
GetAim.MouseButton1Click:Connect(GiveAim)

Register.MouseButton1Click:Connect(function()
	local ProductKey = string.sub(EnterKey.TextBox.Text:upper(), 1)
	local Clone = Item:Clone()
	Clone.Parent = List
	Clone.Visible = true
	Clone.ItemFrame.Key.Text = ProductKey
	Clone.ItemFrame.Message.Text = EnterMsg.TextBox.Text

	local Delete = Clone.ItemFrame.Delete

	Delete.MouseEnter:Connect(function()
		Delete.ImageColor3 = Color3.fromRGB(255, 107, 107)
	end)

	Delete.MouseLeave:Connect(function()
		Delete.ImageColor3 = Color3.fromRGB(255, 255, 255)
	end)

	Delete.MouseButton1Click:Connect(function()
		Clone:Destroy()
	end)
end)

Register.MouseEnter:Connect(function()
	Register.ImageColor3 = Color3.fromRGB(202, 255, 204)
end)

Register.MouseLeave:Connect(function()
	Register.ImageColor3 = Color3.fromRGB(150, 150, 150)
end)

OP_2.MouseButton1Click:Connect(function()
	OP_2.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
	Regular_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Hotkeys_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	OP.Visible = true
	Regular.Visible = false
	Hotkeys.Visible = false
end)

Regular_2.MouseButton1Click:Connect(function()
	OP_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Regular_2.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
	Hotkeys_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	OP.Visible = false
	Regular.Visible = true
	Hotkeys.Visible = false
end)

Hotkeys_2.MouseButton1Click:Connect(function()
	OP_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Regular_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Hotkeys_2.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
	OP.Visible = false
	Regular.Visible = false
	Hotkeys.Visible = true
end)

Min.MouseButton1Click:Connect(function()
	Min.Visible = false
	Max.Visible = true
	Hotkeys.Visible = false
	OP.Visible = false
	Regular.Visible = false
	Hotkeys_2.Visible = false
	OP_2.Visible = false
	Regular_2.Visible = false
	local TwnInfo = TweenInfo.new(1)
	local Tween = TweenService:Create(Background, TwnInfo, {Size = UDim2.new(1, 0, 1, 0)})
	Tween:Play()
end)

Max.MouseButton1Click:Connect(function()
	Max.Visible = false
	Min.Visible = true
	local TwnInfo = TweenInfo.new(1)
	local Tween = TweenService:Create(Background, TwnInfo, {Size = UDim2.new(1, 0, 13, 0)})
	Tween:Play()
	task.wait(1)
	Hotkeys.Visible = true
	OP_2.Visible = true
	Regular_2.Visible = true
	Hotkeys_2.Visible = true
	Hotkeys_2.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
	OP_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Regular_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
end)

Exit.MouseButton1Click:Connect(function()
	Active = false
	if Min.Visible then
		Hotkeys.Visible = false
		OP.Visible = false
		Regular.Visible = false
		Hotkeys_2.Visible = false
		OP_2.Visible = false
		Regular_2.Visible = false
		local TwnInfo = TweenInfo.new(1)
		local Tween1 = TweenService:Create(Background, TwnInfo, {Size = UDim2.new(1, 0, 1, 0)})
		Tween1:Play()
		task.wait(1)
		local Tween2 = TweenService:Create(Tab, TwnInfo, {Size = UDim2.new(0, 0, 0.033, 0)})
		Tween2:Play()
		task.wait(1)
		GHotkey:Destroy()
	else
		local TwnInfo = TweenInfo.new(1)
		local Tween = TweenService:Create(Tab, TwnInfo, {Size = UDim2.new(0, 0, 0.033, 0)})
		Tween:Play()
		task.wait(1)
		GHotkey:Destroy()
	end
end)

Fire.MouseButton1Click:Connect(function()
	local PlrName = string.lower(EnterPlr.TextBox.Text)
	local Spell = string.lower(EnterSpell.TextBox.Text)
	local SpellID = tostring(Player.Name .. workspace.DistributedGameTime)
	local DistanceID = ((SpellHit.Value + 0.5428) * 2) ^ (math.pi * 0.5)
	if CurrentChat ~= Spell then
		task.wait(0.5)
		Players:Chat(Spell)
	end
	if PlrName == "all" then
		for _, Target in pairs(Players:GetPlayers()) do
			if Target ~= Player then
				local TChar = Target.Character
				local DataTable = {
					hitPart = TChar;
					actor = TChar;
					hitCf = TChar.PrimaryPart.CFrame;
					spellName = Spell;
					id = SpellID;
					distance = DistanceID;
				}
				Events.spellHit:FireServer(DataTable)
				wait()
			end
		end
	elseif PlrName ~= "" then
		for _, SelPlayer in pairs(Players:GetPlayers()) do
			local LoweredName = string.lower(SelPlayer.Name)
			local LoweredDspl = string.lower(SelPlayer.DisplayName)
			if string.sub(LoweredName, 1, #PlrName) == PlrName or string.sub(LoweredDspl, 1, #PlrName) == PlrName then
				local TChar = SelPlayer.Character
				local DataTable = {
					hitPart = TChar;
					actor = TChar;
					hitCf = TChar.PrimaryPart.CFrame;
					spellName = Spell;
					id = SpellID;
					distance = DistanceID;
				}
				Events.spellHit:FireServer(DataTable)
			end
		end
	end
end)

Teleport.MouseButton1Click:Connect(function()
	local PlrName = string.lower(EnterPlr.TextBox.Text)
	local RootPart = Player.Character.PrimaryPart
	if PlrName ~= "" then
		for _, SelPlayer in pairs(Players:GetPlayers()) do
			local LoweredName = string.lower(SelPlayer.Name)
			local LoweredDspl = string.lower(SelPlayer.DisplayName)
			if string.sub(LoweredName, 1, #PlrName) == PlrName or string.sub(LoweredDspl, 1, #PlrName) == PlrName then
				local TargetCFrame = SelPlayer.Character.PrimaryPart.CFrame
				RootPart.CFrame = TargetCFrame
			end
		end
	end
end)

GhostHotkeys.Trigger.MouseButton1Click:Connect(function()
	if GhostHotkeysOn then
		GhostHotkeysOn = false
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(GhostHotkeys.Trigger, TwnInfo, {Position = UDim2.new(0.12, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(GhostHotkeys.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(255, 171, 171)})
		Tween1:Play()
		Tween2:Play()
	else
		GhostHotkeysOn = true
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(GhostHotkeys.Trigger, TwnInfo, {Position = UDim2.new(0.615, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(GhostHotkeys.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(174, 255, 177)})
		Tween1:Play()
		Tween2:Play()
	end
end)

KeyCooldown.Trigger.MouseButton1Click:Connect(function()
	if KeyCooldownOn then
		KeyCooldownOn = false
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(KeyCooldown.Trigger, TwnInfo, {Position = UDim2.new(0.12, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(KeyCooldown.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(255, 171, 171)})
		Tween1:Play()
		Tween2:Play()
	else
		KeyCooldownOn = true
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(KeyCooldown.Trigger, TwnInfo, {Position = UDim2.new(0.615, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(KeyCooldown.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(174, 255, 177)})
		Tween1:Play()
		Tween2:Play()
	end
end)

ShieldBypass.Trigger.MouseButton1Click:Connect(function()
	if ShieldBypassOn then
		ShieldBypassOn = false
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(ShieldBypass.Trigger, TwnInfo, {Position = UDim2.new(0.12, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(ShieldBypass.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(255, 171, 171)})
		Tween1:Play()
		Tween2:Play()
	else
		ShieldBypassOn = true
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(ShieldBypass.Trigger, TwnInfo, {Position = UDim2.new(0.615, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(ShieldBypass.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(174, 255, 177)})
		Tween1:Play()
		Tween2:Play()
	end
end)

AntiObscuro.Trigger.MouseButton1Click:Connect(function()
	if AntiObscuroOn then
		AntiObscuroOn = false
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(AntiObscuro.Trigger, TwnInfo, {Position = UDim2.new(0.12, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(AntiObscuro.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(255, 171, 171)})
		Tween1:Play()
		Tween2:Play()
	else
		AntiObscuroOn = true
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(AntiObscuro.Trigger, TwnInfo, {Position = UDim2.new(0.615, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(AntiObscuro.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(174, 255, 177)})
		Tween1:Play()
		Tween2:Play()
	end
end)

AntiSilencio.Trigger.MouseButton1Click:Connect(function()
	if AntiSilencioOn then
		AntiSilencioOn = false
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(AntiSilencio.Trigger, TwnInfo, {Position = UDim2.new(0.12, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(AntiSilencio.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(255, 171, 171)})
		Tween1:Play()
		Tween2:Play()
	else
		AntiSilencioOn = true
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(AntiSilencio.Trigger, TwnInfo, {Position = UDim2.new(0.615, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(AntiSilencio.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(174, 255, 177)})
		Tween1:Play()
		Tween2:Play()
	end
end)

ElderBypass.Trigger.MouseButton1Click:Connect(function()
	if ElderBypassOn then
		ElderBypassOn = false
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(ElderBypass.Trigger, TwnInfo, {Position = UDim2.new(0.12, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(ElderBypass.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(255, 171, 171)})
		Tween1:Play()
		Tween2:Play()
	else
		ElderBypassOn = true
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(ElderBypass.Trigger, TwnInfo, {Position = UDim2.new(0.615, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(ElderBypass.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(174, 255, 177)})
		Tween1:Play()
		Tween2:Play()
	end
end)

LoopSpell.Trigger.MouseButton1Click:Connect(function()
	if LoopSpellOn then
		LoopSpellOn = false
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(LoopSpell.Trigger, TwnInfo, {Position = UDim2.new(0.12, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(LoopSpell.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(255, 171, 171)})
		Tween1:Play()
		Tween2:Play()
	else
		LoopSpellOn = true
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(LoopSpell.Trigger, TwnInfo, {Position = UDim2.new(0.615, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(LoopSpell.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(174, 255, 177)})
		Tween1:Play()
		Tween2:Play()
	end
end)

GodMode.Trigger.MouseButton1Click:Connect(function()
	if GodModeOn then
		GodModeOn = false
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(GodMode.Trigger, TwnInfo, {Position = UDim2.new(0.12, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(GodMode.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(255, 171, 171)})
		Tween1:Play()
		Tween2:Play()
	else
		GodModeOn = true
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(GodMode.Trigger, TwnInfo, {Position = UDim2.new(0.615, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(GodMode.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(174, 255, 177)})
		Tween1:Play()
		Tween2:Play()
	end
end)

AutoBlock.Trigger.MouseButton1Click:Connect(function()
	if AutoBlockOn then
		AutoBlockOn = false
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(AutoBlock.Trigger, TwnInfo, {Position = UDim2.new(0.12, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(AutoBlock.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(255, 171, 171)})
		Tween1:Play()
		Tween2:Play()
	else
		AutoBlockOn = true
		local TwnInfo = TweenInfo.new(0.8)
		local Tween1 = TweenService:Create(AutoBlock.Trigger, TwnInfo, {Position = UDim2.new(0.615, 0 -0.045, 0)})
		local Tween2 = TweenService:Create(AutoBlock.BackColor, TwnInfo, {BackgroundColor3 = Color3.fromRGB(174, 255, 177)})
		Tween1:Play()
		Tween2:Play()
	end
end)

Player.Chatted:Connect(function(Msg)
	if Active then
		CurrentChat = Msg
		if ElderBypassOn then
			local Tool = Player.Character:FindFirstChild("Wand")
			if Tool then
				if string.find(Msg:lower(), "infernum") then
					local DataTable = {
						spellName = "infernum";
						distance = ((UniqueSpell.Value + 0.5428) * 2) ^ (math.pi * 0.5);
					}
					Events.uniqueSpell:FireServer(DataTable)
				elseif string.find(Msg:lower(), "pruina tempestatis") then
					local DataTable = {
						spellName = "pruina tempestatis";
						distance = ((UniqueSpell.Value + 0.5428) * 2) ^ (math.pi * 0.5);
					}
					Events.uniqueSpell:FireServer(DataTable)
				end
			end
		end
	end
end)

InputService.InputEnded:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton1 then
		Holding = false
	end
end)

Slider.MouseButton1Down:Connect(function()
	Holding = true
end)

Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(Object)
	if Active and AntiObscuroOn and Object.Name == "obscuroGui" then
		Object.Frame.Visible = false
	end
end)

InputService.InputBegan:Connect(function(Input, Processed)
	if Active and not Processed then
		for _, Value in pairs(List:GetChildren()) do
			if Value.Name == "Item" and Value.ItemFrame.Key.Text == Input.KeyCode.Name:upper() then
				local Msg = Value.ItemFrame.Message.Text
				if KeyCooldownOn and not Cooldown then
					Cooldown = true
					Players:Chat(Msg)
					if not GhostHotkeysOn then
						RepStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Msg, "All")
					end
					wait(math.random(11, 16) / 10)
					Cooldown = false
				elseif not KeyCooldownOn then
					Players:Chat(Msg)
					if not GhostHotkeysOn then
						RepStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Msg, "All")
					end
				end
			end
		end
	end
end)

workspace.ChildAdded:Connect(function(Part)
	if Active and ShieldBypassOn then
		pcall(function()
			Part.CanCollide = false;
			Part.CanTouch = false;
			Part.CanQuery = false;
			task.delay(task.wait(), function()
				Part.Parent = nil;
			end)
			Debris:AddItem(Part, 3);
		end)
	end
end)

if workspace:FindFirstChild(Player.Name) then
	AddCharacter()
end

Player.CharacterAdded:Connect(AddCharacter)

local Temp = Instance.new("Frame")
TempNumber = 1

Temp.Changed:Connect(function()
	if TempNumber == 1 then
		TempNumber = 2
		while Active do
			if AutoClashAmount ~= 0 then
				local DistanceID = ((AdvanceClash.Value + 0.5428) * 2) ^ (math.pi * 0.5)
				local WaitTime = ((-AutoClashAmount) + 100) / 45
				task.wait(WaitTime)
				Events.advanceClash:FireServer({distance = DistanceID})
			else
				wait()
			end
		end
	elseif TempNumber == 2 then
		TempNumber = 3
		while Active do
			wait()
			if AntiSilencioOn and not StarterGui:GetCoreGuiEnabled("Chat") then
				StarterGui:SetCoreGuiEnabled("Chat", true)
			end
			if LoopSpellOn then
				local PlrName = string.lower(EnterPlr.TextBox.Text)
				local Spell = string.lower(EnterSpell.TextBox.Text)
				local SpellID = tostring(Player.Name .. workspace.DistributedGameTime)
				local DistanceID = ((SpellHit.Value + 0.5428) * 2) ^ (math.pi * 0.5)
				if CurrentChat ~= Spell then
					task.wait(0.5)
					Players:Chat(Spell)
				end
				if PlrName == "all" then
					for _, Target in pairs(Players:GetPlayers()) do
						if Target ~= Player then
							local TChar = Target.Character
							local DataTable = {
								hitPart = TChar;
								actor = TChar;
								hitCf = TChar.PrimaryPart.CFrame;
								spellName = Spell;
								id = SpellID;
								distance = DistanceID;
							}
							Events.spellHit:FireServer(DataTable)
							wait()
						end
					end
				elseif PlrName ~= "" then
					for _, SelPlayer in pairs(Players:GetPlayers()) do
						local LoweredName = string.lower(SelPlayer.Name)
						local LoweredDspl = string.lower(SelPlayer.DisplayName)
						if string.sub(LoweredName, 1, #PlrName) == PlrName or string.sub(LoweredDspl, 1, #PlrName) == PlrName then
							local TChar = SelPlayer.Character
							local DataTable = {
								hitPart = TChar;
								actor = TChar;
								hitCf = TChar.PrimaryPart.CFrame;
								spellName = Spell;
								id = SpellID;
								distance = DistanceID;
							}
							Events.spellHit:FireServer(DataTable)
						end
					end
				end
			end
			if AutoBlockOn and Player.Character.Humanoid.Health ~= 0 then
				local DistanceID = ((Protego.Value + 0.5428) * 2) ^ (math.pi * 0.5)
				local RootPos = Player.Character.PrimaryPart.CFrame.p
				local CameraVector1 = workspace.CurrentCamera.CFrame.lookVector
				local CameraVector2 = -(workspace.CurrentCamera.CFrame.lookVector)
				local DataTable1 = {
					rootPos = RootPos;
					dir = CameraVector1;
					distance = DistanceID;
				}
				local DataTable2 = {
					rootPos = RootPos;
					dir = CameraVector2;
					distance = DistanceID;
				}
				Events.protego:FireServer(DataTable1)
				Events.protego:FireServer(DataTable2)
			end
			if Holding then
				local MousePos = Player:GetMouse().X
				local BackSize = AutoClash.AbsoluteSize.X
				local BackPos = AutoClash.AbsolutePosition.X
				local Final = ((MousePos - BackPos) / BackSize) - 0.015
				local Percentage = math.clamp(Final, 0, 1)
				Slider.Position = UDim2.new(Percentage, 0, -0.571, 0)
				Scale.Size = UDim2.new(Percentage, 0, 1, 0)
				if Final == 0 then
					AutoClashAmount = 0
				else
					AutoClashAmount = math.floor(Percentage * 100) + 1
				end
				Amount.Text = math.floor(Percentage * 100) .. "%"
			end
		end
	end
end)

Temp.Name = "1"
wait()
Temp.Name = "2"
wait()
Temp:Destroy()
