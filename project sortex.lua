if not game:IsLoaded() then
   game.Loaded:Wait()
end
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
   Title = "srtx.lua 1.3.2b",
   SubTitle = "by zerx",
   TabWidth = 160,
   Size = UDim2.fromOffset(550, 340),
   Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
   Theme = "Dark",
   MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
   info = Window:AddTab({ Title = "info", Icon = "scroll" }),
   Main = Window:AddTab({ Title = "Main", Icon = "scroll" }),
   Universal = Window:AddTab({ Title = "Universal", Icon = "scroll" }),
   Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
local Options = Fluent.Options

   Fluent:Notify({
       Title = "Loaded",
       Content = "Hey User",
       SubContent = "Made by Zerx", -- Optional
       Duration = 5 -- Set to nil to make the notification not disappear
   })
   
   Tabs.info:AddParagraph({
      Title = "BIG UPDATE WOW",
      Content = "+Added 4 hubs blade ball & section blade , added one hub on MM2"
  })


Tabs.Main:AddSection("MM2")

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
      loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))() 
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

Tabs.Universal:AddSection("Bypass Chat V3")

Tabs.Universal:AddButton({
   Title = "Bypass Chat V3",
   Description = "Bypass Chat Script",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Projects/simplebypassv3"))()
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
