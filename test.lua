local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Sortex Ware (Beta Testers)",
    LoadingTitle = "Welcome",
    LoadingSubtitle = "by Sortex",
    Theme = "Ocean", -- DarkBlue, Green, Light, Default - more coming soon!
 
    DisableRayfieldPrompts = false,
 
    ConfigurationSaving = {
       Enabled = false,
       FolderName = Fortex, -- Create a custom folder for your hub/game
       FileName = "SORTEX WARE"
    },
 
    Discord = {
       Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Guardian",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hel900o","1777"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

Rayfield:Notify({
   Title = "Updated 12.11.2024",
   Content = "Added : cant asking /Contact Discord : essiwr -- if you have any problems with scripts",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons

      Ignore = { -- Duplicate this table (or remove it) to add and remove buttons to the notification.
         Name = "Okay!",
         Callback = function()
            print("The user tapped Okay!")
         end
      },

},
})

 local info = Window:CreateTab("Info",10723415903)

info:CreateParagraph({Title = "Sometimes CallBack Error that means Not Supported Game or Not Working Script", Content = "Credits : Sortex / Fortex (Tencent)"})

local Games = Window:CreateTab("Games Scripts",10734943448)

Games:CreateSection("JailBreak")

Games:CreateButton({
    Name = "Senstation Hub",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))()
    end
})

Games:CreateButton({
    Name = "Project Auto v5",
    Callback = function()
        loadstring(game:HttpGet('http://scripts.projectauto.xyz/AutoRobV5'))()
    end
})

Games:CreateButton({
    Name = "uwu Hub (Auto Rob)",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/8cf41f52e2d558a0ad7ea65aa1019f67.lua"))()
    end
})

Games:CreateButton({
    Name = "Universal AutoFarm", 
    Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/BlitzIsKing/UniversalFarm/main/Loader/Regular'))()
    end
})

Games:CreateSection("Bee Swarm Simulator")

Games:CreateButton({
    Name = "Bacon Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeSwarmSim/main/BeeSwarmSim"))()
    end
})

Games:CreateButton({
    Name = "Histy Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Historia00012/HISTORIAHUB/main/BSS%20FREE"))()
    end
})

Games:CreateButton({
    Name = "Macro Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://www.macrov2-script.xyz/macrov3.lua"))()
    end
})

Games:CreateButton({
   Name = "Survive Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/NUTellaVING/Survive/main/Loader.lua"))()
   end
})

Games:CreateSection("Eats World")

Games:CreateButton({
    Name = "Sjw Hub", 
    Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/NhatMinhVNQ/w-hub/main/WORLDHUB.lua"))()
    end
 })

 Games:CreateButton({
    Name = "Rinns Hub", 
    Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"))()
    end
 })

 Games:CreateButton({
    Name = "Reaper Hub",
    Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/AyoReaper/Reaper-Hub/main/loader.lua"))()
    end
 })

Games:CreateSection("Sol's RNG")

Games:CreateButton({
   Name = "Sol's RNG Panel",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Looser3itx/Hmmmmmmmmmmmmmmmmmmmmmmmmmmmm/main/loader.lua"))()
   end
})

Games:CreateButton({
   Name = "Hoho Hub", 
   Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
   end
})

Games:CreateButton({
   Name = "Bacon Hub", 
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/SolRNG/main/SolRNG"))()
   end
})

Games:CreateSection("Death Ball")

Games:CreateButton({
    Name = "Native Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/e9aa36da0de00de261431898fc324aa5.lua"))()
    end
})

Games:CreateSection("Natural Disasters")

Games:CreateButton({
    Name = "Six Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ySixxNz/Natural-Desastre/Six-Hub/NaturalDisaster'))()
    end
})

Games:CreateButton({
    Name = "EVA Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/K9ntra/EVA/main/abc.lua'))()
    end
})

Games:CreateButton({
    Name = "Rochips Hub",
    Callback = function()
       local c = "K3Ep6gX2/raw"
loadstring(game:HttpGet(('https://pastefy.app/'..c),true))()
    end
})

Games:CreateSection("Anime Defenders")

Games:CreateButton({
    Name = "Buang Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/buang5516/buanghub/main/BUANGHUB.lua"))()
    end
})

Games:CreateButton({
    Name = "Nousigi Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/Nausigi"))()
    end
})

Games:CreateSection("Weaponry")

Games:CreateButton({
    Name = "Nexus Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/s-o-a-b/nexus/main/loadstring"))()
    end
})

Games:CreateSection("Blade Ball")

Games:CreateButton({
    Name = "Redz Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/redz9999"))()
    end
})

Games:CreateSection("FrontLines")

Games:CreateButton({
    Name = "Waza Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://scripts.waza80.com/script/loader"))()
    end
})

Games:CreateSection("A Universal Time")

Games:CreateButton({
    Name = "EclipseX Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JackCSTM/eclipsex/main/script"))()
    end
})

Games:CreateButton({
    Name = "Demonic V2 Hub", 
    Callback = function()
        getgenv().ValidateType = "Key" -- You can use "Whitelist" too!
loadstring(game:HttpGet("https://raw.githubusercontent.com/Prosexy/Demonic-HUB-V2/main/DemonicHub_V2.lua", true))()
    end
})

Games:CreateSection("ZO SAMURAI")

Games:CreateButton({
    Name = "EclipseX Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JackCSTM/eclipsex/main/script"))()
    end
})

Games:CreateSection("King Legacy")

Games:CreateButton({
    Name = "Arc Hub", 
    Callback = function()
        getgenv().RaidUI = false 
        getgenv().CustomDistance = 10 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChopLoris/ArcHub/main/main.lua"))()
    end
})

Games:CreateButton({
    Name = "Zee Hub", 
    Callback = function()
        loadstring(game:HttpGet('https://zuwz.me/Ls-Zee-Hub-KL'))()
    end
})

Games:CreateButton({
    Name = "Hyper Hub",
    Callback = function()
        repeat wait() until game:IsLoaded()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua"))()
    end
})

Games:CreateButton({
    Name = "BT Hub", 
    Callback = function()
       loadstring(game:HttpGetAsync("https://lua-library.btteam.net/script-auth.txt"))()
    end
})

Games:CreateSection("Slap Battles")

Games:CreateButton({
    Name = "Hub That Exits", 
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
    end
})

Games:CreateButton({
    Name = "Forge Hub", 
    Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/Skzuppy/forge-hub/main/loader.lua'))()
    end
})   

Games:CreateSection("K.A.T")

Games:CreateButton({
    Name = "King Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Knife-Ability-Test/main/Gui'))()  -- Removed pcall
    end
})

Games:CreateSection("Fisch")

Games:CreateButton({
    Name = "Speed X Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Games:CreateButton({
    Name = "Public - Lythicals", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lythicals/script/main/Fisch.lua"))()
    end
})

Games:CreateButton({
    Name = "Goomba Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustLevel/goombahub/main/fisch.lua"))()
    end
})

Games:CreateButton({
    Name = "Infinite Ware Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Kitler69/InfiniteWare/refs/heads/main/Launcher",true))()
    end
})

Games:CreateButton({
    Name = "Jvrre Hub",
    Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/yolobradda/fischjvrre/refs/heads/main/fishrelease"))()
    end
})

Games:CreateSection("Survive Area 51")

Games:CreateButton({
    Name = "Darkrai Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Saktk-In-Area51/main/Area51", true))()
    end
})

Games:CreateButton({
    Name = "Voyager X Hub",
    Callback = function()
         loadstring(game:HttpGet("https://raw.githubusercontent.com/JayH4x/NexxorsScripts/main/VoyagerX.lua"))()
    end
})

Games:CreateButton({
    Name = "Hacker Script", 
    Callback = function()
         loadstring(game:HttpGet('https://pastebin.com/raw/TtdvYAKU'))()
    end
})

Games:CreateSection("Pet GO!")

Games:CreateButton({
    Name = "Speed X Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Games:CreateButton({
    Name = "Zap Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Games:CreateButton({
    Name = "Repear Hub",
    Callback = function()
        loadstring(game:HttpGet("https://reaperscripts.com/loader.lua"))()
    end
})

Games:CreateButton({
    Name = "King Hub", 
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Kings-Hub/refs/heads/main/Main.lua'))()  -- Removed pcall
    end
})

Games:CreateSection("Murderers VS Sheriffs Duels")

Games:CreateButton({
    Name = "X RO Hub", 
    Callback = function()
        loadstring(game:HttpGetAsync'https://x-ro.cc/modules/loadstring.lua')()	
    end
})

Games:CreateButton({
    Name = "MSVD Hub",
    Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/synscripts/scripts/main/syn/MVSD.lua'))()
    end
})

Games:CreateButton({
    Name = "Rinns Hub", 
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/SkibidiCen/MainMenu/main/Code"))()
    end
})

Games:CreateButton({
    Name = "Syrex Hub", 
    Callback = function()
      loadstring(game:HttpGet('https://syrexhub.netlify.app/raw/syrexhub'))()
    end
})


Games:CreateSection("BloxFruits")

Games:CreateButton({
    Name = "Speed X Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
    end
})

Games:CreateButton({
    Name = "Redz Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
    end
})

Games:CreateButton({
    Name = "W Azure",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
    end
})

Games:CreateButton({
    Name = "Hoho Hub",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
})

Games:CreateSection("Strucid")

Games:CreateButton({
    Name = "Astro Hub", 
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AstroPublic/Astro.Public/main/astro.loader", true))()
    end
})

Games:CreateButton({
    Name = "Strucid", 
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/10x00/Public-Cracks/main/Apollo%20Hub%20Crack.lua"))()
    end
})

Games:CreateSection("Zombie Attack")

Games:CreateButton({
    Name = "Lightux Hub", 
    Callback = function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
    end
})

Games:CreateButton({
    Name = "Unknown Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Zombie-Attack'))() 
    end
})

Games:CreateSection("Flee The Facility")

Games:CreateButton({
    Name = "infinity Hub", 
    Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/Aboahaogsigsigaivva/__Scripts/__Main/__Code/__FleeTheFacility.lua'))()
    end
})

Games:CreateButton({
    Name = "H-Hub", 
    Callback = function()
       loadstring(game:HttpGet('https://pastebin.com/raw/3uMsh1vn'))()
    end
})


Games:CreateSection("Infectious Smile")

Games:CreateButton({
    Name = "idk Hub",
    Callback = function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/Justaverageguym/Hub/main/Scripts/Infectious%20smile.lua")))()
    end
})

Games:CreateButton({
    Name = "GUI", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/SmileGUI/main/SmileHax33"))() 
    end
})

Games:CreateSection("Tower Of Hell")

Games:CreateButton({
    Name = "GUI", 
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/BloxiYT/85f97364b6367baac677e109488c9905/raw/c2972a2b892c4193509ddb2fe1ba3061435e1a8a/gistfile1.txt"))() 
    end
})

Games:CreateButton({
    Name = "Lightux Hub", 
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
    end
})

Games:CreateSection("Da Hood")

Games:CreateButton({
    Name = "Azure Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Actyrn/Scripts/main/AzureModded"))()
    end
})

Games:CreateButton({
    Name = "Silent Aim With Fov",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kazuapad/kazuscripts/main/kazusilentfov"))()
    end
})

Games:CreateButton({
    Name = "SwagMode", 
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
    end
})

Games:CreateSection("Anime Vanguard")

Games:CreateButton({
    Name = "Buang Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/buang5516/buanghub/main/BUANGHUB.lua"))()
    end
})

Games:CreateButton({
    Name = "Nousigi Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://nousigi.com/loader.lua"))() 
    end
})

Games:CreateButton({
    Name = "Speed X Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Anime%20Vanguards.lua"))()
    end
})

Games:CreateSection("Spider")

Games:CreateButton({
    Name = "Give Items", 
    Callback = function()
        loadstring(game:HttpGet("https://abre.ai/spider-lua"))()
    end
})

Games:CreateSection("Driving Empire")

Games:CreateButton({
    Name = "Lightux Hub", 
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
    end
})

Games:CreateButton({
    Name = "Simplest Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d8bf54daa5b358826ce74cab275f9135.lua"))()
    end
})

Games:CreateSection("Piliar Chase")

Games:CreateButton({
    Name = "Ritual Hub", 
    Callback = function()
        local owner = "ritualrblx"
        local repository = "ritual"
        local server = "discord.gg/ritualrblx"

        local link = string.format("https://raw.githubusercontent.com/%s/%s/%s/script", owner, repository, server)

        loadstring(game:HttpGet(link))()
    end
})

Games:CreateSection("Dandy's World")

Games:CreateButton({
    Name = "Vanta Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5d9744f681f6e50ab3fc5d9eb45c7cc7.lua"))()
    end
})

Games:CreateButton({
    Name = "Ritual Hub",
    Callback = function()
        local owner = "ritualrblx"  -- Make sure 'owner' is defined here as well
        local repository = "ritual"
        local server = "discord.gg/ritualrblx"

        local link = string.format("https://raw.githubusercontent.com/%s/%s/%s/script", owner, repository, server)

        loadstring(game:HttpGet(link))()
    end
})

Games:CreateSection("Meme Sea")

Games:CreateButton({
    Name = "Brutality hub", 
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Yatsuraa/Matsune/main/memesea.lua"))()
    end
})

Games:CreateButton({
    Name = "Domandic hub", 
    Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/Domadicoof/Domadicoof/main/Xzibits/Meme%20Sea%20Script'))()
    end
})

Games:CreateButton({
    Name = "Redz hub", 
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/MemeSea/main/Source.lua"))()
    end
})

Games:CreateButton({
    Name = "Yuto v3 hub", 
    Callback = function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/Binintrozza/yutv2e/main/Yutohub')))()
    end
})

Games:CreateSection("Ability Wars")

Games:CreateButton({
    Name = "Komaru Hub", 
    Callback = function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/railme37509124/komaruhubabilitywars/main/script.lua")()
    end
})

Games:CreateButton({
    Name = "Combat Hub", 
    Callback = function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/pogi1010/Com299jsjsnsjjsnwjq/main/Comksjajajajja")()
    end
})

Games:CreateSection("Combat Warriors")

Games:CreateButton({
    Name = "InfiniX Hub", 
    Callback = function()
        local __function = loadstring(game:HttpGet("https://github.com/Hosvile/InfiniX/releases/latest/download/main.lua", true)) __function(__function)
    end
})

Games:CreateSection("SkinWalker")

Games:CreateButton({
    Name = "The Skinwalker Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lucas021ajds/theskinwalkerhub/main/script"))()
    end
})

Games:CreateSection("Work At Pizza Place")

Games:CreateButton({
    Name = "WAPP Hub", 
    Callback = function()
        loadstring(game:HttpGet"https://raw.githubusercontent.com/Scripting-Gods/Monkeys/main/Monkeys/WAPP.lua")()
    end
})

Games:CreateSection("City Defense")

Games:CreateButton({
    Name = "City Defense", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/agreed69-scripts/open-src-scripts/refs/heads/main/City%20Defense.lua"))() 
    end
})


Games:CreateSection("Dustry Trip")

Games:CreateButton({
    Name = "Erdutie hub", 
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/ThacG/EruditeHub/main/A%20Dusty%20Trip/V3F"))()
    end
})

Games:CreateButton({
    Name = "Gearz hub",
    Callback = function()
       loadstring(game:HttpGet("https://github.com/Tropxzz/GEARZ-/blob/main/checker.lua?raw=true",true))()
    end
})

Games:CreateButton({
    Name = "Lightux Hub", 
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
    end
})

Games:CreateButton({
    Name = "Connect Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/artemy133563/Utilities/main/ADustyTrip",true))()
    end
})

Games:CreateSection("Fruit BattleGround")

Games:CreateButton({
    Name = "Imp Hub", 
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/alan11ago/Hub/refs/heads/main/ImpHub.lua'))()
    end
})

Games:CreateSection("Glue Piece")

Games:CreateButton({
    Name = "Kill Hub", 
    Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/Godmey/Glue-piece-By-Kill/main/README.md'))()
    end
})

Games:CreateButton({
    Name = "Xesonz Hub", 
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/TheXesonz/Xesonz-Free/main/Crackmai"))()
    end
})

Games:CreateSection("War Tycoon")

Games:CreateButton({
    Name = "Facility hub", 
    Callback = function()
       loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/2dd7c4149b05c7f3125db42b5cf26b00.lua"))()
    end
})

Games:CreateSection("Survive The Killer")

Games:CreateButton({
    Name = "Chair Ware Hub",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua"))()
    end
})

Games:CreateSection("Brookhaven RP")

Games:CreateButton({
   Name = "Ice Hub", 
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
   end
})

Games:CreateButton({
   Name = "Sander X Hub", 
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/kigredns/SanderXV4.2.2/refs/heads/main/New.lua'))()
   end
})

Games:CreateButton({
   Name = "Redz Hub", 
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/REDzHUB/main/REDzHUB"))()
   end
})

Games:CreateButton({
   Name = "Imperial Hub", 
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/Trev0rZ/LoaderM/refs/heads/main/ImperiaHub-lWorking.lua'))()
   end
})

Games:CreateButton({
   Name = "Salvatore Hub", 
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/RFR-R1CH4RD/Loader/main/Salvatore.lua"))()
   end
})

Games:CreateButton({
   Name = "Jul Hub", 
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/Jfdedit3/z4trox-hub-v1/main/z4trox%20hub'))()
   end
})

Games:CreateButton({
   Name = "G Hub", 
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/GHUBV14XZ/main/Ghub_Main_Loader.txt"))()
   end
})

Games:CreateSection("Pls Donate")

Games:CreateButton({
   Name = "Ani Moon Hub", 
   Callback = function()
       loadstring(game:HttpGet(('https://raw.githubusercontent.com/zznefethbxau0/a-m-f/main/ani-moon-fors-new')))()
   end
})

Games:CreateButton({
   Name = "@szze Hub", 
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/CF-Trail/tzechco-PlsDonateAutofarmBackup/main/old.lua"))()
   end
})

Games:CreateSection("Fling Things and People")

Games:CreateButton({
   Name = "FTAP Hub", 
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua"))()
   end
})

Games:CreateSection("untitled game tag") 

Games:CreateButton({
   Name = "syn.o Hub", 
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/x24KcyaN"))()
   end
})

Games:CreateButton({
   Name = "Repear Hub", 
   Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/AyoReaper/Reaper-Hub/main/loader.lua'))()
   end
})

Games:CreateButton({
   Name = "Game Enchaner", 
   Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/8Z1LC7sE"))()
   end
})

Games:CreateSection("Hide And Seek Extreme")

Games:CreateButton({
   Name = "Tbao Hub", 
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubHideandSeek"))()
   end
})

Games:CreateButton({
    Name = "Project V Hub", 
    Callback = function()
        loadstring(game:HttpGet("https://alexv.netlify.app/hub.lua"))()
    end
 })

Games:CreateSection("Prison Life")

Games:CreateButton({
   Name = "Prison Ware", 
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
   end
})

Games:CreateButton({
   Name = "OMG Hub", 
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))() 
   end
})

Games:CreateButton({
   Name = "Tbao Hub", 
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaohubPrisonLife"))()
   end
})

Games:CreateSection("Doors")

Games:CreateButton({
   Name = "King Hub",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DarkDoorsKing/Doors/main/Main"))()
   end
})

Games:CreateButton({
   Name = "Sensation Hub",
   Callback = function()
       loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/730854e5b6499ee91deb1080e8e12ae3.lua"))() 
   end
})

Games:CreateButton({
   Name = "Waza Hub",
   Callback = function()
        loadstring(game:HttpGet("https://scripts.waza80.com/script/loader"))()
   end
})

Games:CreateButton({
   Name = "ms paint", 
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua"))()
   end
})

Games:CreateSection("Strongest Battlegrounds") 

Games:CreateButton({
    Name = "Speed X Hub", 
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
    end
})

Games:CreateButton({
    Name = "Kade Hub", 
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/KadeHubRepository/main/Latest.lua"))() 
    end
})

Games:CreateButton({
    Name = "NSexpression Hub", 
    Callback = function()
       loadstring(game:HttpGet("https://github.com/1dontgiveaf/NSExpression/raw/main/script.lua", true))()
    end
})

Games:CreateSection("Murderer Mystery 2")

Games:CreateButton({
   Name = "HighLight Hub", 
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Free'))()
   end
})

Games:CreateButton({
   Name = "Symphony Hub", 
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ThatSick/ArrayField/main/SymphonyHub.lua'))()
   end
})

Games:CreateButton({
   Name = "Ather Hub", 
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Athergaming/Roblox-Murder-Mystery-2-Script/main/AtherHub%20Murder%20Mystery%202%20Script.lua"))()
   end
})

Games:CreateButton({
   Name = "X Hub", 
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))() 
   end
})

Games:CreateButton({
   Name = "Nexus Hub", 
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/s-o-a-b/nexus/main/loadstring"))()
   end
})

Games:CreateButton({
   Name = "YARHM hub", 
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
   end
})
   
Games:CreateSection("Evade")

Games:CreateButton({
   Name = "Ardrak Hub", 
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Hungtu2121/Ardrakhubv7/main/Evade'))()
   end
})

Games:CreateButton({
   Name = "Tbao Hub", 
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubEvade"))()
   end
})

Games:CreateButton({
   Name = "Uknown Hub", 
   Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Evade'))()
   end
})

Games:CreateButton({
   Name = "King Hub", 
   Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/zReal-King/Kings-Hub/refs/heads/main/Main.lua'))()  -- Removed pcall
   end
})

Games:CreateSection("Zombie Uprising")

Games:CreateButton({
   Name = "Unknown Hub X Zu", 
   Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Zombie-Uprising'))() 
   end
})

Games:CreateButton({
   Name = "LKA hub", 
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/dqtixz/Universal-Script-Projeto/main/LKA%20By%20dqtixz%20Script"))()
   end
})

Games:CreateSection("Rivals")

Games:CreateButton({
   Name = "Tbao Hub", 
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubRivals"))()
   end
})

Games:CreateSection("Arsenal")

Games:CreateButton({
   Name = "Thunder Client V2", 
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

Games:CreateButton({
   Name = "My Sploit", 
   Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/wuhaz/arsenal/main/main.lua'))() 
   end
})

Games:CreateButton({
   Name = "Repear Hub", 
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/AyoReaper/Reaper-Hub/main/loader.lua"))()
   end
})

Games:CreateButton({
   Name = "Tbao Hub", 
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()  -- Added missing parentheses
   end
})

Games:CreateSection("BedWars")

Games:CreateButton({
   Name = "Vape V4", 
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
   end
})
