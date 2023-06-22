local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/BroWhats/Rayfield/main/privatesource",true))()

local speed = (game.Players.LocalPlayer.Character.Humanoid.WalkSpeed)
local jump = (game.Players.LocalPlayer.Character.Humanoid.JumpPower)

local Window = Rayfield:CreateWindow({
   Name = "Egorikusa Hub",
   LoadingTitle = "Egorikusa Hub",
   LoadingSubtitle = "by Egorikusa",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Egorikusa Scripts", -- Create a custom folder for your hub/game
      FileName = "Egorikusa Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "cUD5Bds5", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Egorikusa Hub",
      Subtitle = "Key System",
      Note = "Join the discord (https://discord.gg/cUD5Bds5)",
      FileName = "KeyOfHub",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "NoIdea"
   }
})

local Tab = Window:CreateTab("Misc Scripts", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Anti Lag (optimization)",
   Callback = function()
local lighting = game.Lighting
local terrain = game.Workspace.Terrain
terrain.WaterWaveSize = 0
terrain.WaterWaveSpeed = 0
terrain.WaterReflectance = 0
terrain.WaterTransparency = 0
lighting.GlobalShadows = false
lighting.FogStart = 0
lighting.FogEnd = 0
lighting.Brightness = 0
settings().Rendering.QualityLevel = "Level01"

for i, v in pairs(game:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    end
end

for i, e in pairs(lighting:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
   end,
})

local Button = Tab:CreateButton({
   Name = "Visual Hoverboard",
   Callback = function()
local sex1 = require(game:GetService("ReplicatedStorage").Library.Client.Save).Get()
  sex1.Hoverboards = {}
for i,v in pairs(game:GetService("ReplicatedStorage")["__DIRECTORY"].Hoverboards:GetChildren())do
    if v:IsA("Folder") then
     table.insert(sex1.Hoverboards, v.Name)
    end
end
getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Update()
    getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Equip = function(board)
      sex1.EquippedHoverboard = board
    getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs.Hoverboards).Update()
end
   end,
})


local Slider = Tab:CreateSlider({
   Name = "Walk Speed",
   Range = {1, 250},
   Increment = 1,
   Suffix = "Walk Speed",
   CurrentValue = speed,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Jump Power",
   Range = {1, 250},
   Increment = 1,
   Suffix = "Jump Power",
   CurrentValue = jump,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Tab = Window:CreateTab("Fake Tags (ANOTHER UPDATE)", 4483362458) -- Title, Image

local Toggle = Tab:CreateToggle({
    Name = "Partner Spam (toggleable)",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
  task.spawn(function()
  getgenv().toggleLoop = Value
  while getgenv().toggleLoop and task.wait() do
local Message = "SIGNING HUGES SEND ME TRADE"
local Rank = "🔥Partner" -- Partner for PARTNER - Moderator for MODERATOR --
local Wow = "                                                                                                                                                          "
if Rank and Message and type(Message) == "string" then
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(""..Wow.."["..Rank.."] ["..game.Players.LocalPlayer.DisplayName.."]: "..Message.."", "All")
wait(10)
end
end
end)
 end,
})

local Toggle = Tab:CreateToggle({
    Name = "Developer Spam (toggleable)",
    CurrentValue = false,
    Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
  task.spawn(function()
  getgenv().toggleLoop = Value
  while getgenv().toggleLoop and task.wait() do
local Message = "SIGNING HUGES SEND TRADE"
local Rank = "⚒️Developer" -- Partner for PARTNER - Moderator for MODERATOR --
local Wow = "                                                                                                                                                          "
if Rank and Message and type(Message) == "string" then
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(""..Wow.."["..Rank.."] ["..game.Players.LocalPlayer.DisplayName.."]: "..Message.."", "All")
wait(10)
end
end
end)
 end,
})

local Input = Tab:CreateInput({
   Name = "🔥Partner TAG",
   PlaceholderText = "Text Here",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
local Message = (Text) -- Message --
local Rank = "🔥Partner" -- Partner for PARTNER - Moderator for MODERATOR --
local Wow = "                                                                                                                                                       "
if Rank and Message and type(Message) == "string" then
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(""..Wow.."["..Rank.."] ["..game.Players.LocalPlayer.DisplayName.."]: "..Message.."", "All")
end
   end,
})

local Input = Tab:CreateInput({
   Name = "🌍82 Lb TAG",
   PlaceholderText = "Text Here",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
local Message = (Text) -- Message --
local Rank = "🌍#82" -- Partner for PARTNER - Moderator for MODERATOR --
local Wow = "                                                                                                                                                       "
if Rank and Message and type(Message) == "string" then
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(""..Wow.."["..Rank.."] ["..game.Players.LocalPlayer.DisplayName.."]: "..Message.."", "All")
end
   end,
})

local Input = Tab:CreateInput({
   Name = "⚒️Developer TAG",
   PlaceholderText = "Text Here",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
local Message = (Text) -- Message --
local Rank = "⚒️Developer" -- Partner for PARTNER - Moderator for MODERATOR --
local Wow = "                                                                                                                                                       "
if Rank and Message and type(Message) == "string" then
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(""..Wow.."["..Rank.."] ["..game.Players.LocalPlayer.DisplayName.."]: "..Message.."", "All")
end
   end,
})

local Input = Tab:CreateInput({
   Name = "🔧Moderator TAG",
   PlaceholderText = "Text Here",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
local Message = (Text) -- Message --
local Rank = "🔧Moderator" -- Partner for PARTNER - Moderator for MODERATOR --
local Wow = "                                                                                                                                                       "
if Rank and Message and type(Message) == "string" then
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(""..Wow.."["..Rank.."] ["..game.Players.LocalPlayer.DisplayName.."]: "..Message.."", "All")
end
   end,
})

local Button = Tab:CreateButton({
    Name = "Serverhop (big servers)",
    Callback = function()
        local function serverhop()
            print("Server hop is triggered")
            local response = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=50"))
            if response and response["data"] then
                for i, v in pairs(response["data"]) do
                    if v["playing"] ~= v["maxPlayers"] then
                        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v["id"])
                        break
                    end
                end
            else
                print("Error: failed to decode JSON response or missing data field.")
            end
        end
        while true do
wait(0.1)
        serverhop()
       end
    end,
 })
 
 local Button = Tab:CreateButton({
    Name = "Serverhop (small servers)",
    Callback = function()
        local function serverhop1()
            print("Server hop is triggered")
            local response = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=50"))
            if response and response["data"] then
                for i, v in pairs(response["data"]) do
                    if v["playing"] ~= v["maxPlayers"] then
                        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v["id"])
                        break
                    end
                end
            else
                print("Error: failed to decode JSON response or missing data field.")
            end
        end
        while true do
wait(0.1)
        serverhop1()
       end
    end,
 })
