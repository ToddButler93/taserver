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
        --[[
        SelfDamageReduction = 0.0,
        IgnoreGrenadeEffectsOnSelf = false,
        ]]

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
        
        PotentialEnergy = true,
        PotentialEnergyDamageTransferBuff = 100.0,
        PotentialEnergyOnFallDamage = false,
        

        -- Quick Draw
        
        QuickDraw = 0.5,
        QuickDrawBelt = 0.25,
        

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
        
        FallDamageReduction = 1.0,
        -- RunoverDamageReduction = 1.0,
        

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
        
        SurvivalistHealth = 500.0,
        SurvivalistEnergy = 500.0,

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

        ThrustPackCostReduction = 0.0,
        ]]
        -- ThrustPackPowerBuff = 2.0,
        --[[
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
            SpareAmmo = 999,
            Damage = 100,
            DirectHitMultiplier = 3,
            Accuracy = 0.9,
            ReloadTime = 2,
            ClipAmmo = 10,
            FireInterval = 0.001,
            ProjectileLifespan = 15,
            DoesGibOnKill = true,
            GibStrength = 100.0,
            ReloadSingle = false,
            ImpactMomentum = 20000,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Bolt Launcher", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 999,
            DirectHitMultiplier = 1.7,
            ProjectileGravity = -0.4,
            ProjectileLifespan = 10,
            MustBounceBeforeExplode = true,
            ExplodeOnContact = true,
            FuseTimer = 0.2,
            ProjectileBounceDamping = 0.0,
            DoesGibOnKill = true,
            GibStrength = 100.0,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Light Twinfusor", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 69,
            AmmoPerShot = 0,
            Damage = 1.0,
            DirectHitMultiplier = 250,
            ProjectileLifespan = 10,
            DoesGibOnKill = true,
            GibStrength = 100.0,
            ProjectileInheritance = 1.0,
            ImpactMomentum = 1.0,
            SelfImpactMomentumMultiplier = 85000,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Blinksfusor", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 999,
            Damage = 1.0,
            DirectHitMultiplier = 1300,
            ProjectileLifespan = 10,
            DoesGibOnKill = true,
            GibStrength = 300.0,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Light Grenade Launcher", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 420,
            AmmoPerShot = 0,
            SpareAmmo = 999,
            Damage = 150.0,
            ProjectileLifespan = 10,
            DoesGibOnKill = true,
            GibStrength = 100.0,
            ClipAmmo = 69,
            Accuracy = 0.9, 
            FireInterval = 0.15,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Jackal", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 999,
            ClipAmmo = 69,
            Damage = 69.0,
            CollisionSize = 100000.0,
            FireInterval = 0.1,

        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="BXT1", 
        changes={
            -- TODO Add Property Changes.
            AmmoPerShot = 0,
            ClipAmmo = 69,
            SpareAmmo = 420,
            Damage = 200,
            DirectHitMultiplier = -5,
            EnergyDrain = -200,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Phase Rifle", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 999,
            DoesGibOnKill = true,
            GibStrength = 1.0,
            EnergyDrain = 100.0,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Falcon", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 420,
            ClipAmmo = 69,
            AmmoPerShot = 0,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Light Assault Rifle", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 420,
            ClipAmmo = 69,
            AmmoPerShot = 0,
            Damage = 69,
            ImpactMomentum = 100000.0,
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
            MinDamageProportion = 10.0,
            ProjectileLifespan = 10,
            SpareAmmo = 999,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Shotgun", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 999,
            ImpactMomentum = 30000.0,
            ShotgunShotCount = 20,
            Damage = 1,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Shocklance", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 999,
            ClipAmmo = 50,
            FireInterval = 0.05,
            Damage = 100,
            HoldToFire = true,
            HitscanRange = 30000,
            EnergyDrain = 10,
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
            SpareAmmo = 999,
            Damage = 3000.0,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Claymore Mines", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 999,
            MineDeployTime = 0.1,
            MineMaxAllowed = 15,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Prism Mines", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 999,
            MineDeployTime = 0.1,
            MineMaxAllowed = 15,
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Explosive Nitron", 
        changes={
            -- TODO Add Property Changes.
            SpareAmmo = 999,
            ImpactMomentum = 300000.0,
            SelfImpactMomentumMultiplier = 0.5,
            Damage = 69.0,
            MinDamageProportion = 1.0,
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
            SpareAmmo = 1,
            Damage = 6900.0,
            FuseTimer = 0.001,
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
            MassBuff = -0.75,
            EnergyRegenRateBuff = 500,
            SelfDamageReduction = 0.95,
        },
    },
    {
        name="Stealth Pack", 
        changes={
            -- TODO Add Property Changes.
            PackSustainedEnergyCost = 0,
        },
        valueMods={
            -- TODO Add Value mods.
            WalkSpeedBuff = 3,
            EnergyRegenRateBuff = -0.9,
        },
    },
    {
        name="Thrust Pack", 
        changes={
            -- TODO Add Property Changes.
            ThrustPackEnergyCost = 25, -- Thrust Pack
            ThrustPackMinVerticalImpulse = -9999999.0, -- Thrust Pack
            ThrustPackCooldownTime = 0.1, -- Thrust Pack
        },
        valueMods={
            -- TODO Add Value mods.
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