Core.AllowUnmoddedClients = false

serverSettings = {
    -- Check the documentation at : https://www.tamods.org/docs/doc_srv_api_serverconfig
    -- Time Options
    TimeLimit = 25,
    OvertimeLimit = 10,
    WarmupTime = 20,
    RespawnTime = 1,
    SniperRespawnDelay = 0,
    AmmoPickupLifespan = 30,
    CTFFlagTimeout = 40,
    EndMatchWaitTime = 15,
    
    -- Team Options
    MaxPlayers = 32,
    TeamAssignType = TeamAssignTypes.Unbalanced, -- TeamAssignTypes.Unbalanced and TeamAssignTypes.AutoAssign are the other assign types.
    NakedSpawn = false,
    AutoBalanceTeams = false,

    -- Scoring Options
    CTFCapLimit = 7,
    TDMKillLimit = 100,
    ArenaRounds = 1,
    ArenaLives = 50,
    RabbitScoreLimit = 60,
    CaHScoreLimit = 50,
    CTFBlitzAllFlagsMove = false,
    TeamCredits = false,

    -- Friendly Fire
    FriendlyFire = true,
    FriendlyFireMultiplier = 1.0,
    FriendlyFireDamageKickLimit = 0,
    FriendlyFireKillKickLimit = 0,
    BaseDestructionKickLimit = 0,

    -- Vehicles
    VehicleHealthMultiplier = 1.0,
    GravCycleLimit = 4,
    ShrikeLimit = 2,
    BeowulfLimit = 2,
    VehiclesEarnedWithCredits = false,
    GravCycleCost = 500,
    ShrikeCost = 4000,
    BeowulfCost = 2500,
    GravCycleSpawnTime = 30,
    ShrikeSpawnTime = 120,
    BeowulfSpawnTime = 120,
    GravCycleEjectionSeat = true,
    BeowulfEjectionSeat = false,
    ShrikeEjectionSeat = false,

    -- Base Options
    BaseAssets = true,
    BaseUpgrades = true,
    PoweredDeployables = true,
    GeneratorRegen = true,
    GeneratorDestroyable = true,
    BaseAssetFriendlyFire = false,
    DeployableFriendlyFire = false,

    -- Call-In Options
    EnableInventoryCallIn = false,
    InventoryCallInCost = 2000,
    InventoryCallInBuildUpTime = 2.0,
    InventoryCallInCooldownTime = 10.0,
    InventoryCallInBlocksPlayers = true,
    InventoryStationsRestoreEnergy = true,

    -- Call-In Placement Options
    InventoryCallInMapCollisionCheckExtent = 100.0,
    InventoryCallInStationCollisionCheckExtent = 700.0,
    InventoryCallInTerrainMaxAngle = 70.0,
    InventoryCallInMeshMaxAngle = 40.0,

    -- Gameplay Options
    EnergyMultiplier = 1.0,
    AoESizeMultiplier = 1.0,
    AoEDamageMultiplier = 1.0,
    SkiingEnabled = true,
    UseGOTYShieldPack = false,
    UseGOTYBXTCharging = false,

    -- Flag Drag Options
    FlagDragLight = 0,
    FlagDragMedium = 0,
    FlagDragHeavy = 0,
    FlagDragDeceleration = 0,
}


-- Function to set or override any settings
function applyServerSettings(settings)
    for setting, value in pairs(settings) do
        ServerSettings[setting] = value
    end
end

-- Apply custom settings at preset load time
applyServerSettings(serverSettings)