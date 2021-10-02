-- You can read about the configuration language at: https://www.tamods.org/docs/doc_srv_api_overview
-- Logger.setLevel(Logger.Levels.Debug)

-------------- PRESET --------------
Logger.debug("----- Loading GOTYLike Preset -----")

-- Import the GOTYLike preset
require("gotylike/main")

Logger.debug("----- GOTYLike Preset Applied -----")

-------------- SERVER INFO --------------

-- Server Information
ServerSettings.Description = "Mixer PUG Server"
ServerSettings.Motd = "A Game of the Year edition server"
ServerSettings.Password = "###"
ServerSettings.GameSettingMode = ServerSettings.GameSettingModes.GOTY

-------------- ADMINISTRATION --------------

local roles = {
    {
        name     = "admin",
        password = "###", -- <<< Set the password!
        commands = {"NextMap", "NextMapName", "StartMap", "EndMap"},
        canLua   = true, -- Admin can execute arbitrary Lua!
    },
    {
        name     = "mod",
        password = "###", -- <<< Set the password!
        commands = {"NextMap", "NextMapName", "StartMap", "EndMap"},
        canLua   = false,
    },
}

-- To set up admin / moderator roles, uncomment below
doSetupRoles(roles)

-------------- Map Rotation --------------
ServerSettings.MapRotation.VotingEnabled = true
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
ServerSettings.MapRotation.addCustom("TrCTF-Blues")
ServerSettings.MapRotation.addCustom("TrCTF-Incidamus")
ServerSettings.MapRotation.addCustom("TrCTF-Periculo")
--[[
]]
-------------- Player Made Maps --------------
-- Note: These need to be installed manually on the server prior to enabling.
--[[
]]
-------------- Arena --------------
--[[
ServerSettings.MapRotation.add(Maps.Arena.WalledIn)
ServerSettings.MapRotation.add(Maps.Arena.Hinterland)
ServerSettings.MapRotation.add(Maps.Arena.FrayTown)
ServerSettings.MapRotation.add(Maps.Arena.Undercroft)
ServerSettings.MapRotation.add(Maps.Arena.AirArena)
ServerSettings.MapRotation.add(Maps.Arena.LavaArena)
ServerSettings.MapRotation.add(Maps.Arena.Whiteout)
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