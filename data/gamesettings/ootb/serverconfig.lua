-- TAMods-Server configuration can be placed in this file
-- You can read about the configuration language at: https://www.tamods.org/docs/doc_srv_api_overview.html


-------------- SERVER INFO --------------

ServerSettings.Description = "My Custom OOTB Server"
ServerSettings.Motd = "This is my OOTB server"
-- ServerSettings.Password = "some-password"
ServerSettings.GameSettingMode = ServerSettings.GameSettingModes.OOTB


-------------- STANDARD OOTB SETTINGS --------------

ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1", "Light", "Thrust Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1A", "Light", "Thrust Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "Phase Rifle", "Light", "Thrust Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "SAP20", "Light", "Thrust Pack")

ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1", "Light", "Stealth Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1A", "Light", "Stealth Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "Phase Rifle", "Light", "Stealth Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "SAP20", "Light", "Stealth Pack")

ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1", "Light", "Light Utility Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "BXT1A", "Light", "Light Utility Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "Phase Rifle", "Light", "Light Utility Pack")
ServerSettings.MutuallyExclusiveItems.add("Light", "SAP20", "Light", "Light Utility Pack")

-------------- ADMINISTRATION --------------

-- Basic Access Control, see https://www.tamods.org/docs/doc_srv_api_admin.html for more

require("admin")
-------------- With Login (Must modify admin.lua) --------------
local roles = {
    -- {
    --     name     = "admin",
    --     password = "administrator", -- <<< Set the password!
    --     commands = {"NextMap", "NextMapName", "StartMap", "EndMap","sm","em"},
    --     canLua   = true, -- Admin can execute arbitrary Lua!
    -- },
    -- {
    --     name     = "mod",
    --     password = "moderator", -- <<< Set the password!
    --     commands = {"StartMap", "EndMap","sm","em"},
    --     canLua   = false,
    -- },
}
    
    -------------- Without Login --------------
local loginlessRoles = {
    {
        name     = "admin",
        commands = {"NextMap", "NextMapName", "StartMap", "EndMap","sm","em","help"},
        canLua   = true,
    },
    {
        name     = "mod",
        commands = {"StartMap", "EndMap","sm","em","help"},
        canLua   = false,
    },
}
    
-- To set up admin / moderator roles, uncomment above
doSetupRoles(roles, loginlessRoles)

-------------- Loginless admin --------------
-- Admin.Roles.addMember("admin", "username")
-- Admin.Roles.addMember("mod", "username")

-------------- OTHER SETTINGS --------------

-- Some other settings you might need, just uncomment those lines
-- If you need more settings, check the documentation at : https://www.tamods.org/docs/doc_srv_api_serverconfig.html

ServerSettings.WarmupTime = 5
-- ServerSettings.FriendlyFire = true
-- ServerSettings.CTFCapLimit = 7
-- ServerSettings.BannedItems.add("Light", "BXT1")


-------------- MAP ROTATION --------------

-- The default map rotation is: Katabatic, ArxNovena, DangerousCrossing, Crossfire, Drydock, Terminus, Sunstar
-- You can override the default map rotation by uncommenting any of the maps below.

ServerSettings.MapRotation.VotingEnabled = true
ServerSettings.EndMatchWaitTime = 5
ServerSettings.MapRotation.Mode = ServerSettings.MapRotation.Modes.Sequential -- Can be set to ServerSettings.MapRotation.Modes.Random for random map rotation.
-------------- Capture the Flag --------------
ServerSettings.MapRotation.add(Maps.CTF.Katabatic)
ServerSettings.MapRotation.add(Maps.CTF.ArxNovena)
ServerSettings.MapRotation.add(Maps.CTF.DangerousCrossing)
ServerSettings.MapRotation.add(Maps.CTF.Crossfire)
ServerSettings.MapRotation.add(Maps.CTF.Drydock)
ServerSettings.MapRotation.add(Maps.CTF.Terminus)
ServerSettings.MapRotation.add(Maps.CTF.Sunstar)
ServerSettings.MapRotation.add(Maps.CTF.BellaOmegaNS)
ServerSettings.MapRotation.add(Maps.CTF.CanyonCrusade)
ServerSettings.MapRotation.add(Maps.CTF.BellaOmega)
ServerSettings.MapRotation.add(Maps.CTF.Blueshift)
ServerSettings.MapRotation.add(Maps.CTF.Hellfire)
ServerSettings.MapRotation.add(Maps.CTF.IceCoaster)
ServerSettings.MapRotation.add(Maps.CTF.Perdition)
ServerSettings.MapRotation.add(Maps.CTF.Permafrost)
ServerSettings.MapRotation.add(Maps.CTF.Raindance)
ServerSettings.MapRotation.add(Maps.CTF.Stonehenge)
ServerSettings.MapRotation.add(Maps.CTF.Tartarus)
ServerSettings.MapRotation.add(Maps.CTF.TempleRuins)
--[[
]]
-------------- Player Made Maps --------------
-- Note: These need to be installed manually on the server prior to enabling.
--[[
ServerSettings.MapRotation.addCustom("TrCTF-Blues")
ServerSettings.MapRotation.addCustom("TrCTF-Incidamus")
ServerSettings.MapRotation.addCustom("TrCTF-Periculo")
ServerSettings.MapRotation.addCustom("TrCTF-Fracture")
ServerSettings.MapRotation.addCustom("TrCTF-Phlegethon")
ServerSettings.MapRotation.addCustom("TrCTF-DesertedValley")
ServerSettings.MapRotation.addCustom("TrCTF-Acheron")
ServerSettings.MapRotation.addCustom("TrCTF-Styx")
ServerSettings.MapRotation.addCustom("TrCTF-Eclipse")
ServerSettings.MapRotation.addCustom("TrCTF-Polaris")
ServerSettings.MapRotation.addCustom("TrCTF-Oceanus")
ServerSettings.MapRotation.addCustom("TrCTF-Meridian")
ServerSettings.MapRotation.addCustom("TrCTF-Ascent")
ServerSettings.MapRotation.addCustom("TrCTF-Crash")
-- ServerSettings.MapRotation.addCustom("TrCTF-TreacherousPass")
]]
-------------- Arena --------------
--[[
ServerSettings.MapRotation.addCustom("TrArena-Walledin")
ServerSettings.MapRotation.addCustom("TrArena-Fraytown")
ServerSettings.MapRotation.addCustom("TrArena-Lavaarena")
ServerSettings.MapRotation.addCustom("TrArena-Airarena")
ServerSettings.MapRotation.addCustom("TrArena-Whiteout")
ServerSettings.MapRotation.addCustom("TrArena-Undercroft")
ServerSettings.MapRotation.addCustom("TrArena-Hinterland")
-- Note: These need to be installed manually on the server prior to enabling.
ServerSettings.MapRotation.addCustom("TrArena-ElysianBattleground")
ServerSettings.MapRotation.addCustom("TrArena-Ruins")
]]
-------------- Rabbit --------------
--[[
ServerSettings.MapRotation.add(Maps.Rabbit.Nightabatic)
ServerSettings.MapRotation.add(Maps.Rabbit.SulfurCove)
ServerSettings.MapRotation.add(Maps.Rabbit.Inferno)
ServerSettings.MapRotation.add(Maps.Rabbit.Crossfire)
ServerSettings.MapRotation.add(Maps.Rabbit.Outskirts)
ServerSettings.MapRotation.add(Maps.Rabbit.Quicksand)
]]
-------------- Team Death Match --------------
--[[
ServerSettings.MapRotation.add(Maps.TDM.Outskirts)
ServerSettings.MapRotation.add(Maps.TDM.Quicksand)
ServerSettings.MapRotation.add(Maps.TDM.SulfurCove)
ServerSettings.MapRotation.add(Maps.TDM.DrydockNight)
ServerSettings.MapRotation.add(Maps.TDM.Nightabatic)
ServerSettings.MapRotation.add(Maps.TDM.Inferno)
ServerSettings.MapRotation.add(Maps.TDM.Miasma)
]]
-------------- CTF Blitz --------------
--[[
ServerSettings.MapRotation.add(Maps.Blitz.ArxNovena)
ServerSettings.MapRotation.add(Maps.Blitz.BellaOmega)
ServerSettings.MapRotation.add(Maps.Blitz.Blueshift)
ServerSettings.MapRotation.add(Maps.Blitz.Crossfire)
ServerSettings.MapRotation.add(Maps.Blitz.CanyonCrusadeRevival)
ServerSettings.MapRotation.add(Maps.Blitz.Drydock)
ServerSettings.MapRotation.add(Maps.Blitz.Hellfire)
ServerSettings.MapRotation.add(Maps.Blitz.IceCoaster)
ServerSettings.MapRotation.add(Maps.Blitz.Katabatic)
ServerSettings.MapRotation.add(Maps.Blitz.Perdition)
ServerSettings.MapRotation.add(Maps.Blitz.Terminus)
-- Note: These need to be installed manually on the server prior to enabling.
ServerSettings.MapRotation.addCustom("TrCTFBlitz-Broadside")
]]
-------------- Capture and Hold --------------
--[[
ServerSettings.MapRotation.add(Maps.CaH.Outskirts)
ServerSettings.MapRotation.add(Maps.CaH.Katabatic)
ServerSettings.MapRotation.add(Maps.CaH.Raindance)
ServerSettings.MapRotation.add(Maps.CaH.SulfurCove)
ServerSettings.MapRotation.add(Maps.CaH.Tartarus)
ServerSettings.MapRotation.add(Maps.CaH.CanyonCrusadeRevival)
]]