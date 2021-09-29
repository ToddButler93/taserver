local classDef = {
    ootbClass="Light",
    armorClass="Light",
    weapons={
        -- Impact
        "Light Spinfusor",
        "Bolt Launcher",
        "Light Twinfusor",
        "Blinksfusor",
        -- Timed
        "Light Grenade Launcher",
        "Jackal",
        -- Specialty
        "BXT1",
        "Phase Rifle",
        -- Bullet
        "Falcon",
        "Light Assault Rifle",
        "Sparrow",
        "Throwing Knives",
        -- Short Range
        "Shotgun",
        "Shocklance",
    },
    beltItems={
        "Impact Nitron",
        "Sticky Grenades",
        "Claymore Mines",
        "Prism Mines",
        "Explosive Nitron",
        "Chaff Grenades",
        "T5 Grenades",
    },
    packs={
        "Light Energy Pack",
        "Stealth Pack",
        "Thrust Pack",
        "Light Utility Pack",
    },
    skins={
        "Infiltrator",
        "Sentinel",
        "Mercenary",
        "Assassin",
        "Specter",
        "Pathfinder",
        "Freerunner",
    },
    properties={
        --TODO Correct to default OOTB values.
        --[[
        -- Base Stats
        HealthPool = 1.0,

        EnergyPool = 110.0,
        EnergyRechargeRate = 0.0,
        JetEnergyCost = 0.0,
        InitialJetEnergyCost = 0.0,

        RegenTime = 0.0,
        RegenRate = 0.0,
        LowHealthThreshold = 0.0,


        -- Movement and Skiing
        Mass = 0.0,
        GroundSpeed = 0.0,
        MaxSkiingSpeed = 0.0,
        MaxSkiControl = 0.0,

        SkiControlPeakSpeed = 0.0,
        SkiControlVariance = 0.0,
        SkiSlopeGravity = 0.0,

        VehicleSpeedInheritance = 0.0,

        MomentumDampeningEnabled = true,
        MomentumDampeningThreshold = 0.0,
        MomentumDampeningProportion = 0.0,

        MaxHealthRegenSpeed = -1.0,


        -- Jetting and Air Control
        MaxJettingSpeed = 0.0,
        JetAcceleration = 0.0,
        InitialJetAccelerationMultiplier = 0.0,
        InitialJetLength = 0.0,
        ForwardJetProportion = 0.0,
        JetBoostMaxGroundSpeed = 0.0,

        DefaultAirControl = 0.0,
        AirControlMaxMultiplier = 0.0,
        AirControlMinMultiplier = 0.0,
        AirControlReductionRangeMax = 0.0,
        AirControlReductionRangeMin = 0.0,


        -- Collision
        CollisionCylinderRadius = 0.0,
        CollisionCylinderHeight = 0.0,
        ]]
    },
    armorValueMods={
        --TODO Correct to default perk values, keep individually commented out.

        -- Perk Effects
        -- Close Combat
        --[[
        MeleeDamageReduction = 0.0,
        BackstabMeleeBuff = 0.0,
        ]]

        -- Determination
        --[[
        Determination = false,
        ]]

        -- Egocentric
        SelfDamageReduction = 1.0,
        IgnoreGrenadeEffectsOnSelf = true,

        -- Lightweight
        --[[
        MassBuff = 0.0,
        RegenTimeBuff = 0.0,
        ]]

        -- Looter
        --[[
        AmmoPickupBuff = 0.0,
        BeltPickupBuff = 0,
        ]]

        -- Mechanic
        --[[
        RepairToolDamagesEnemyObjectives = false,
        RepairRateBuff = 0.0,
        VehiclePassengerDamageReductionBuff = 0.0,
        ]]

        -- Pilot
        --[[
        VehicleHealthBuff = 0.0,
        EjectionSeat = false,
        ]]

        -- Potential Energy
        --[[
        PotentialEnergy = false,
        PotentialEnergyDamageTransferBuff = 0.0,
        PotentialEnergyOnFallDamage = false,
        ]]

        -- Quick Draw
        --[[
        QuickDraw = 0.0,
        QuickDrawBelt = 0.0,
        ]]

        -- Rage
        --[[
        Rage = false,
        RageTime = 0.0,
        RageEnergyRegen = 0.0,
        RageHealthRestoration = 0.0,
        RageMassChange = 0.0,
        ]]

        -- Reach
        --[[
        Reach = false,
        ReachTier = 0,
        ReachOnPickups = false,
        ]]

        -- Safe Fall
        --[[
        FallDamageReduction = 0.0,
        RunoverDamageReduction = 0.0,
        ]]

        -- Safety Third
        --[[
        ExtraBeltAmmo = 0,
        BeltDamageRadiusBuff = 0.0,
        ExtraMines = 0,
        ]]

        -- Sonic Punch
        --[[
        SonicPunch = true,
        SonicPunchRange = 0.0,
        SonicPunchKnockback = 0.0,
        SonicPunchFlagDrop = false,
        ]]
        
        -- Stealthy
        --[[
        SensorDetectionReduction = 0.0,
        AcquisitionTimeByEnemyTurretsBuff = 0.0,
        ]]
        

        -- Ultra Capacitor I/Super Capacitor
        --[[
        EnergyBuff = 0.0,
        ]]
        

        -- Super Heavy
        --[[
        SuperHeavy = true,
        MassBuff = 0.0,
        ]]
        

        -- Survivalist
        --[[
        SurvivalistHealth = 0.0,
        SurvivalistEnergy = 0.0,
        ]]
        

        -- Ultra Capacitor II/Ultra Capacitor
        --[[
        EnergyBuff = 0.0,
        ]]
        

        -- Wheel Deal
        --[[
        VehicleEnergyBuff = 0.0,
        ]]
        
        -- Miscellaneous ValueMods
        --[[
        HealthBuff = 0.0,
        HealthRegenTimeBuff = 0.0,
        HealthRegenRateBuff = 0.0,

        EnergyRegenTimeBuff = 0.0,
        EnergyRegenRateBuff = 0.0,

        WalkSpeedBuff = 0.0,
        RadarLink = false,
        BuildTimeBuff = 0.0,
        DeployableRepairRateBuff = 0.0,
        StickyHands = false,
        EnergyDrainBuff = 0.0,
        TrapDetection = false,


        ShieldPackBuff = 0.0,
        JammerPackRadiusBuff = 0.0,

        DeployableHealthBuff = 0.0,
        DeployableRangeBuff = 0.0,
        ExtraDeployables = 0,

        ShocklanceEnergyCost = 0.0,
        StealthPackEntryTimeReduction = 0.0,
        StealthPackPulseIgnoreTime = 0.0,
        BlackoutLengthReduction = 0.0,
        ExtraAmmoSpawnBuff = 0.0,

        MaxSkiSpeed = 0.0,
        TerminalSkiSpeed = 0.0,
        MaxJetSpeed = 0.0,
        TerminalJetSpeed = 0.0,
        MaxSkiControl = 0.0,
        PeakSkiControlSpeed = 0.0,
        SkiControlVariance = 0.0,
        StoppingDistanceBuff = 0.0,
        ]]
    }
}

local itemDefs = {
    -------------- Weapons --------------

    {
        name="Light Spinfusor", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Bolt Launcher", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Light Twinfusor", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Blinksfusor", 
        changes={
            Damage = 0.0,
            DirectHitMultiplier = 1.0,
            SpareAmmo = 69,
            ReloadSingle = false,
            ProjectileLifespan = 10,
            -- TODO Add Property Changes.
        },
        valueMods={
        },
    },
    {
        name="Light Grenade Launcher", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Jackal", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="BXT1", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Phase Rifle", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Falcon", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Light Assault Rifle", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Sparrow", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Throwing Knives", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Shotgun", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Shocklance", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },


    -------------- Belt Items --------------
        
    {
        name="Impact Nitron", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Sticky Grenades", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Claymore Mines", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Prism Mines", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Explosive Nitron", 
        changes={
            SpareAmmo = 999,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Chaff Grenades", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="T5 Grenades", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },


    -------------- Packs --------------
    
    {
        name="Light Energy Pack", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Stealth Pack", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Thrust Pack", 
        changes={
            ThrustPackEnergyCost = 0.2, -- Thrust Pack
            --ThrustPackImpulse = 1.0, -- Thrust Pack
            --ThrustPackSidewaysImpulse = 1.0, -- Thrust Pack
            ThrustPackMinVerticalImpulse = -9999999.0, -- Thrust Pack
            ThrustPackCooldownTime = 0.1, -- Thrust Pack
            --ThrustPackSpeedRangeStart = 1.0, -- Thrust Pack
            --ThrustPackSpeedRangeEnd = 1.0, -- Thrust Pack
            --ThrustPackSpeedCapReduction = 1.0, -- Thrust Pack
        },
        valueMods={
            -- TODO Add Value mods.        
            ThrustPackCostReduction = 0.0,
            ThrustPackPowerBuff = 2.0,
        },
    },
    {
        name="Light Utility Pack", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
}



return {items=itemDefs, class=classDef}