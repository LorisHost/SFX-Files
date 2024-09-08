-- Undetected Solara Support Script with Memory Optimization

-- Function to safely load and execute a script with memory optimization
local function safeLoadScript(url, name)
    local success, result
    local scriptContent

    -- Attempt to download and load the script securely
    success, result = pcall(function()
        scriptContent = game:HttpGet(url)
        return loadstring(scriptContent)()
    end)

    -- Clear the script content from memory after execution
    scriptContent = nil

    -- Provide minimal output to avoid detection
    if success then
        print(name .. " executed successfully.")
    else
        warn("Failed to load " .. name)
    end

    -- Force garbage collection to clear any leftover data
    collectgarbage("collect")
end

-- Function to obfuscate URL and avoid direct detection
local function obfuscateUrl(url)
    -- Simple URL obfuscation (this can be made more complex)
    local encoded = ""
    for i = 1, #url do
        encoded = encoded .. string.char(string.byte(url, i) + 1)
    end
    return encoded
end

-- Function to decode and load an obfuscated script URL
local function loadObfuscatedScript(encodedUrl, name)
    local url = ""
    for i = 1, #encodedUrl do
        url = url .. string.char(string.byte(encodedUrl, i) - 1)
    end
    safeLoadScript(url, name)
end
if not game:IsLoaded() then
   game.Loaded:Wait()
end
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
   Title = "Sortex Universal",
   SubTitle = "by zerxcos",
   TabWidth = 150,
   Size = UDim2.fromOffset(550, 330),
   Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
   Theme = "Darker",
   MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
   info = Window:AddTab({ Title = "information", Icon = "scroll" }),
   Hubs = Window:AddTab({ Title = "Hubs Scripts", Icon = "scroll" }),
   s = Window:AddTab({ Title = "Sortex Hub", Icon = "scroll" }),
   Fe = Window:AddTab({ Title = "Fe Scripts", Icon = "scroll" }),
   Main = Window:AddTab({ Title = "Games Scripts", Icon = "scroll" }),
   Universal = Window:AddTab({ Title = "Universal", Icon = "scroll" }),
   Credits = Window:AddTab({ Title = "Credits", Icon = "scroll" }),
   Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
local Options = Fluent.Options

   Fluent:Notify({
       Title = "Update Latest",
       Content = "02.09.2024",
       SubContent = "Made by ZerxCos", -- Optional
       Duration = 5 -- Set to nil to make the notification not disappear
   })
   
   Tabs.Credits:AddParagraph({
      Title = "Developer",
      Content = "zerxcos UI / Scripts"
  })


Tabs.Credits:AddParagraph({
      Title = "Fucker And Nigga",
      Content = "Sigma Moon (Blocked Me Permanently) "
  })

Tabs.info:AddParagraph({
      Title = "About Hub",
      Content = "Premium User = True"
  })

Tabs.s:AddButton({
    Title = "Sortex Hub",
    Description = "Froggie Script",
    Callback = function()
   _Hawk = "ohhahtuhthttouttpwuttuaunbotwo"

--loadstring
local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHanki/HawkHUB/main/LibSources/HawkLib.lua", true))()

--------------------------------------------------------------------------

--Creating Window
local Window = Hawk:Window({
	ScriptName = "Sortex Hub - Frogge",
	DestroyIfExists = true, --if false, gui wont disappear
	Theme = "White" --Themes: Pink, White, Dark
})

--Creating Close Button
Window:Close({
	visibility = true, --if false, close button will disappear
	Callback = function()
		Window:Destroy() --Destroying Gui Function
	end,
})

--Creating Minimize Button
Window:Minimize({
	visibility = true, --if false, close button will disappear
	OpenButton = true, -- Visible = false etc, open button.
	Callback = function()
	end,
})

--Creating Tab
local tab1 = Window:Tab("Main")
local tab2 = Window:Tab("LocalPlayer")

local newsec = tab1:Section("Perks")

local button = newsec:Button("Noclip","Use Noclip?",function()
local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()
end)

local button = tab1:Button("HighLight","Use To view Players / Frogge",function()
while wait(1) do
local players = game.Players:GetPlayers()

for i,v in pairs(players) do
 local esp = Instance.new("Highlight")
 esp.Name = v.Name
 esp.FillTransparency = 0.5
 esp.FillColor = Color3.new(0, 0, 0)
 esp.OutlineColor = Color3.new(255, 255, 255)
 esp.OutlineTransparency = 0
 esp.Parent = v.Character
end
end
end)



local newsec = tab2:Section("WalkSpeed")
local slider = tab2:Slider("WalkSpeed",16,100,function(value)
	  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

local newsec = tab2:Section("JumpPower")
local slider = tab2:Slider("JumpPower",16,100,function(value)
	  game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

local button = tab2:Button("inf Jump","e script",function()
InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
    if InfiniteJumpEnabled then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
end) 
end)

            
    end
})

Tabs.Hubs:AddSection("Sky Hub")
Tabs.Hubs:AddButton({
   Title = "Sky Hub",
   Description = "Hub script",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))()
   end
})


Tabs.Hubs:AddSection("Repear Hub")
Tabs.Hubs:AddButton({
   Title = "Repear Hub",
   Description = "Hub script",
   Callback = function()
      local b,e = loadstring((http.request{Url="https://reaperscripts.com/loader?l=1"}).Body,"fElkgcI_8qRgt8tOlId_JP3w_8Xfyodw8wvhvWnmHeLuV7Sp7EHqws-spNRbb5bW4E2zkScxoLOaM0iFChMwOA~1");
      if not b then error('error loading bytecode: '..tostring(e)); end;
return b();
   end
})

Tabs.Hubs:AddSection("Ez Hub")
Tabs.Hubs:AddButton({
   Title = "Ez Hub",
   Description = "Hub script",
   Callback = function()
      loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug42O/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
   end
})

Tabs.Hubs:AddSection("Universal Hub")
Tabs.Hubs:AddButton({
   Title = "JJ HH GAMING Hub",
   Description = "Hub script",
   Callback = function()
      loadstring(game:HttpGet("https://freenote.biz/raw/SkG1nrBqE8",true))()
   end
})

Tabs.Fe:AddSection("Fe Scripts")

Tabs.Fe:AddButton({
    Title = "Sad Boy",
    Description = "Fe Script",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/hgPJbwF0"))()
    end
})



Tabs.Fe:AddButton({
    Title = "Chilling",
    Description = "Fe Script",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-FE-Chill-14288"))()
    end
})

Tabs.Fe:AddButton({
    Title = "Gelios",
    Description = "Fe Script",
    Callback = function()
        loadstring(game:HttpGet(('https://glot.io/snippets/gua2ntmbdm/raw/main.lua'),true))()
    end
})

Tabs.Fe:AddButton({
    Title = "Fling",
    Description = "Fe Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/FlingPlayers/main/FlingGUI"))()
    end
})



Tabs.Main:AddSection("JailBreak")

Tabs.Main:AddButton({
    Title = "Senstation Hub",
    Description = "JailBreak",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
    end
})

Tabs.Main:AddButton({
    Title = "Project Auto v5",
    Description = "JailBreak",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Pxsta72/ProjectAuto/main/AutoRobV5Beta'))()
    end
})

Tabs.Main:AddSection("Bee Swarm Simulator")

Tabs.Main:AddButton({
    Title = "Bacon Hub",
    Description = "Bee Swarm Simulator",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeSwarmSim/main/BeeSwarmSim"))() 
    end
})

Tabs.Main:AddButton({
    Title = "Histy Hub",
    Description = "Bee Swarm Simulator",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Historia00012/HISTORIAHUB/main/BSS%20FREE"))()
    end
})

Tabs.Main:AddButton({
    Title = "Macro Hub",
    Description = "Bee Swarm Simulator",
    Callback = function()
        loadstring(game:HttpGet("https://www.macrov2-script.xyz/macrov3.lua"))()
    end
})

Tabs.Main:AddButton({
   Title = "Survive Hub",
   Description = "Bee Swarm script",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/NUTellaVING/Survive/main/Loader.lua"))()
   end
})

Tabs.Main:AddSection("Natural Disasters")

Tabs.Main:AddButton({
    Title = "Six Hub",
    Description = "Natural Disaters",
    Callback = function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/ySixxNz/Natural-Desastre/SIX-MENU/SIX-HUB-NATURAL-DESASTRE")()
    end
})

Tabs.Main:AddButton({
    Title = "EVA Hub",
    Description = "Natural Disaters",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/K9ntra/EVA/main/abc.lua'))()
    end
})

Tabs.Main:AddSection("BloxFruits")

Tabs.Main:AddButton({
    Title = "Speed X Hub",
    Description = "BloxFruits",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
    end
})

Tabs.Main:AddButton({
    Title = "Redz Hub",
    Description = "BloxFruits",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
    end
})

Tabs.Main:AddButton({
    Title = "W Azure",
    Description = "BloxFruits",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
    end
})

Tabs.Main:AddButton({
    Title = "Hoho Hub",
    Description = "BloxFruits",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
})

Tabs.Main:AddSection("Infectious Smile")

Tabs.Main:AddButton({
    Title = "idk Hub",
    Description = "Infectious Smile",
    Callback = function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/Justaverageguym/Hub/main/Scripts/Infectious%20smile.lua")))()
    end
})

Tabs.Main:AddButton({
    Title = "GUI",
    Description = "Infectious Smile",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/SmileGUI/main/SmileHax33"))() 
    end
})


Tabs.Main:AddSection("Tower Of Hell")

Tabs.Main:AddButton({
    Title = "GUI",
    Description = "Tower Of Hell",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/BloxiYT/85f97364b6367baac677e109488c9905/raw/c2972a2b892c4193509ddb2fe1ba3061435e1a8a/gistfile1.txt"))() 
    end
})

Tabs.Main:AddButton({
    Title = "Lightux Hub",
    Description = "Tower Of Hell",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
    end
})

Tabs.Main:AddSection("Driving Empire")

Tabs.Main:AddButton({
    Title = "Lightux Hub",
    Description = "Driving Empire",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
    end
})

Tabs.Main:AddSection("Piliar Chase")

Tabs.Main:AddButton({
    Title = "Ritual Hub",
    Description = "Piliar Chase",
    Callback = function()
        local owner = "ritualrblx"
local repository = "ritual"
local server = "discord.gg/ritualrblx"

local link = string.format("https://raw.githubusercontent.com/%s/%s/%s/script", owner, repository, server)

loadstring(game:HttpGet(link))()
    end
})

Tabs.Main:AddSection("Dandy's World")

Tabs.Main:AddButton({
    Title = "#1 GUI",
    Description = "Dandy's World",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/Dandy's%20World"))
    end
})

Tabs.Main:AddButton({
    Title = "Ritual Hub",
    Description = "Dandy's World",
    Callback = function()
        local repository = "ritual"
local server = "discord.gg/ritualrblx"

local link = string.format("https://raw.githubusercontent.com/%s/%s/%s/script", owner, repository, server)

loadstring(game:HttpGet(link))()
    end
})

Tabs.Main:AddSection("Meme Sea")

Tabs.Main:AddButton({
    Title = "OMG hub",
    Description = "Meme Sea",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
    end
})

Tabs.Main:AddButton({
    Title = "Domandic hub",
    Description = "Meme Sea",
    Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/Domadicoof/Domadicoof/main/Xzibits/Meme%20Sea%20Script'))()
    end
})

Tabs.Main:AddButton({
    Title = "Redz hub",
    Description = "Meme Sea",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/MemeSea/main/Source.lua"))()
    end
})

Tabs.Main:AddButton({
    Title = "Yuto v3 hub",
    Description = "Meme Sea",
    Callback = function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/Binintrozza/yutv2e/main/Yutohub')))()
    end
})


Tabs.Main:AddSection("War Tycoon")

Tabs.Main:AddButton({
    Title = "GN hub",
    Description = "War Tycoon",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/nici002018/GNHub/master/GNHub.lua", true))()
    end
})

Tabs.Main:AddSection("Survive The Killer")

Tabs.Main:AddButton({
    Title = "Chair Ware Hub",
    Description = "Survive The Killer",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua"))()
    end
})

Tabs.Main:AddSection("Brookhaven RP")

Tabs.Main:AddButton({
   Title = "Ice Hub",
   Description = "Brookhaven RP script",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
   end
})

Tabs.Main:AddButton({
   Title = "Sander X Hub",
   Description = "Brookhaven RP script",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/sXPiterXs1111/SanderXV2.65/main/sanderXNewV2.65.lua'))()
   end
})

Tabs.Main:AddButton({
   Title = "Redz Hub",
   Description = "Brookhaven RP script",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/REDzHUB"))()
   end
})

Tabs.Main:AddSection("Fling Things and People")

Tabs.Main:AddButton({
   Title = "FTAP Hub",
   Description = "Fling Things and People script",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua"))()
   end
})

Tabs.Main:AddSection("untitled game tag")

Tabs.Main:AddButton({
   Title = "syn.o Hub",
   Description = "untitled game tag script",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/x24KcyaN"))()
   end
})

Tabs.Main:AddButton({
   Title = "Repear Hub",
   Description = "untitled game tag script",
   Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/AyoReaper/Reaper-Hub/main/loader.lua'))()
   end
})

Tabs.Main:AddButton({
   Title = "Game Enchaner",
   Description = "untitled game tag script",
   Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8Z1LC7sE"))()
   end
})

Tabs.Main:AddSection("Slap Battles")

Tabs.Main:AddButton({
   Title = "Destroyer X Hub",
   Description = "Slap Battles script",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Aquoupi/DestroyerX/main/DestroyerX"))()
   end
})

Tabs.Main:AddButton({
   Title = "Gigan Hub",
   Description = "Slap Battles script",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
   end
})

Tabs.Main:AddSection("Horrific Housing")

Tabs.Main:AddButton({
   Title = "Horrific Script",
   Description = "Horrific Housing script",
   Callback = function()
       loadstring(game:HttpGet("https://paste.ee/r/GzZjj", true))()
   end
})

Tabs.Main:AddSection("Doors")

Tabs.Main:AddButton({
   Title = "King Hub",
   Description = "Doors script",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkDoorsKing/Doors/main/Main"))()
   end
})

Tabs.Main:AddButton({
   Title = "TTYJ Hub",
   Description = "Doors script",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Yumiara/Python/main/Main.lua"))()
   end
})

Tabs.Main:AddSection("Strongest Battlegrounds")

Tabs.Main:AddButton({
    Title = "Speed X Hub",
    Description = "Strongest Balltegrounds",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Tabs.Main:AddButton({
    Title = "Kade Hub",
    Description = "Strongest Balltegrounds",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/KadeHubRepository/main/Latest.lua"))() 
    end
})

Tabs.Main:AddButton({
    Title = "NSexpression Hub",
    Description = "Strongest Balltegrounds",
    Callback = function()
       loadstring(game:HttpGet("https://github.com/1dontgiveaf/NSExpression/raw/main/script.lua", true))()
    end
})

Tabs.Main:AddSection("Murderer Mystery 2")

Tabs.Main:AddButton({
   Title = "HighLight Hub",
   Description = "MM2 script",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Free'))()
   end
})

Tabs.Main:AddButton({
   Title = "Symphony Hub",
   Description = "MM2 script",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ThatSick/ArrayField/main/SymphonyHub.lua'))()
   end
})

Tabs.Main:AddButton({
   Title = "AtherHub",
   Description = "MM2 script",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Athergaming/Roblox-Murder-Mystery-2-Script/main/AtherHub%20Murder%20Mystery%202%20Script.lua"))()
   end
})

Tabs.Main:AddButton({
   Title = "X Hub",
   Description = "MM2 script",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))() 
   end
})

Tabs.Main:AddButton({
   Title = "Nexus Hub",
   Description = "MM2 script",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/s-o-a-b/nexus/main/loadstring"))()
   end
})

Tabs.Main:AddButton({
   Title = "YARHM hub",
   Description = "MM2 script",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
   end
})
   
Tabs.Main:AddSection("Evade")

Tabs.Main:AddButton({
   Title = "Ardrak Hub",
   Description = "Evade script",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Hungtu2121/Ardrakhubv7/main/Evade'))()
   end
})

Tabs.Main:AddButton({
   Title = "Tbao Hub",
   Description = "Evade script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubEvade"))()
   end
})

Tabs.Main:AddButton({
   Title = "Hydra Network",
   Description = "Evade script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Dc2-masket27727/Mobile-s-Hub/main/Main/Hydra/Evade.exe"))();
   end
})

Tabs.Main:AddButton({
   Title = "xyz.beta",
   Description = "Evade script",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/xdevslasher/xyz.evade/main/xyz.evade.lua",true))()
   end
})

Tabs.Main:AddSection("Zombie Uprising")

Tabs.Main:AddButton({
   Title = "Unknown Hub X Zu",
   Description = "Zombie Uprising script",
   Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Zombie-Uprising'))() 
   end
})

Tabs.Main:AddButton({
   Title = "LKA hub",
   Description = "Zombie Uprising script",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/dqtixz/Universal-Script-Projeto/main/LKA%20By%20dqtixz%20Script"))()
   end
})

Tabs.Main:AddSection("Rivals")

Tabs.Main:AddButton({
   Title = "Silent Hub",
   Description = "Rivals script",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/KxGOATESQUE/SilentRivals/main/SilentRivals"))()
   end
})

Tabs.Main:AddButton({
   Title = "Tbao Hub",
   Description = "Rivals script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubRivals"))()
   end
})

Tabs.Main:AddButton({
   Title = "Venox Hub",
   Description = "Rivals script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Kona3366/Rat.dev-Repository/main/loadstring.lua"))()
   end
})

Tabs.Main:AddSection("Arsenal")

Tabs.Main:AddButton({
   Title = "Thunder Client V2",
   Description = "Arsenal script",
   Callback = function()
       if not game:IsLoaded() then
           game.Loaded:Wait()
       end
       
       local owner = 'andrewdarkyyofficial'
       local branch = 'main'
       
       loadstring(http.request({
           Url = string.format('https://raw.githubusercontent.com/%s/thunderclient/%s/main.lua', owner, branch),
           Method = 'GET'
       }).Body)()
   end
})

Tabs.Main:AddButton({
   Title = "My Sploit",
   Description = "Arsenal script",
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/wuhaz/arsenal/main/main.lua'))() 
   end
})

Tabs.Main:AddSection("BedWars")

Tabs.Main:AddButton({
   Title = "Vape V4",
   Description = "BedWars script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
   end
})

Tabs.Main:AddSection("Blade ball")

Tabs.Main:AddButton({
   Title = "FFJ hub",
   Description = "Blade Ball script",
   Callback = function()
      local success, err = pcall(function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
      end)
      
      if not success then
         Fluent:Notify({
            Title = "Error",
            Content = err,
            Duration = 5
         })
      end
   end
})

Tabs.Main:AddButton({
    Title = "Venox Hub",
    Description = "Blade Ball script",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Fsploit/venox-blade-ball-v1/main/K-A-T-S-U-S-F-S-P-L-O-I-T-I-S-A-F-U-R-R-Y%20MAIN%20V4"))()
        end)
        if not success then
            -- Handle the error, e.g., notify the user
            Fluent:Notify({
                Title = "Error",
                Content = err,
                Duration = 5
            })
        end
    end
})

Tabs.Main:AddButton({
    Title = "Astra Hub",
    Description = "Blade Ball script",
    Callback = function()
        local success, err = pcall(function()
            getgenv().Auth = "freenium_auth"
            loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/b6cc646cf4d4eb44647236da9b7fa2f0.lua"))()
        end)
        if not success then
            Fluent:Notify({
                Title = "Error",
                Content = err,
                Duration = 5
            })
        end
    end
})

Tabs.Main:AddButton({
    Title = "Redz Hub",
    Description = "Blade Ball script",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/eng"))()
        end)
        if not success then
            Fluent:Notify({
                Title = "Error",
                Content = err,
                Duration = 5
            })
        end
    end
})

Tabs.Main:AddButton({
    Title = "Alchemy Hub",
    Description = "Blade Ball script",
    Callback = function()
        local success, err = pcall(function()
            loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
        end)
        if not success then
            Fluent:Notify({
                Title = "Error",
                Content = err,
                Duration = 5
            })
        end
    end
})



Tabs.Universal:AddSection("Cmds Scripts")

Tabs.Universal:AddButton({
   Title = "Infinite yield",
   Description = "Admin Script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end
})

Tabs.Universal:AddButton({
   Title = "Nameless Admin",
   Description = "Admin Script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source.lua"))()
   end
})

Tabs.Universal:AddButton({
   Title = "just Cmd",
   Description = "Admin Script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/main.lua"))()
   end
})

Tabs.Universal:AddButton({
   Title = "CMD X",
   Description = "Admin Script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
   end
})

Tabs.Universal:AddSection("Bypass Chat")

Tabs.Universal:AddButton({
   Title = "kawaii",
   Description = "Bypass Chat Script",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/KAWAII-BYPASS/main/kawaii-bypass",true))() 
   end
})

Tabs.Universal:AddSection("UNC test / sUNC")

Tabs.Universal:AddButton({
   Title = "UNC test",
   Description = "UNC test Script",
   Callback = function()
       loadstring(game:HttpGet("https://github.com/ltseverydayyou/uuuuuuu/blob/main/UNC%20test?raw=true"))()
   end
})

Tabs.Universal:AddButton({
   Title = "sUNC",
   Description = "sUNC Expose functions Script",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/HummingBird8/HummingRn/main/sUNCTestGET"))()
   end
})

Tabs.Universal:AddSection("Dex Explorer v4")

Tabs.Universal:AddButton({
   Title = "Dex",
   Description = "Dex Explorer v4 Script",
   Callback = function()
       loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
   end
})

Tabs.Universal:AddSection("Hydroxide")

Tabs.Universal:AddButton({
   Title = "Remote Spy",
   Description = "Hydroxide Script",
   Callback = function()
       local owner = "Upbolt"
local branch = "revision"

local function webImport(file)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end

webImport("init")
webImport("ui/main")
   end
})


Tabs.Universal:AddSection("Spin")

Tabs.Universal:AddButton({
   Title = "Spin",
   Description = "Spin Script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/scarlet1837/a/main/speed.lua"))()
   end
})

Tabs.Universal:AddSection("Panel Universal")

Tabs.Universal:AddButton({
   Title = "Orca",
   Description = "Panel Script",
   Callback = function()
       loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/snapshot.lua"))()
   end
})

Tabs.Universal:AddButton({
   Title = "Sirus",
   Description = "Panel Script",
   Callback = function()
       loadstring(game:HttpGet('https://sirius.menu/script'))()
   end
})

Tabs.Universal:AddSection("Keyboard")

Tabs.Universal:AddButton({
   Title = "Keyboard",
   Description = "Keyboard Script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
   end
})

--Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
