local vehicleDef = {
    properties = {
        --TODO Correct to default OOTB values.
        --[[

        -- Vehicle Base Stats
        HealthPool = 1200,
        EnergyPool = 0.0,
        EnergyRechargeRate = 0.0,
        IsArmored = true,
        IsHomingTarget = true,
        CanCarryFlagAsPilot = false,
        CanCarryFlagAsPassenger = true,
        TimeBeforeSelfDestruct = 30.0,

        --TODO Add missing values below.
        -- Vehicle Movement

        -- Vehicle Self Damage

        -- Vehicle Ramming 

        -- Vehicle Weapon Ammo

        -- Vehicle Weapon Reloading and Firing

        
        ]]
    },
}

local vehicleWeaponsDef = {
    {
        name="Grav Cycle",
        changes={
            --TODO Correct to default OOTB values
            --[[
            -- Damage
            Damage = 0.0,       
            DirectHitMultiplier = 1.0,
            EnergyDrain = 0.0,
            DamageAgainstArmorMultiplier = 0.0,
            DamageAgainstGeneratorMultiplier = 0.0,
            DamageAgainstBaseTurretMultiplier = 0.0,
            DamageAgainstBaseSensorMultiplier = 0.0,
            DamageAgainstGravCycleMultiplier = 0.0,
            DamageAgainstBeowulfMultiplier = 0.0,
            DamageAgainstShrikeMultiplier = 0.0,

            -- Impulse
            ImpactMomentum = 0.0,

            -- Falloff
            ExplosiveRadius = 0.0,
            BulletDamageRange = 0.0,
            MaxDamageRangeProportion = 0.0,
            MinDamageRangeProportion = 0.0,
            MinDamageProportion = 0.0,

            --TODO Add missing values below.
            -- Miscellaneous

            -- Vehicle Weapon Projectiles

            -- Vehicle Weapon Accuracy
            ]]
        },
    }
}

return {vehicle=vehicleDef, weapons=vehicleWeaponsDef}