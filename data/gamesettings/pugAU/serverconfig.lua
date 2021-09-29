-- Logger.setLevel(Logger.Levels.Debug)

-------------- PRESET --------------
Logger.debug("----- Loading GOTYLike Preset -----")

-- Import the GOTYLike preset
require("gotylike/main")

Logger.debug("----- GOTYLike Preset Applied -----")

-------------- SERVER INFO --------------

-- Server Information
ServerSettings.Description = "AU PUG Server"
ServerSettings.Motd = "A Game of the Year edition server"
-- ServerSettings.Password = "some-password"
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

-------------- MAP ROTATION --------------

-- Map Rotation
ServerSettings.MapRotation.VotingEnabled = true
ServerSettings.MapRotation.add(Maps.CTF.ArxNovena)
ServerSettings.MapRotation.add(Maps.CTF.Katabatic)
ServerSettings.MapRotation.add(Maps.CTF.DX)
ServerSettings.MapRotation.add(Maps.CTF.Crossfire)
ServerSettings.MapRotation.add(Maps.CTF.Terminus)
ServerSettings.MapRotation.add(Maps.CTF.Sunstar)
ServerSettings.MapRotation.add(Maps.CTF.Drydock)
ServerSettings.MapRotation.add(Maps.CTF.BellaOmegaNS)
ServerSettings.MapRotation.addCustom("TrCTF-Blues")
ServerSettings.MapRotation.addCustom("TrCTF-Incidamus")
ServerSettings.MapRotation.addCustom("TrCTF-Periculo")