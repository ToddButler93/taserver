local classDef = {
    ootbClass="Medium",
    armorClass="Medium",
    weapons={
        -- Impact
        "Spinfusor",
        "Thumper",
        "Thumper DX",
        "Twinfusor",
        -- Timed
        "Arx Buster",
        "Grenade Launcher",
        -- Specialty
        "Improved Repair Tool",
        -- TODO Confirm: "ELF Projector",
        "Honorfusor",
        -- Bullet
        "Assault Rifle",
        "NJ4 SMG",
        "NJ5 SMG",
        "Plasma Gun",
        "Nova Blaster",
        "Eagle",
        -- Short Range
        "Sawed Off Shotgun",
        "Flak Cannon",
    },
    beltItems={
        "EMP Grenade",
        "Blackout Grenade",
        "AP Grenades",
        "Motion Sensor",
        "Cluster Grenade",
    },
    packs={
        "Light Turret",
        -- TODO Confirm: "Drop Station",
        "Shield Pack",
        "Utility Pack",
        "Jammer Pack",
        "EXR Turret",
    },
    skins={
        "Soldier",
        "Technician",
        "Raider",
        "Griever",
        "Mercenary",
        "Specialist",
        "Synthrall",
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

        ThrustPackCostReduction = 0.0,
        ThrustPackPowerBuff = 0.0,
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
        name="Spinfusor", 
        changes={
            -- Ammo
            -- ClipAmmo = 0, -- Clip Weapons
            -- SpareAmmo = 0,
            -- AmmoPerShot = 0,
            -- LowAmmoCutoff = 0,
            
            -- -- Reloading and Firing
            -- ReloadTime = 1.0,-- Shot Weapons
            -- FireInterval = 1.0, -- Shot Weapons
            -- HoldToFire = false,
            -- CanZoom = false,
            -- -- ReloadSingle = false, -- Clip Weapons
            -- ReloadApplicationProportion = 1.0, -- Shot Weapons
            -- BurstShotCount = 1, -- Light Assault Rifle
            -- BurstShotRefireTime = 1.0, -- Light Assault Rifle
            -- SpinupTime = 1.0, --	Chain gun/cannon, X1 LMG
            -- ShotgunShotCount = 1, -- Shotguns
            -- ShotEnergyCost = 1.0, -- Shot Weapons

            -- -- Damage and Impact
            -- Damage = 0.0,
            -- DirectHitMultiplier = 1.0, -- Projectile weapons
            -- EnergyDrain = 1.0,
            -- DamageAgainstArmorMultiplier = 1.0,
            -- DamageAgainstGeneratorMultiplier = 1.0,
            -- DamageAgainstBaseTurretMultiplier = 1.0,
            -- DamageAgainstBaseSensorMultiplier = 1.0,
            -- DamageAgainstGravCycleMultiplier = 1.0,
            -- DamageAgainstBeowulfMultiplier = 1.0,
            -- DamageAgainstShrikeMultiplier = 1.0,

            -- -- Impulse
            -- ImpactMomentum = 1.0, -- Projectile weapons
            -- SelfImpactMomentumMultiplier = 1.0, -- Projectile weapons
            -- SelfImpactExtraZMomentum = 1.0, -- Projectile weapons

            -- -- Falloff
            -- ExplosiveRadius = 1.0, -- Explosive weapons
            -- BulletDamageRange = 1.0, -- Bullet Weapons
            -- MaxDamageRangeProportion = 0.7,
            -- MinDamageRangeProportion = 0.3,
            -- MinDamageProportion = 1.0,

            -- -- Sniper Rifles
            -- PhaseDamagePerEnergy = 1.0, -- Phase Rifle, SAP20
            -- PhaseMaxConsumedEnergy = 1.0, -- Phase Rifle, SAP20
            -- BXTChargeMaxDamage = 1.0, -- BXT1
            -- BXTChargeTime = 1.0, -- BXT1
            -- BXTChargeMultCoefficient = 1.0, -- BXT1
            -- BXTChargeDivCoefficient = 1.0, -- BXT1

            -- -- Miscellaneous
            -- DoesImpulseFlag = true, -- Explosive weapons
            -- DoesGibOnKill = true,
            -- GibImpulseRadius = 1.0,
            -- GibStrength = 1.0,

            -- -- Projectile and Tracer
            -- ProjectileSpeed = 1.0, -- Projectile weapons
            -- ProjectileMaxSpeed = 1.0, -- Projectile weapons
            -- CollisionSize = 1.0, -- Projectile weapons
            -- ProjectileInheritance = 1.0, -- Projectile weapons
            -- ProjectileLifespan = 1.0, -- Projectile weapons
            -- ProjectileGravity = 1.0, -- Projectile weapons
            -- ProjectileTerminalVelocity = 1.0, -- Projectile weapons
            -- ProjectileBounceDamping = 1.0, -- Projectile weapons
            -- HitscanRange = 1.0, -- Hitscan weapons
            -- FireOffsetX = 0.0,
            -- FireOffsetY = 0.0,
            -- FireOffsetZ = 0.0,

            -- -- Fractal Grenades
            -- FractalDuration = 1.0, -- Fractals
            -- FractalShardInterval = 1.0, -- Fractals
            -- FractalAscentTime = 1.0, -- Fractals
            -- FractalAscentHeight = 1.0, -- Fractals
            -- FractalShardDistance = 1.0, -- Fractals
            -- FractalShardHeight = 1.0, -- Fractals
            -- FractalShardDamage = 1.0, -- Fractals
            -- FractalShardDamageRadius = 1.0, -- Fractals

            -- -- Melee
            -- MeleeDamageRadius = 1.0, -- Melee
            -- MeleeConeAngle = 1.0, -- Melee

            -- -- Accuracy
            -- Accuracy = 1.0, 
            -- AccuracyLossOnShot = 1.0,
            -- AccuracyLossOnJump = 1.0,
            -- AccuracyLossMax = 1.0,
            -- AccuracyCorrectionRate = 1.0,
            -- ShotgunUseGOTYSpread = false,

            -- -- Grenades and Thrown Weapons
            -- ThrowDelay = 1.0, -- Thrown weapons
            -- ThrowPullPinTime = 1.0, -- Thrown weapons
            -- StuckDamageMultiplier = 1.0, -- Sticky weapons
            -- StuckMomentumMultiplier = 1.0, -- Sticky weapons
            -- FuseTimer = 1.0, -- Thrown weapons
            -- ExplodeOnContact = false, -- Thrown weapons
            -- ExplodeOnFuse = false, -- Thrown weapons
            -- MustBounceBeforeExplode = false, -- Thrown weapons

            -- -- Packs
            -- PackSustainedEnergyCost = 1.0, -- Active Packs
            -- ThrustPackEnergyCost = 1.0, -- Thrust Pack
            -- ThrustPackImpulse = 1.0, -- Thrust Pack
            -- ThrustPackSidewaysImpulse = 1.0, -- Thrust Pack
            -- ThrustPackMinVerticalImpulse = 1.0, -- Thrust Pack
            -- ThrustPackCooldownTime = 1.0, -- Thrust Pack
            -- ThrustPackSpeedRangeStart = 1.0, -- Thrust Pack
            -- ThrustPackSpeedRangeEnd = 1.0, -- Thrust Pack
            -- ThrustPackSpeedCapReduction = 1.0, -- Thrust Pack
            -- ShieldPackEnergyCostPerDamagePoint = 1.0, -- Shield Pack
            -- JammerPackRange = 1.0, -- Jammer Pack
            -- PackBuffAmount = 1.0, -- Active Packs
            -- StealthPackMaxSpeed = 1.0, -- Stealth  Pack

            -- -- Deployables
            -- DeployableRange = 1.0, -- Deployables	
            -- DeployableMaxAllowed = 1, -- Deployables	
            -- DeployableMinProximity = 1.0, -- Deployables	
            -- TurretTimeToAcquireTarget = 1.0, -- Deployable Turrts
            -- TurretCanTargetVehicle = true, -- Deployable Turrts
            -- ForcefieldMinDamage = 1.0, -- Forcefield
            -- ForcefieldMaxDamage = 1.0, -- Forcefield
            -- ForcefieldMinDamageSpeed = 1.0, -- Forcefield
            -- ForcefieldMaxDamageSpeed = 1.0, -- Forcefield

            -- -- Mines
            -- MineDeployTime = 1.0, -- Mines
            -- MineMaxAllowed = 1, -- Mines
            -- MineCollisionCylinderRadius = 1.0, -- Mines
            -- MineCollisionCylinderHeight = 1.0, -- Mines
            -- ClaymoreDetonationAngle = 1.0, -- Claymore Mines
            -- PrismMineTripDistance = 1.0, -- Prism Mines

        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Thumper", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Thumper DX", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Twinfusor", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Arx Buster", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Grenade Launcher", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Improved Repair Tool", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Honorfusor", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Assault Rifle", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="NJ4 SMG", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="NJ5 SMG", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Plasma Gun", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Nova Blaster", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Eagle", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Sawed Off Shotgun", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Flak Cannon", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    

    -------------- Belt Items --------------

    {
        name="EMP Grenade", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Blackout Grenade", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="AP Grenades", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Motion Sensor", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Cluster Grenade", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },


    -------------- Packs --------------

    {
        name="Light Turret", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Shield Pack", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Utility Pack", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="Jammer Pack", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
    {
        name="EXR Turret", 
        changes={
            -- TODO Add Property Changes.
        },
        valueMods={
            -- TODO Add Value mods.
        },
    },
}



return {items=itemDefs, class=classDef}