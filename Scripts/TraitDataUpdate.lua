TraitDataUpdate = 
{
	AthenaSecondaryTrait =
	{
		Icon = "Boon_Athena_00",
		InheritFrom = { "ShopTier1Trait" },
		God = "Athena",
		Slot = "Secondary",
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier =
			{
				BaseValue = 1.6,
				SourceIsMultiplier = true,
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
			},
			ValidWeapons = WeaponSets.HeroSecondaryWeapons,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamage",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{
			{
				WeaponNames = { "SpearWeaponThrow", "SpearWeaponThrowReturn", "SwordParry", "SwordAOEWave", "ShieldThrow", "BowSplitShot", "GunGrenadeToss", "FistWeaponSpecial", "FistWeaponSpecialDash" },
				ProjectileProperty = "DeflectProjectiles",
				ChangeValue = true,
				ChangeType = "Absolute"
			},
			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "ProjectileDefenseRadius",
				ChangeValue = 75,
				ChangeType = "Absolute"
			},
			{
				WeaponName = "SpearWeaponThrowReturn",
				ProjectileProperty = "ProjectileDefenseRadius",
				ChangeValue = 75,
				ChangeType = "Absolute"
			},
			{
				WeaponName = "ShieldThrow",
				ProjectileProperty = "ProjectileDefenseRadius",
				ChangeValue = 75,
				ChangeType = "Absolute"
			},
			{
				WeaponName = "GunGrenadeToss",
				ProjectileProperty = "ProjectileDefenseRadius",
				ChangeValue = 450,
				ChangeType = "Absolute"
			},

			--[[
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordParrySelfReflection",
				EffectProperty = "Active",
				ChangeValue = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordParrySelfInvulnerable",
				EffectProperty = "Active",
				ChangeValue = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordParrySelfReflectRange",
				EffectProperty = "Active",
				ChangeValue = true,
			},
			]]

			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "RadialNovaSwordParry-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "GroupName",
				ChangeValue = "Standing",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "BowSplitShot",
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Athena-SplitShot",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowSplitShot",
				WeaponProperty = "MinChargeStartFx",
				ChangeValue = "BowCharge-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", },
				ProjectileName = "ShieldThrow",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldSwipe-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrowDash" },
				ProjectileName = "ShieldThrowDash",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldSwipe-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "Graphic",
				ChangeValue = "ProjectileShield-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldRushBonusProjectileTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt01-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldLoadAmmoTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt03-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				ProjectileProperty = "Graphic",
				WeaponName = "ShieldThrow",
				ChangeValue = "ProjectileShieldAlt02-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponName = "ShieldThrow",
				ProjectileName = "ShieldThrow",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldThrowTrailMirage-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "GunGrenadeToss",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionAthena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "SpearTeleportTrait",
				WeaponName = "SpearRushWeapon",
				ProjectileName = "SpearRushWeapon",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "SpearRushTrailFx-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalAthena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "Graphic",
				ChangeValue = "GunGrenadeLuciferOrb-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "GroupName",
				ChangeValue = "FX_Standing_Add",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombWeapon" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionAthena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombImmolation" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "LuciferOrbAoE-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},


			{
				TraitName = "BowMarkHomingTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Athena-SplitShot-Alt01",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowLoadAmmoTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Athena-SplitShot-Alt02",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecial" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercut-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercutSpecial-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistTeleportSpecialTrait",
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalAthena_FlashKick",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		},
		EnemyPropertyChanges =
		{
			{
				TraitName = "GunLoadedGrenadeTrait",
				LegalUnits = { "GunBombUnit" },
				ThingProperty = "Graphic",
				ChangeValue = "LuciferBomb-Athena",
				ChangeType = "Absolute",
			},
		}
	},
	PoseidonSecondaryTrait =
	{
		InheritFrom = { "ShopTier1Trait" },
		God = "Poseidon",
		Slot = "Secondary",
		Icon = "Boon_Poseidon_00",
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier =
			{
				BaseValue = 1.7,
				SourceIsMultiplier = true,
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
			},
			ValidWeapons = WeaponSets.HeroSecondaryWeapons,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamage",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{
			{
				WeaponNames = { "SpearWeaponThrow" },
				ProjectileProperty = "ImpactVelocity",
				ChangeType = "Add",
				BaseMin = 2300,
				BaseMax = 2300,
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
				ExcludeLinked = true,
				IgnoreRarity = true,
			},
			{
				WeaponNames = { "SpearWeaponThrow" },
				ProjectileProperty = "ImpactVelocityCap",
				ChangeType = "Add",
				BaseMin = 2300,
				BaseMax = 2300,
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
				ExcludeLinked = true,
				IgnoreRarity = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "ImpactVelocity",
				ChangeType = "Add",
				BaseMin = 1800,
				BaseMax = 1800,
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
				ExcludeLinked = true,
				IgnoreRarity = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "ImpactVelocityCap",
				ChangeType = "Add",
				BaseMin = 1800,
				BaseMax = 1800,
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
				ExcludeLinked = true,
				IgnoreRarity = true,
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "ImpactVelocity",
				ChangeType = "Add",
				BaseMin = 1200,
				BaseMax = 1200,
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
				ExcludeLinked = true,
				IgnoreRarity = true,
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "ImpactVelocityCap",
				ChangeType = "Add",
				BaseMin = 1200,
				BaseMax = 1200,
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
				ExcludeLinked = true,
				IgnoreRarity = true,
			},
			{
				WeaponNames = { "GunGrenadeToss", "FistWeaponSpecial", "FistWeaponSpecialDash"  },
				ExcludeProjectileName = "GunGrenadeSelfDamage",
				ProjectileProperty = "ImpactVelocity",
				ChangeType = "Add",
				BaseMin = 2500,
				BaseMax = 2500,
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
				ExcludeLinked = true,
				IgnoreRarity = true,
			},
			{
				WeaponNames = { "GunGrenadeToss", "FistWeaponSpecial", "FistWeaponSpecialDash"  },
				ExcludeProjectileName = "GunGrenadeSelfDamage",
				ProjectileProperty = "ImpactVelocityCap",
				ChangeType = "Add",
				BaseMin = 2500,
				BaseMax = 2500,
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
				ExcludeLinked = true,
				IgnoreRarity = true,
			},
			{
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "ImpactVelocity",
				ChangeType = "Add",
				BaseMin = 1100,
				BaseMax = 1100,
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
				ExcludeLinked = true,
				IgnoreRarity = true,
			},
			{
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "ImpactVelocityCap",
				ChangeType = "Add",
				BaseMin = 1100,
				BaseMax = 1100,
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
				ExcludeLinked = true,
				IgnoreRarity = true,
			},
			{
				WeaponNames = { "GunBombImmolation" },
				ProjectileProperty = "ImpactVelocity",
				ChangeType = "Add",
				BaseMin = 1800,
				BaseMax = 1800,
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
				ExcludeLinked = true,
				IgnoreRarity = true,
			},
			{
				WeaponNames = { "GunBombImmolation" },
				ProjectileProperty = "ImpactVelocityCap",
				ChangeType = "Add",
				BaseMin = 1800,
				BaseMax = 1800,
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
				ExcludeLinked = true,
				IgnoreRarity = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "StartFx",
				ChangeValue = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "FireFx",
				ChangeValue = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "RadialNovaSwordParry-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrowReturn",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "StartFx",
				ChangeValue = "PoseidonSplashNovaSpearThrow",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowSplitShot",
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Poseidon-SplitShot",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow" },
				ProjectileName = "ShieldThrow",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldSwipe-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrowDash" },
				ProjectileName = "ShieldThrowDash",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldSwipe-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeStartFx",
				ChangeValue = "ShieldCharge-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "Graphic",
				ChangeValue = "ProjectileShield-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldRushBonusProjectileTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt01-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldLoadAmmoTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt03-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				ProjectileProperty = "Graphic",
				WeaponName = "ShieldThrow",
				ChangeValue = "ProjectileShieldAlt02-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponName = "ShieldThrow",
				ProjectileName = "ShieldThrow",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldThrowTrailMirage-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "GunGrenadeToss",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionPoseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "SpearTeleportTrait",
				WeaponName = "SpearRushWeapon",
				ProjectileName = "SpearRushWeapon",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "SpearRushTrailFx-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalPoseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "Graphic",
				ChangeValue = "GunGrenadeLuciferOrb-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "GroupName",
				ChangeValue = "FX_Standing_Add",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombWeapon" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionPoseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombImmolation" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "LuciferOrbAoE-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowMarkHomingTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Poseidon-SplitShot-Alt01",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowLoadAmmoTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Poseidon-SplitShot-Alt02",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecial" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercut-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercutSpecial-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistTeleportSpecialTrait",
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalPoseidon_FlashKick",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		},
		EnemyPropertyChanges =
		{
			{
				TraitName = "GunLoadedGrenadeTrait",
				LegalUnits = { "GunBombUnit" },
				ThingProperty = "Graphic",
				ChangeValue = "LuciferBomb-Poseidon",
				ChangeType = "Absolute",
			},
		}
	},
	UnusedWeaponBonusTraitAddGems =
	{
		Frame = "MetaUpgrade",
		Icon = "BonusDarkness_02",
		MetaPointMultiplier = 3,
		GemMultiplier = 3,
		ExtractValues =
		{
			{
				Key = "MetaPointMultiplier",
				ExtractAs = "TooltipBonus",
				Format = "PercentDelta",
			}
		}
	},
	ArtemisWeaponTrait =
	{
		InheritFrom = { "ShopTier1Trait" },
		Icon = "Boon_Artemis_01",
		God = "Artemis",
		Slot = "Melee",
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier =
			{
				BaseValue = 1.25,
				SourceIsMultiplier = true,
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
			},
			ValidWeapons = WeaponSets.HeroPhysicalWeapons,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "DisplayDelta1",
					Format = "PercentDelta",
				},
			}
		},

		PropertyChanges =
		{
			{
				WeaponNames = WeaponSets.HeroPhysicalWeapons,
				ProjectileProperty = "CriticalHitChance",
				BaseValue = 0.15,
				MinMultiplier = 0,
				ChangeType = "Add",
				IdenticalMultiplier =
				{
						Value = -1,
				},
				IgnoreRarity = true,
				ExtractValue =
				{
					ExtractAs = "TooltipCritChance",
					Format = "Percent",
				},
			},
			{
				WeaponName = "SwordWeapon",
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeAFlipped-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeB-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon3",
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeC-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeaponDash",
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeC-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon",
				ProjectileProperty = "StartFx",
				ChangeValue = "SwordSwipeA-Emitter-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				ProjectileProperty = "StartFx",
				ChangeValue = "SwordSwipeA-Emitter-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon3",
				ProjectileProperty = "StartFx",
				ChangeValue = "SwordSwipeC-Emitter-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon3",
				WeaponProperty = "ChargeFx",
				ChangeValue = "ChargeAttack-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeaponDash",
				ProjectileProperty = "StartFx",
				ChangeValue = "SwordSwipeC-Emitter-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeaponDash",
				WeaponProperty = "ChargeFx",
				ChangeValue = "ChargeAttack-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeapon",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrustProjectile-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SpearWeapon2",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrustProjectile-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SpearWeapon3",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrustProjectile-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SpearWeaponDash",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearDashSwipe-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SpearWeaponSpin",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "SpearSwipe360-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponSpin2",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "SpearSwipe360-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponSpin3",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "SpearSwipe360-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowWeapon",
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "BowWeapon",
				WeaponProperty = "MinChargeStartFx",
				ChangeValue = "BowCharge-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowWeaponDash",
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "BowWeaponDash",
				WeaponProperty = "ChargeStartFx",
				ChangeValue = "BowChargeFast-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "ShieldWeapon",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldSwipe-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "ShieldWeaponDash",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldSwipeDash-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "ShieldWeaponRush",
				WeaponProperty = "ChargeStartFx",
				ChangeValue = "ShieldCharge-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "ShieldWeaponRush",
				ProjectileProperty = "Graphic",
				ChangeValue = "ShieldRush3D-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "ShieldWeaponRush",
				ProjectileProperty = "DissipateGraphic",
				ChangeValue = "ShieldRush3D-Out-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "GunWeapon",
				ProjectileProperty = "Graphic",
				ChangeValue = "GunWeaponProjectile-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "GunWeapon",
				WeaponProperty = "FireFx",
				ChangeValue = "GunFire-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "GunWeapon",
				ProjectileProperty = "ImpactFx",
				ChangeValue = "GunWeaponImpact-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "GunWeaponDash",
				ProjectileProperty = "Graphic",
				ChangeValue = "GunWeaponProjectile-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "GunWeaponDash",
				WeaponProperty = "FireFx",
				ChangeValue = "GunFire-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "GunWeaponDash",
				ProjectileProperty = "ImpactFx",
				ChangeValue = "GunWeaponImpact-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "FistWeapon", "FistWeapon2", "FistWeapon3", "FistWeapon4", "FistWeapon5" },
				ProjectileProperty = "Graphic",
				ChangeValue = "FistFxArtemis",
				ChangeType = "Absolute"
			},

			{
				WeaponName = "FistWeaponDash",
				ProjectileProperty = "StartFx",
				ChangeValue = "FistFxSwipeArtemis",
				ChangeType = "Absolute",
			},
			{
				TraitName = "SwordConsecrationTrait",
				WeaponNames = { "SwordWeapon" },
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeC-Artemis-Arthur",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "SwordConsecrationTrait",
				WeaponNames = { "SwordWeapon2" },
				WeaponProperty = "ChargeFx",
				ChangeValue = "ChargeAttack-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "SwordConsecrationTrait",
				WeaponNames = { "SwordWeapon2" },
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeA-Artemis-Arthur",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "SwordConsecrationTrait",
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeAFlipped-Artemis-Arthur",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "SwordConsecrationTrait",
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "ChargeFx",
				ChangeValue = "ChargeAttack-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "SwordConsecrationTrait",
				WeaponNames = { "SwordWeaponDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeC-Artemis-Arthur",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "BowBondTrait",
				WeaponName = "BowWeapon",
				WeaponProperty = "MinChargeStartFx",
				ChangeValue = "BowChargeRama-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "BowBondTrait",
				WeaponName = "BowWeaponDash",
				WeaponProperty = "ChargeStartFx",
				ChangeValue = "BowChargeRamaDash-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "BowBondTrait",
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				ProjectileProperty = "AttachedAnim",
				ChangeValue = "RamaWideShot-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponName = "GunWeapon",
				ProjectileProperty = "Graphic",
				ChangeValue = "GunLaser-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponName = "GunWeapon",
				ProjectileProperty = "AttachedAnim",
				ChangeValue = "GunLaserOriginFlare-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponName = "GunWeapon",
				ProjectileProperty = "TipFx",
				ChangeValue = "GunLaserTipFlare-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponName = "GunWeapon",
				WeaponProperty = "ChargeStartFx",
				ChangeValue = "GunCharge-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponName = "GunWeapon",
				ProjectileProperty = "DissipateGraphic",
				ChangeValue = "GunLaserEnd-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "ShieldLoadAmmoTrait",
				WeaponName = "ShieldWeapon",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "BeowulfShieldSlam-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "BowMarkHomingTrait",
				WeaponNames = { "BowWeapon" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Artemis-Alt01",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowLoadAmmoTrait",
				WeaponNames = { "BowWeapon" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Artemis-Alt02",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "FistWeapon", "FistWeapon3", "FistWeapon5" },
				TraitName = "FistDetonateTrait",
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipe-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeapon2", "FistWeapon4" },
				TraitName = "FistDetonateTrait",
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeFlipped-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeapon", "FistWeapon2", "FistWeapon3", "FistWeapon4", "FistWeapon5" },
				TraitName = "FistDetonateTrait",
				ProjectileProperty = "Graphic",
				ChangeValue = "null",
				ChangeType = "Absolute"
			},
			{
				WeaponNames = { "FistWeaponDash" },
				ProjectileProperty = "StartFx",
				ChangeValue = "ClawSwipeFlippedDash-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		},
	},
	ArtemisSecondaryTrait =
	{
		InheritFrom = { "ShopTier1Trait" },
		Icon = "Boon_Artemis_00",
		God = "Artemis",
		Slot = "Secondary",
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier =
			{
				BaseValue = 1.5,
				SourceIsMultiplier = true,
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
			},
			ValidWeapons = WeaponSets.HeroSecondaryWeapons,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "DisplayDelta1",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{
			{
				WeaponNames = WeaponSets.HeroSecondaryWeapons,
				ProjectileProperty = "CriticalHitChance",
				BaseValue = 0.25,
				MinMultiplier = 0,
				IgnoreRarity = true,
				ChangeType = "Add",
				IdenticalMultiplier =
				{
						Value = -1,
				},
				ExtractValue =
				{
					ExtractAs = "TooltipCritChance",
					Format = "Percent",
				},
			},

			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "RadialNovaSwordParry-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrowReturn",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "StartFx",
				ChangeValue = "ArtemisSpearThrowStartFx",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowSplitShot",
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Artemis-SplitShot",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowSplitShot",
				WeaponProperty = "MinChargeStartFx",
				ChangeValue = "BowCharge-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileName = "ShieldThrow",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldSwipe-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrowDash" },
				ProjectileName = "ShieldThrowDash",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldSwipe-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeStartFx",
				ChangeValue = "ShieldCharge-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "GunGrenadeToss",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionArtemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "Graphic",
				ChangeValue = "ProjectileShield-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldRushBonusProjectileTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt01-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldLoadAmmoTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt03-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				ProjectileProperty = "Graphic",
				WeaponName = "ShieldThrow",
				ChangeValue = "ProjectileShieldAlt02-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponName = "ShieldThrow",
				ProjectileName = "ShieldThrow",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldThrowTrailMirage-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "GunGrenadeToss",
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeAFlipped-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "GunGrenadeToss",
				ProjectileProperty = "StartFx",
				ChangeValue = "SwordSwipeA-Emitter-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "SpearTeleportTrait",
				WeaponName = "SpearRushWeapon",
				ProjectileName = "SpearRushWeapon",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "SpearRushTrailFx-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalArtemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "Graphic",
				ChangeValue = "GunGrenadeLuciferOrb-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "GroupName",
				ChangeValue = "FX_Standing_Add",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombWeapon" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionArtemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponName = "GunGrenadeToss",
				ProjectileProperty = "StartFx",
				ChangeValue = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponName = "GunGrenadeToss",
				WeaponProperty = "FireFx",
				ChangeValue = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombImmolation" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "LuciferOrbAoE-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowMarkHomingTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Artemis-SplitShot-Alt01",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowLoadAmmoTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Artemis-SplitShot-Alt02",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecial" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercut-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercutSpecial-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistTeleportSpecialTrait",
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalArtemis_FlashKick",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		},
		EnemyPropertyChanges =
		{
			{
				TraitName = "GunLoadedGrenadeTrait",
				LegalUnits = { "GunBombUnit" },
				ThingProperty = "Graphic",
				ChangeValue = "LuciferBomb-Artemis",
				ChangeType = "Absolute",
			},
		},
	},
	CritBonusTrait =
	{
		InheritFrom = { "ShopTier1Trait" },
		Icon = "Boon_Artemis_08",
		RarityLevels =
		{
			Common =
			{
				MinMultiplier = 1.0,
				MaxMultiplier = 1.0,
			},
			Rare =
			{
				MinMultiplier = 1.333,
				MaxMultiplier = 1.333,
			},
			Epic =
			{
				MinMultiplier = 1.666,
				MaxMultiplier = 1.666,
			},
			Heroic =
			{
				Multiplier = 2.0,
			}
		},
		PropertyChanges =
		{
			{
				UnitProperty = "CritAddition",
				BaseValue = 0.03,
				MinMultiplier = 0.333333,
				ChangeType = "Add",
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
				ExtractValue =
				{
					ExtractAs = "TooltipCritBonus",
					Format = "Percent",
				},
			},
		}
	},
	AphroditeSecondaryTrait =
	{
		InheritFrom = { "ShopTier1Trait" },
		God = "Aphrodite",
		Slot = "Secondary",
		Icon = "Boon_Aphrodite_00",
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier =
			{
				BaseValue = 1.8,
				SourceIsMultiplier = true,
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
			},
			ValidWeapons = WeaponSets.HeroSecondaryWeapons,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamage",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{
			{
				WeaponNames = WeaponSets.HeroSecondaryWeapons,
				EffectName = "ReduceDamageOutput",
				EffectProperty = "Active",
				ChangeValue = true,
			},

			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "RadialNovaSwordParry-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrowReturn",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "StartFx",
				ChangeValue = "AphroditeSpearThrowStartFx",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "BowSplitShot",
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Aphrodite-SplitShot",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowSplitShot",
				WeaponProperty = "MinChargeStartFx",
				ChangeValue = "BowCharge-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", },
				ProjectileName = "ShieldThrow",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldSwipe-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrowDash" },
				ProjectileName = "ShieldThrowDash",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldSwipe-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeStartFx",
				ChangeValue = "ShieldCharge-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "Graphic",
				ChangeValue = "ProjectileShield-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldRushBonusProjectileTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt01-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldLoadAmmoTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt03-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				ProjectileProperty = "Graphic",
				WeaponName = "ShieldThrow",
				ChangeValue = "ProjectileShieldAlt02-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponName = "ShieldThrow",
				ProjectileName = "ShieldThrow",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldThrowTrailMirage-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "GunGrenadeToss",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionAphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "SpearTeleportTrait",
				WeaponName = "SpearRushWeapon",
				ProjectileName = "SpearRushWeapon",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "SpearRushTrailFx-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalAphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "Graphic",
				ChangeValue = "GunGrenadeLuciferOrb-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "GroupName",
				ChangeValue = "FX_Standing_Add",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombWeapon" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionAphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombImmolation" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "LuciferOrbAoE-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "BowMarkHomingTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Aphrodite-SplitShot-Alt01",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowLoadAmmoTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Aphrodite-SplitShot-Alt02",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecial" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercut-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercut-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercutSpecial-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistTeleportSpecialTrait",
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalAphrodite_FlashKick",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},


		},
		EnemyPropertyChanges =
		{
			{
				TraitName = "GunLoadedGrenadeTrait",
				LegalUnits = { "GunBombUnit" },
				ThingProperty = "Graphic",
				ChangeValue = "LuciferBomb-Aphrodite",
				ChangeType = "Absolute",
			},

		},
		ExtractValues =
		{
			{
				ExtractAs = "TooltipWeakDuration",
				SkipAutoExtract = true,
				External = true,
				BaseType = "Effect",
				WeaponName = "SwordWeapon",
				BaseName = "ReduceDamageOutput",
				BaseProperty = "Duration",
			},
			{
				ExtractAs = "TooltipWeakPower",
				SkipAutoExtract = true,
				External = true,
				BaseType = "Effect",
				WeaponName = "SwordWeapon",
				BaseName = "ReduceDamageOutput",
				BaseProperty = "Modifier",
				Format = "NegativePercentDelta"
			}
		}
	},
	AresSecondaryTrait =
	{
		Icon = "Boon_Ares_00",
		InheritFrom = { "ShopTier1Trait" },
		God = "Ares",
		Slot = "Secondary",
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1.00,
			},
			Rare =
			{
				Multiplier = 1.34,
			},
			Epic =
			{
				Multiplier = 1.67,
			},
			Heroic =
			{
				Multiplier = 2.00,
			}
		},
		PropertyChanges =
		{
			{
				WeaponNames = WeaponSets.HeroSecondaryWeapons,
				EffectName = "DelayedDamage",
				EffectProperty = "Active",
				ChangeValue = true,
			},
			{
				WeaponNames = WeaponSets.HeroSecondaryWeapons,
				EffectName = "DelayedDamage",
				EffectProperty = "Amount",
				BaseMin = 60,
				BaseMax = 60,
				IdenticalMultiplier =
				{
					Value = -0.34,
				},
				ExtractValue =
				{
					ExtractAs = "TooltipDamage",
				}
			},

			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "FireFx",
				ChangeValue = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "StartFx",
				ChangeValue = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "RadialNovaSwordParry-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "StartFx",
				ChangeValue = "AresSpearThrowStartFx",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrowReturn",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowSplitShot",
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Ares-SplitShot",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowSplitShot",
				WeaponProperty = "MinChargeStartFx",
				ChangeValue = "BowCharge-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", },
				ProjectileName = "ShieldThrow",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldSwipe-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrowDash" },
				ProjectileName = "ShieldThrowDash",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldSwipe-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeStartFx",
				ChangeValue = "ShieldCharge-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "Graphic",
				ChangeValue = "ProjectileShield-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldRushBonusProjectileTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt01-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldLoadAmmoTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt03-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				ProjectileProperty = "Graphic",
				WeaponName = "ShieldThrow",
				ChangeValue = "ProjectileShieldAlt02-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponName = "ShieldThrow",
				ProjectileName = "ShieldThrow",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldThrowTrailMirage-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "GunGrenadeToss",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionAres",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "SpearTeleportTrait",
				WeaponName = "SpearRushWeapon",
				ProjectileName = "SpearRushWeapon",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "SpearRushTrailFx-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalAres",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "Graphic",
				ChangeValue = "GunGrenadeLuciferOrb-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "GroupName",
				ChangeValue = "FX_Standing_Add",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombWeapon" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionAres",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombImmolation" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "LuciferOrbAoE-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowMarkHomingTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Ares-SplitShot-Alt01",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowLoadAmmoTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Ares-SplitShot-Alt02",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecial" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercut-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercutSpecial-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistTeleportSpecialTrait",
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalAres_FlashKick",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		},
		EnemyPropertyChanges =
		{
			{
				TraitName = "GunLoadedGrenadeTrait",
				LegalUnits = { "GunBombUnit" },
				ThingProperty = "Graphic",
				ChangeValue = "LuciferBomb-Ares",
				ChangeType = "Absolute",
			},
		},
	},
	DionysusSecondaryTrait =
	{
		Icon = "Boon_Dionysus_00",
		InheritFrom = { "ShopTier1Trait" },
		God = "Dionysus",
		Slot = "Secondary",
		RarityLevels =
		{
			Common =
			{
				Multiplier = 1.0,
			},
			Rare =
			{
				MinMultiplier = 1.2,
				MaxMultiplier = 1.2,

			},
			Epic =
			{
				MinMultiplier = 1.4,
				MaxMultiplier = 1.4,
			},
			Heroic =
			{
				Multiplier = 1.6,
			}
		},
		PropertyChanges =
		{
			{
				WeaponNames = WeaponSets.HeroSecondaryWeapons,
				EffectName = "DamageOverTime",
				EffectProperty = "Active",
				ChangeValue = true,
			},
			{
				WeaponNames = WeaponSets.HeroSecondaryWeapons,
				EffectName = "DamageOverTime",
				EffectProperty = "Amount",
				BaseMin = 5,
				BaseMax = 5,
				AsInt = true,
				MinMultiplier = 0.25,
				ChangeType = "Add",
				DepthMult = DepthDamageMultiplier,
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
				ExtractValue =
				{
					ExtractAs = "TooltipDamage",
				}
			},

			{
				WeaponName = "GunGrenadeToss",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionDionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrowReturn",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "StartFx",
				ChangeValue = "DionysusImpactPieceSpearThrow",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeStartFx",
				ChangeValue = "ShieldCharge-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "Graphic",
				ChangeValue = "ProjectileShield-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldRushBonusProjectileTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt01-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldLoadAmmoTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt03-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				ProjectileProperty = "Graphic",
				WeaponName = "ShieldThrow",
				ChangeValue = "ProjectileShieldAlt02-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponName = "ShieldThrow",
				ProjectileName = "ShieldThrow",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldThrowTrailMirage-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "BowSplitShot",
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Dionysus-SplitShot",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "RadialNovaSwordParry-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "SpearTeleportTrait",
				WeaponName = "SpearRushWeapon",
				ProjectileName = "SpearRushWeapon",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "SpearRushTrailFx-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalDionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "Graphic",
				ChangeValue = "GunGrenadeLuciferOrb-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "GroupName",
				ChangeValue = "FX_Standing_Add",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombWeapon" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionDionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombImmolation" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "LuciferOrbAoE-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowMarkHomingTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Dionysus-SplitShot-Alt01",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowLoadAmmoTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Dionysus-SplitShot-Alt02",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecial" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercut-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercutSpecial-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistTeleportSpecialTrait",
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalDionysus_FlashKick",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		},
		EnemyPropertyChanges =
		{
			{
				TraitName = "GunLoadedGrenadeTrait",
				LegalUnits = { "GunBombUnit" },
				ThingProperty = "Graphic",
				ChangeValue = "LuciferBomb-Dionysus",
				ChangeType = "Absolute",
			},
		},
		ExtractValues =
		{
			{
				ExtractAs = "TooltipPoisonDuration",
				SkipAutoExtract = true,
				External = true,
				BaseType = "Effect",
				WeaponName = "SwordWeapon",
				BaseName = "DamageOverTime",
				BaseProperty = "Duration",
			},
			{
				ExtractAs = "TooltipPoisonStacks",
				SkipAutoExtract = true,
				External = true,
				BaseType = "Effect",
				WeaponName = "SwordWeapon",
				BaseName = "DamageOverTime",
				BaseProperty = "MaxStacks",
			},
			{
				ExtractAs = "TooltipPoisonRate",
				SkipAutoExtract = true,
				External = true,
				BaseType = "Effect",
				WeaponName = "SwordWeapon",
				BaseName = "DamageOverTime",
				BaseProperty = "Cooldown",
				DecimalPlaces = 1,
			}
		}
	},
	DemeterSecondaryTrait =
	{
		InheritFrom = { "ShopTier1Trait" },
		God = "Demeter",
		Slot = "Secondary",
		Icon = "Boon_Demeter_00",
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier =
			{
				BaseValue = 1.6,
				SourceIsMultiplier = true,
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
			},
			ValidWeapons = WeaponSets.HeroSecondaryWeapons,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamage",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{

			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrowReturn",
				ProjectileProperty = "Graphic",
				ChangeValue = "SpearThrowProjectile-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = WeaponSets.HeroSecondaryWeapons,
				EffectName = "DemeterSlow",
				EffectProperty = "Active",
				ChangeValue = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "RadialNovaSwordParry-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowSplitShot",
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Demeter-SplitShot",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "Graphic",
				ChangeValue = "ProjectileShield-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "GunGrenadeToss",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionDemeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "SpearTeleportTrait",
				WeaponName = "SpearRushWeapon",
				ProjectileName = "SpearRushWeapon",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "SpearRushTrailFx-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				ProjectileProperty = "Graphic",
				WeaponName = "ShieldThrow",
				ChangeValue = "ProjectileShieldAlt02-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponName = "ShieldThrow",
				ProjectileName = "ShieldThrow",
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ShieldThrowTrailMirage-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldRushBonusProjectileTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt01-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldLoadAmmoTrait",
				ProjectileProperty = "Graphic",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash", "ChaosShieldThrow" },
				ChangeValue = "ProjectileShieldAlt03-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalDemeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},


			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "Graphic",
				ChangeValue = "GunGrenadeLuciferOrb-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunGrenadeToss" },
				ProjectileProperty = "GroupName",
				ChangeValue = "FX_Standing_Add",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombWeapon" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "ZagGrenadeExplosionDemeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunBombImmolation" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "LuciferOrbAoE-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "BowMarkHomingTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Demeter-SplitShot-Alt01",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowLoadAmmoTrait",
				WeaponNames = { "BowSplitShot" },
				ProjectileProperty = "Graphic",
				ChangeValue = "BowWeaponArrow-Demeter-SplitShot-Alt02",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecial" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercut-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "ClawSwipeUppercutSpecial-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistTeleportSpecialTrait",
				WeaponNames = { "FistWeaponSpecial", "FistWeaponSpecialDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "FistFxUppercutDirectionalDemeter_FlashKick",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		},
		EnemyPropertyChanges =
		{
			{
				TraitName = "GunLoadedGrenadeTrait",
				LegalUnits = { "GunBombUnit" },
				ThingProperty = "Graphic",
				ChangeValue = "LuciferBomb-Demeter",
				ChangeType = "Absolute",
			},
		},
		ExtractValues =
		{
			{
				ExtractAs = "TooltipChillDuration",
				SkipAutoExtract = true,
				External = true,
				BaseType = "Effect",
				WeaponName = "SwordWeapon",
				BaseName = "DemeterSlow",
				BaseProperty = "Duration",
			},
			{
				ExtractAs = "TooltipChillPower",
				SkipAutoExtract = true,
				External = true,
				BaseType = "Effect",
				WeaponName = "SwordWeapon",
				BaseName = "DemeterSlow",
				BaseProperty = "ElapsedTimeMultiplier",
				Format = "NegativePercentDelta"
			},
			{
				ExtractAs = "TooltipChillStacks",
				SkipAutoExtract = true,
				External = true,
				BaseType = "Effect",
				WeaponName = "SwordWeapon",
				BaseName = "DemeterSlow",
				BaseProperty = "MaxStacks",
			},
		}
	},
	HermesWeaponTrait =
	{
		InheritFrom = { "ShopTier1Trait" },
		Icon = "Boon_Hermes_06",
		RarityLevels =
		{
			Common =
			{
				MinMultiplier = 1,
				MaxMultiplier = 1,
			},
			Rare =
			{
				MinMultiplier = 1.66,
				MaxMultiplier = 1.66,
			},
			Epic =
			{
				MinMultiplier = 2.33,
				MaxMultiplier = 2.33,
			},
			Heroic =
			{
				MinMultiplier = 3.0,
				MaxMultiplier = 3.0,
			},
		},
		PropertyChanges =
		{
			{
				WeaponNames = { "SwordWeapon" },
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesSwipeLineA",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesSwipeLineB",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon3" },
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesSwipeLineC_Sword3",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "SwordConsecrationTrait",
				WeaponNames = { "SwordWeapon" },
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesSwipeLineC_Sword3_Arthur",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "SwordWeapon", "SwordWeapon2", "SwordWeapon3" },
				WeaponProperty = "ChargeTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon" },
				EffectName = "SwordDisableHeavy",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "SwordWeapon" },
				EffectName = "SwordDisableCancelableAndLockTrigger",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				EffectName = "SwordDisableCancelableAndLockTrigger2",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				EffectName = "SwordDisableArthurCancellable2",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon3" },
				EffectName = "SwordDisable3",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon3" },
				EffectName = "SwordDisableAttackCancelable3",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},




			{
				WeaponNames = { "SpearWeapon", "SpearWeapon2", "SpearWeapon3" },
				WeaponProperty = "ChargeTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon" },
				EffectName = "SpearDisableCancelableAndLockTrigger",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon" },
				EffectName = "SpearDisableCancelableAndLockRotation",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon2" },
				EffectName = "SpearDisableCancelableAndLockTrigger2",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon2" },
				EffectName = "SpearDisableCancelableAndLockRotation",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon3" },
				EffectName = "SpearDisableCancelable3",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "SpearWeapon", "SpearWeapon2", "SpearWeapon3" },
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesSwipeLineC_Spear",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldWeapon" },
				WeaponProperty = "ChargeTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldWeapon" },
				WeaponProperty = "ReloadTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldWeapon" },
				EffectName = "ShieldDisableAttack",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldWeapon" },
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesSwipeLineB_Shield",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},


			{
				WeaponNames = { "ShieldWeaponRush" },
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesWings_ShieldRush",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "BowWeapon" },
				WeaponProperty = "ChargeTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowWeapon",
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesBowTrail",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "GunWeapon" },
				WeaponProperty = "Cooldown",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				TraitName = "GunLoadedGrenadeTrait",
				WeaponNames = { "GunWeapon" },
				ProjectileProperty = "Fuse",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				WeaponName = "GunWeapon",
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesGunTrail",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "FistWeapon", "FistWeapon2", "FistWeapon3", "FistWeapon4", "FistWeapon5" },
				WeaponProperty = "ChargeTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeapon" },
				EffectName = "FistDisableAndLockTrigger",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeapon" },
				EffectName = "FistChargeDisableAndLockTrigger",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeapon2" },
				EffectName = "FistDisableAndLockTrigger2",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeapon2" },
				EffectName = "FistChargeDisableAndLockTrigger2",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeapon3" },
				EffectName = "FistDisableAndLockTrigger3",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeapon3" },
				EffectName = "FistChargeDisableAndLockTrigger3",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeapon4" },
				EffectName = "FistDisableAndLockTrigger4",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeapon5" },
				EffectName = "FistDisableAndLockTrigger5",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
		},
		ExtractEntry =
		{
			BaseValue = 0.85,
			SourceIsMultiplier = true,
		},
		ExtractValues =
		{
			{
				Key = "ExtractEntry",
				DecimalPlaces = 2,
				Format = "NegativePercentDelta",
				ExtractAs = "TooltipSpeedIncrease",
			},
		}
	},
	
	HermesSecondaryTrait =
	{
		InheritFrom = { "ShopTier1Trait" },
		Icon = "Boon_Hermes_09",
		RarityLevels =
		{
			Common =
			{
				MinMultiplier = 1,
				MaxMultiplier = 1,
			},
			Rare =
			{
				MinMultiplier = 1.66,
				MaxMultiplier = 1.66,
			},
			Epic =
			{
				MinMultiplier = 2.33,
				MaxMultiplier = 2.33,
			},
			Heroic =
			{
				MinMultiplier = 3.0,
				MaxMultiplier = 3.0,
			},
		},
		RequiredFalseTraits = { "SwordSecondaryBlinkTrait" },
		PropertyChanges =
		{
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordParryChargeFast",
				ChangeType = "Absolute",
			},
			{
				TraitName = "DislodgeAmmoTrait",
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordAlt02ParryChargeFast",
				ChangeType = "Absolute",
			},
			{
				TraitName = "SwordCriticalParryTrait",
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordAlt01ParryChargeFast",
				ChangeType = "Absolute",
			},
			{
				TraitName = "SwordConsecrationTrait",
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordAlt03ParryCharge", -- this is different from the others on purpose
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordParryDisable",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordParryDisableCancelable",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordParryDisableFast",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordParryDisableFastCancelable",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ChargeTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "Cooldown",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "CooldownWeaponSlotThree",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},

			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesWings_SwordParry",
				ChangeType = "Absolute",
			},

			{
				WeaponName = "SpearWeaponThrow",
				WeaponProperty = "ReloadTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SpearWeaponThrow",
				WeaponProperty = "ChargeTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeaponThrow", "SpearWeaponThrowReturn" },
				ProjectileProperty = "Speed",
				BaseValue = 1.15,
				ChangeType = "Multiply",
				SourceIsMultiplier = true,
			},
			--[[
			{
				WeaponName = "SpearWeaponThrow",
				EffectName = "SpearThrowDisable",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
			},
			]]
			{
				WeaponName = "SpearWeaponThrow",
				EffectName = "SpearThrowDisableCancelable",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "SpearWeaponThrowReturn",
				EffectName = "SpearThrowReturnDisable",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "SpearWeaponThrow",
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesWings_Bow",
				ChangeType = "Absolute",
			},

			{
				WeaponName = "SpearWeaponThrowReturn",
				ProjectileProperty = "StartFx2",
				ChangeValue = "null",
				ChangeType = "Absolute",
			},


			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ReloadTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "DisableOwnerForDuration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "Speed",
				BaseValue = 1.15,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "Acceleration",
				BaseValue = 1.4,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "StartFx",
				ChangeValue = "HermesShieldTrail",
				ChangeType = "Absolute",
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesWings_Bow",
				ChangeType = "Absolute",
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponName = "ShieldThrow",
				ProjectileProperty = "StartFx",
				ChangeValue = "null",
				ChangeType = "Absolute",
			},

			{
				WeaponName = "BowSplitShot",
				WeaponProperty = "ReloadTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowBondTrait",
				WeaponName = "BowSplitShot",
				WeaponProperty = "ChargeTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowBondTrait",
				WeaponName = "BowSplitShot",
				EffectName = "SplitShotDisable",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "BowSplitShot",
				WeaponProperty = "CooldownWeaponSlotThree",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponName = "BowSplitShot",
				EffectName = "SplitShotDisable",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},
			{
				WeaponName = "BowSplitShot",
				EffectName = "SplitShotDisableCancelable",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},

			{
				WeaponName = "BowSplitShot",
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesWings_Bow",
				ChangeType = "Absolute",
			},

			{
				WeaponName = "GunGrenadeToss",
				WeaponProperty = "ReloadTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponName = "GunGrenadeToss",
				EffectName = "GrenadeDisableCancelable",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},
			-- this is for GunGrenadeFastTrait
			{
				WeaponName = "GunGrenadeToss",
				WeaponProperty = "ClipRegenInterval",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},

			{
				WeaponName = "GunGrenadeToss",
				ProjectileProperty = "StartFx2",
				ChangeValue = "HermesWings_GunGrenade",
				ChangeType = "Absolute",
			},

			{
				WeaponName = {"FistWeaponSpecial", "FistWeaponSpecialDash"},
				WeaponProperty = "ChargeTime",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},
			{
				WeaponName = {"FistWeaponSpecial", "FistWeaponSpecialDash"},
				WeaponProperty = "Cooldown",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},
			{
				WeaponName = {"FistWeaponSpecial", "FistWeaponSpecialDash"},
				EffectName = "FistSpecialDisableCancelable",
				EffectProperty = "Duration",
				BaseValue = 0.85,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
			},
		},
		ExtractEntry =
		{
			BaseValue = 0.85,
			SourceIsMultiplier = true,

		},
		ExtractValues =
		{
			{
				Key = "ExtractEntry",
				DecimalPlaces = 2,
				Format = "NegativePercentDelta",
				ExtractAs = "TooltipSpeedIncrease",
			},
		},
	},
	SwordCriticalTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_09",
		-- RequiredFalseTraits = { "SwordTwoComboTrait", "SwordHeavySecondStrikeTrait", "SwordConsecrationTrait" },
		RequiredWeapon = "SwordWeapon",
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier = 3.0,
			ValidWeapons = { "SwordWeapon3", "SwordWeaponDash" },
			ExcludeLinked = true,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamageIncrease",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{
			{
				WeaponName = "SwordWeapon3, SwordWeaponDash",
				ProjectileProperty = "CriticalHitChance",
				BaseValue = 0.40,
				ExtractValue =
				{
					ExtractAs = "TooltipBonusChance",
					Format = "Percent",
				}
			},
		},
	},
	SwordCriticalTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_09",
		-- RequiredFalseTraits = { "SwordTwoComboTrait", "SwordHeavySecondStrikeTrait", "SwordConsecrationTrait" },
		RequiredWeapon = "SwordWeapon",
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier = 3.0,
			ValidWeapons = { "SwordWeapon3", "SwordWeaponDash" },
			ExcludeLinked = true,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamageIncrease",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{
			{
				WeaponName = "SwordWeapon3, SwordWeaponDash",
				ProjectileProperty = "CriticalHitChance",
				BaseValue = 0.40,
				ExtractValue =
				{
					ExtractAs = "TooltipBonusChance",
					Format = "Percent",
				}
			},
		},
	},

	SwordHealthBufferDamageTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_06",
		RequiredWeapon = "SwordWeapon",
		AddOutgoingDamageModifiers =
		{
			ValidWeapons = WeaponSets.HeroPhysicalWeapons,
			HealthBufferDamageMultiplier = 4,
			ExtractValues =
			{
				{
					Key = "HealthBufferDamageMultiplier",
					ExtractAs = "TooltipDamageIncrease",
					Format = "PercentDelta",
				},
			}
		},
	},

	SwordCriticalParryTrait =
	{
		InheritFrom = { "WeaponEnchantmentTrait" },
		CustomTrayText = "SwordCriticalParryTrait_Tray",
		Icon = "WeaponEnchantment_Sword03",
		RequiredWeapon = "SwordWeapon",
		PostWeaponUpgradeScreenAnimation = "ZagreusSwordAlt01Attack2_ReturnToIdle_Loop",
		RarityLevels =
		{
			Common =
			{
				MinMultiplier = 1.00,
				MaxMultiplier = 1.00,
			},
			Rare =
			{
				MinMultiplier = 1.25,
				MaxMultiplier = 1.25,
			},
			Epic =
			{
				MinMultiplier = 1.50,
				MaxMultiplier = 1.50,
			},
			Heroic =
			{
				MinMultiplier = 1.75,
				MaxMultiplier = 1.75,
			},
			Legendary =
			{
				MinMultiplier = 2.00,
				MaxMultiplier = 2.00,
			},
		},
		SwordPostParryCriticalAmount =
		{
			BaseValue = 0.15,
		},
		PropertyChanges =
		{
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordPostParryCritical",
				EffectProperty = "Active",
				ChangeValue = true,
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordPostParryCritical",
				EffectProperty = "Duration",
				ChangeValue = 3.0,
				ExtractValue =
				{
					ExtractAs = "TooltipDuration",
					DecimalPlaces = 1,
				}
			},
			-- animation changes
			{
				WeaponName = "SwordWeapon",
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordAlt01Charge1",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon",
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordAlt01Attack1",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordAlt01Charge2",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordAlt01Attack2",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon3",
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordAlt01Charge3",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon3",
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordAlt01Attack3",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordAlt01ParryFire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordAlt01ParryCharge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeaponDash",
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordAlt01DashAttack",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		},
		WeaponBinks =
		{
			"ZagreusSword01_Bink",
			"ZagreusSword01ReturnToIdle_Bink",
			"ZagreusSword01DashAttack_Bink",
			"ZagreusSword01Run_Bink",
			"ZagreusSword01RunStop_Bink",
			"ZagreusSword01Parry_Bink"
		},
		WeaponDataOverride =
		{
			SwordWeapon =
			{
				WeaponBinks =
				{
					"ZagreusSword01_Bink",
					"ZagreusSword01ReturnToIdle_Bink",
					"ZagreusSword01DashAttack_Bink",
					"ZagreusSword01Run_Bink",
					"ZagreusSword01RunStop_Bink",
					"ZagreusSword01Parry_Bink"
				},
			}
		},
		ExtractValues =
		{
			{
				Key = "SwordPostParryCriticalAmount",
				ExtractAs = "TooltipPercentChance",
				Format = "Percent",
			},
		}
	},

	SwordConsecrationTrait =
	{
		Icon = "WeaponEnchantment_Sword04",
		InheritFrom = { "WeaponEnchantmentTrait" },
		RequiredWeapon = "SwordWeapon",
		AddOnFireWeapons = { "ConsecrationField" },
		LegalOnFireWeapons = { "SwordParry", "SwordAOEWave" },
		CustomTrayText = "SwordConsecrationTrait_Tray",
		PostWeaponUpgradeScreenAnimation = "ZagreusSwordAlt03ParryReturnToIdle",
		PostWeaponUpgradeScreenAngle = 300,
		OnProjectileDeathFunction =
		{
			Name = "ConsecrationFieldDeath",
		},
		RarityLevels =
		{
			Common =
			{
				MinMultiplier = 1.00,
				MaxMultiplier = 1.00,
			},
			Rare =
			{
				MinMultiplier = 1.25,
				MaxMultiplier = 1.25,
			},
			Epic =
			{
				MinMultiplier = 1.50,
				MaxMultiplier = 1.50,
			},
			Heroic =
			{
				MinMultiplier = 1.75,
				MaxMultiplier = 1.75,
			},
			Legendary =
			{
				MinMultiplier = 2.00,
				MaxMultiplier = 2.00,
			},
		},
		WeaponBinks =
		{
			"ZagreusSwordArthurIdle_Bink",
			"ZagreusSwordArthurRun_Bink",
			"ZagreusSwordArthurRunStop_Bink",
			"ZagreusSwordArthurAttack1_Bink",
			"ZagreusSwordArthurAttack2_Bink",
			"ZagreusSwordArthurAttack3_Bink",
			"ZagreusSwordArthurAttackParry_Bink",
		},
		WeaponDataOverride =
		{
			SwordWeapon =
			{
				WeaponBinks =
				{
					"ZagreusSwordArthurIdle_Bink",
					"ZagreusSwordArthurRun_Bink",
					"ZagreusSwordArthurRunStop_Bink",
					"ZagreusSwordArthurAttack1_Bink",
					"ZagreusSwordArthurAttack2_Bink",
					"ZagreusSwordArthurAttack3_Bink",
					"ZagreusSwordArthurAttackParry_Bink",
				},

				HitSimSlowCooldown = 0.3,
				HitSimSlowParameters =
				{
					{ ScreenPreWait = 0.04, Fraction = 0.03, LerpTime = 0.0 },
					{ ScreenPreWait = 0.02, Fraction = 0.20, LerpTime = 0.06 },
					{ ScreenPreWait = 0.02, Fraction = 1.00, LerpTime = 0.07 },

					--{ ScreenPreWait = 0.01, Fraction = 0.01, LerpTime = 0 },
					--{ ScreenPreWait = 0.06, Fraction = 0.3, LerpTime = 0.07 },
					--{ ScreenPreWait = 0.08, Fraction = 1.0, LerpTime = 0.07 },
				},
			},

			SwordWeapon2 =
			{
				HitSimSlowCooldown = 0.3,
				HitSimSlowParameters =
				{
					{ ScreenPreWait = 0.02, Fraction = 0.05, LerpTime = 0.0 },
					{ ScreenPreWait = 0.03, Fraction = 0.20, LerpTime = 0.06 },
					{ ScreenPreWait = 0.03, Fraction = 1.00, LerpTime = 0.07 },

					--{ ScreenPreWait = 0.01, Fraction = 0.01, LerpTime = 0 },
					--{ ScreenPreWait = 0.06, Fraction = 0.3, LerpTime = 0.07 },
					--{ ScreenPreWait = 0.08, Fraction = 1.0, LerpTime = 0.07 },
				},
				Sounds =
				{
					FireSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmoteAttacking_Sword" },
						{ Name = "/SFX/Player Sounds/ZagreusSwordSwipe" },
					},
					ChargeSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmoteCharging" },
						{
							Name = "/SFX/Player Sounds/ZagreusWeaponChargeup" ,
							StoppedBy = { "ChargeCancel", "TriggerRelease", "Fired" },
						},
					},
					ImpactSounds =
					{
						Invulnerable = "/SFX/SwordWallHitClank",
						Armored = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Bone = "/SFX/MetalBoneSmash",
						Brick = "/SFX/MetalStoneClang",
						Stone = "/SFX/MetalStoneClang",
						Organic = "/SFX/StabSplatterSmall",
						StoneObstacle = "/SFX/SwordWallHitClank",
						BrickObstacle = "/SFX/SwordWallHitClank",
						MetalObstacle = "/SFX/SwordWallHitClank",
						BushObstacle = "/Leftovers/World Sounds/LeavesRustle",
					},
				},

			},

			SwordWeapon3 =
			{
				HitSimSlowCooldown = 0.3,
				HitSimSlowParameters =
				{
					{ ScreenPreWait = 0.04, Fraction = 0.01, LerpTime = 0.0 },
					{ ScreenPreWait = 0.02, Fraction = 0.15, LerpTime = 0.06 },
					{ ScreenPreWait = 0.06, Fraction = 1.0, LerpTime = 0.07 },

					--{ ScreenPreWait = 0.01, Fraction = 0.01, LerpTime = 0 },
					--{ ScreenPreWait = 0.06, Fraction = 0.3, LerpTime = 0.07 },
					--{ ScreenPreWait = 0.08, Fraction = 1.0, LerpTime = 0.07 },
				},
				Sounds =
				{
					FireSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmoteHeavyAttacking" },
						{ Name = "/SFX/Enemy Sounds/Minotaur/HugeAxeSwing" }
					},
					ChargeSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmoteHeavyCharging" },
						{
							Name = "/Leftovers/SFX/AuraCharge" ,
							StoppedBy = { "TriggerRelease" }
						},
					},
					ImpactSounds =
					{
						Invulnerable = "/SFX/SwordWallHitClank",
						Armored = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Bone = "/SFX/MetalBoneSmash",
						Brick = "/SFX/MetalStoneClang",
						Stone = "/SFX/MetalStoneClang",
						Organic = "/SFX/StabSplatterSmall",
						StoneObstacle = "/SFX/SwordWallHitClank",
						BrickObstacle = "/SFX/SwordWallHitClank",
						MetalObstacle = "/SFX/SwordWallHitClank",
						BushObstacle = "/Leftovers/World Sounds/LeavesRustle",
					},
				},
			},
			SwordWeaponDash =
			{
				HitSimSlowCooldown = 0.2,
				Sounds =
				{
					FireSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmoteSpearThrow" },
						{ Name = "/SFX/Player Sounds/ZagreusSwordSwipe" },
					},
					ImpactSounds =
					{
						Invulnerable = "/SFX/SwordWallHitClank",
						Armored = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Bone = "/SFX/MetalBoneSmash",
						Brick = "/SFX/MetalStoneClang",
						Stone = "/SFX/MetalStoneClang",
						Organic = "/SFX/StabSplatterSmall",
						StoneObstacle = "/SFX/SwordWallHitClank",
						BrickObstacle = "/SFX/SwordWallHitClank",
						MetalObstacle = "/SFX/SwordWallHitClank",
						BushObstacle = "/Leftovers/World Sounds/LeavesRustle",
					},
				},
			},
			SwordParry =
			{
				HitSimSlowCooldown = 0.2,
				Sounds =
				{
					FireSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmoteHeavyAttacking" },
					},
					ChargeSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmoteCharging" },
						{ Name = "/SFX/Player Sounds/ZagreusSwordSwipe" },
					},
					ImpactSounds =
					{
						Invulnerable = "/SFX/SwordWallHitClank",
						Armored = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Bone = "/SFX/MetalBoneSmash",
						Brick = "/SFX/MetalStoneClang",
						Stone = "/SFX/MetalStoneClang",
						Organic = "/SFX/StabSplatterSmall",
						StoneObstacle = "/SFX/SwordWallHitClank",
						BrickObstacle = "/SFX/SwordWallHitClank",
						MetalObstacle = "/SFX/SwordWallHitClank",
						BushObstacle = "/Leftovers/World Sounds/LeavesRustle",
					},
				},
			},
		},
		PropertyChanges =
		{

			-- Main Attack Changes / Excalibur
			{
				WeaponNames = { "SwordWeaponDash", "SwordWeapon", "SwordWeapon2", "SwordWeapon3" },
				WeaponProperty = "FullyAutomatic",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			-- SwordWeaponDash
			{
				WeaponNames = { "SwordWeaponDash" },
				WeaponProperty = "ChargeTime",
				ChangeValue = 0.20,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeaponDash" },
				WeaponProperty = "ChargeCancelMovement",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeaponDash" },
				WeaponProperty = "CancelMovement",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeaponDash" },
				WeaponProperty = "RootOwnerWhileFiring",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeaponDash" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordArthurAttack1_Charge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeaponDash" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordArthurAttack1_Fire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeaponDash" },
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeC-Arthur",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeaponDash" },
				ProjectileProperty = "DamageLow",
				ChangeValue = 50,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeaponDash" },
				ProjectileProperty = "DamageHigh",
				ChangeValue = 50,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			-- SwordWeapon
			{
				WeaponNames = { "SwordWeapon" },
				WeaponProperty = "ChargeTime",
				ChangeValue = 0.25,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordArthurAttack1_Charge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordArthurAttack1_Fire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon" },
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeC-Arthur",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon" },
				WeaponProperty = "RootOwnerWhileFiring",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon" },
				WeaponProperty = "ChargeCancelMovement",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon" },
				WeaponProperty = "Projectile",
				ChangeValue = "SwordWeaponArthur1",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon" },
				EffectName = "SwordDisableArthur",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon" },
				EffectName = "SwordDisableArthurCancellable",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon" },
				EffectName = "SwordDisable",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon" },
				EffectName = "SwordDisableCancelableAndLockTrigger",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},


			-- SwordWeapon2
			{
				WeaponNames = { "SwordWeapon2" },
				WeaponProperty = "ChargeTime",
				ChangeValue = 0.35,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				WeaponProperty = "ControlWindow",
				ChangeValue = 0.6,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				WeaponProperty = "ChargeFx",
				ChangeValue = "ChargeAttack-Arthur",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordArthurAttack2_Charge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "SwordWeapon2" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordArthurAttack2_Fire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeA-Arthur",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				WeaponProperty = "ChargeCancelMovement",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				WeaponProperty = "RootOwnerWhileFiring",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				WeaponProperty = "Projectile",
				ChangeValue = "SwordWeaponArthur2",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				WeaponProperty = "BarrelLength",
				ChangeValue = "0",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				EffectName = "SwordDisableArthur2",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				EffectName = "SwordDisableArthurCancellable2",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				EffectName = "SwordDisable2",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon2" },
				EffectName = "SwordDisableCancelableAndLockTrigger2",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},


			-- SwordWeapon3
			{
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "ChargeTime",
				ChangeValue = 0.50,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "ControlWindow",
				ChangeValue = 0.6,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordArthurAttack3_Charge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "ChargeFx",
				ChangeValue = "ChargeAttack-Arthur",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordArthurAttack3_Fire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "FireFx",
				ChangeValue = "SwordSwipeAFlipped-Arthur",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "SelfVelocity",
				ChangeValue = 0.75,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "SelfVelocityCap",
				ChangeValue = 0.75,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "CancelMovement",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "ChargeCancelMovement",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SwordWeapon3",
				EffectName = "SwordDisable3",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SwordWeapon3",
				EffectName = "SwordDisableAttackCancelable3",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SwordWeapon3",
				EffectName = "SwordDisableCancelable3",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SwordWeapon3",
				EffectName = "ArthurSwordDisable3",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SwordWeapon3",
				EffectName = "ArthurSwordDisableCancelable3",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "Projectile",
				ChangeValue = "SwordWeaponArthur3",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon3" },
				WeaponProperty = "BarrelLength",
				ChangeValue = 0,
				ExcludeLinked = true,
			},


			-- Sword Parry

			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordAlt03ParryCharge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordAlt03ParryFire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "RadialNovaSwordParry-Arthur",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ChargeTime",
				ChangeValue = 0.5,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DamageLow",
				ChangeValue = 70,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DamageHigh",
				ChangeValue = 70,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			-- Consecration Field
			{
				WeaponName = "ConsecrationField",
				EffectName = "ConsecrationSlow",
				EffectProperty = "Modifier",
				ChangeValue = 0.50,
				ChangeType = "Absolute",
			},
			{
				WeaponName = "ConsecrationField",
				EffectName = "ConsecrationDamageReduction",
				EffectProperty = "Modifier",
				BaseValue = 0.8,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExtractValue =
				{
					ExtractAs = "TooltipDamageReduction",
					Format = "NegativePercentDelta",
				}
			},
			--[[
			{
				WeaponName = "ConsecrationField",
				EffectName = "DodgeBonus",
				EffectProperty = "DodgeChance",
				BaseValue = 0.10,
				ChangeType = "Add",
				ExtractValue =
				{
					ExtractAs = "TooltipDodge",
					Format = "Percent",
				}
			},
			]]
			--[[
			{
				WeaponName = "ConsecrationField",
				EffectName = "ConsecrationDamage",
				EffectProperty = "Modifier",
				BaseValue = 1.07,
				SourceIsMultiplier = true,
				ChangeType = "Multiply",
				ExtractValue =
				{
					ExtractAs = "TooltipDamage",
					Format = "PercentDelta",
				}
			},
			]]

			{
				LuaProperty = "MaxHealth",
				ChangeValue = 50,
				AsInt = true,
				ChangeType = "Add",
				MaintainDelta = true,
				ExtractValue =
				{
					ExtractAs = "TooltipHealth",
				}
			},
		},
	},
	SwordDoubleDashAttackTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_07",
		RequiredWeapon = "SwordWeapon",
		WeaponDataOverride =
		{
			SwordWeaponDash = 
			{
				HitSimSlowParameters =
				{
					{ ScreenPreWait = 0.04, Fraction = 0.1, LerpTime = 0.0 },
					{ ScreenPreWait = 0.02, Fraction = 1.0, LerpTime = 0.0 },
				},
			},
			SwordWeapon3 = 
			{
				HitSimSlowParameters =
				{
					{ ScreenPreWait = 0.04, Fraction = 0.1, LerpTime = 0.0 },
					{ ScreenPreWait = 0.02, Fraction = 1.0, LerpTime = 0.0 },
				},
			},
		},
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier = 1.2,
			ValidWeapons = { "SwordWeaponDash", "SwordWeapon3" },
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamageIncrease",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{
			{
				WeaponName = "SwordWeaponDash",
				WeaponProperty = "NumProjectiles",
				ChangeValue = 1,
				ChangeType = "Add",
				ExtractValues =
				{
					{
						ExtractAs = "TooltipBonusHits",
					},
				}
			},
			{
				WeaponName = "SwordWeaponDash",
				WeaponProperty = "ProjectileInterval",
				ChangeValue = 0.1,
				ChangeType = "Absolute",
			},
			{
				WeaponName = "SwordWeapon3",
				WeaponProperty = "NumProjectiles",
				ChangeValue = 1,
				ChangeType = "Add",
				ExtractValues =
				{
					{
						ExtractAs = "TooltipBonusHits",
					},
				}
			},
			{
				WeaponName = "SwordWeapon3",
				WeaponProperty = "ProjectileInterval",
				ChangeValue = 0.1,
				ChangeType = "Absolute",
			},
			--[[
			{
				WeaponName = "SwordWeaponDash",
				ProjectileProperty = "CriticalHitChance",
				BaseMin = 0.15,
				BaseMax = 0.15,
			},
			]]
			{
				WeaponName = "SwordWeaponDash",
				EffectName = "SwordDisableDoubleDashAttack",
				EffectProperty = "Active",
				ChangeValue = true,
			},
			{
				WeaponName = "SwordWeaponDash",
				EffectName = "SwordDisableDoubleDashAttackCancelable",
				EffectProperty = "Active",
				ChangeValue = true,
			},
		},
	},
	SwordAOESecondStrikeTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_02",
		RequiredWeapon = "SwordWeapon",
		AddOnFireWeapons = { "SwordAOEWave" },
		LegalOnFireWeapons = { "SwordWeapon2" },
	},
	SwordSecondaryWaveTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_02",
		RequiredWeapon = "SwordWeapon",
		AddOnFireWeapons = { "SwordNovaWave" },
		LegalOnFireWeapons = { "SwordParry", "SwordAOEWave" },
		PropertyChanges =
		{
			{
				WeaponNames = { "SwordNovaWave" },
				ProjectileProperty = "DamageLow",
				BaseValue = 40,
				ChangeType = "Absolute",
				ExcludeLinked = true,
				ExtractValue =
				{
					ExtractAs = "TooltipDamage",
				},
			},
			{
				WeaponNames = { "SwordNovaWave" },
				ProjectileProperty = "DamageHigh",
				DeriveValueFrom = "DamageLow",
			},
		},
	},
	SwordTwoComboTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_01",
		RequiredFalseTraits = { "SwordThirdStrikeChargeTrait" },
		RequiredWeapon = "SwordWeapon",
		WeaponDataOverride =
		{
			SwordWeapon =
			{
				HitSimSlowParameters =
				{
					{ ScreenPreWait = 0.02, Fraction = 0.2, LerpTime = 0 },
					{ ScreenPreWait = 0.01, Fraction = 1.0, LerpTime = 0.03 },
				},

				HitRumbleParameters =
				{
					{ ScreenPreWait = 0.02, RightFraction = 0.17, Duration = 0.12 },
				},
			},
			SwordWeapon2 =
			{
				HitSimSlowParameters =
				{
					{ ScreenPreWait = 0.02, Fraction = 0.2, LerpTime = 0 },
					{ ScreenPreWait = 0.01, Fraction = 1.0, LerpTime = 0.03 },
				},

				HitRumbleParameters =
				{
					{ ScreenPreWait = 0.02, RightFraction = 0.17, Duration = 0.12 },
				},
			},
		},
		PropertyChanges =
		{
			{
				WeaponName = "SwordWeapon",
				SequenceName = "SwordWeapon3",
				ChangeType = "Remove",
			},
			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "RemoveControlOnFire",
				ChangeValue = "SwordWeapon2",
				ChangeType = "Absolute",
			},
			{
				WeaponNames = { "SwordWeapon", "SwordWeapon2" },
				WeaponProperty = "ChargeTime",
				ChangeValue = 0.8,
				ChangeType = "Multiply",
			},
			{
				WeaponNames = { "SwordWeapon", "SwordWeapon2" },
				WeaponProperty = "FullyAutomatic",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
			{
				WeaponNames = { "SwordWeapon", "SwordWeapon2" },
				WeaponProperty = "AllowExternalForceRelease",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SwordWeapon", "SwordWeapon2" },
				WeaponProperty = "ForceReleaseOnSwap",
				ChangeValue = false,
				ChangeType = "Absolute",
			},
			{
				WeaponNames = {"SwordWeapon", "SwordWeapon2", },
				ProjectileProperty = "DamageLow",
				ChangeValue = 5,
				ChangeType = "Add",
				ExcludeLinked = true,
				ExtractValue =
				{
					ExtractAs = "TooltipDamage",
				},
			},
			{
				WeaponNames = {"SwordWeapon", "SwordWeapon2", },
				ProjectileProperty = "DamageHigh",
				DeriveValueFrom = "DamageLow",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon",
				EffectName = "SwordDisableCancelableAndLockTrigger",
				EffectProperty = "RequestTriggerLock",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon",
				EffectName = "SwordDisableCancelableAndLockTrigger",
				EffectProperty = "Cancelable",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				EffectName = "SwordDisableCancelableAndLockTrigger2",
				EffectProperty = "RequestTriggerLock",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				EffectName = "SwordDisableCancelableAndLockTrigger2",
				EffectProperty = "Cancelable",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

		},
	},

	SwordSecondaryAreaDamageTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_08",
		RequiredWeapon = "SwordWeapon",
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier = 1.2,
			ValidWeapons = { "SwordParry", "SwordAOEWave" },
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamageIncrease",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DamageRadius",
				ChangeValue = 1.2,
				ChangeType = "Multiply",
			},
		},
	},

	SwordSecondaryDoubleAttackTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_04",
		RequiredWeapon = "SwordWeapon",
		PropertyChanges =
		{

			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "NumProjectiles",
				ChangeValue = 2,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ProjectileInterval",
				ChangeValue = 0.2,
				ChangeType = "Absolute",
			},
			--[[
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DamageRadius",
				ChangeValue = 0.85,
				ChangeType = "MultiplyBase",
			},
			
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "NumProjectileWaves",
				ChangeValue = 2,
				ExtractValue =
				{
					ExtractAs = "TooltipProjectiles",
					SkipAutoExtract = true,
				},
				IdenticalMultiplier =
				{
					Value = -1,
					MinMultiplier = 0,
				},
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ProjectileWaveInterval",
				ChangeValue = 0.2,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "AdditionalWaveDamageMultiplier",
				BaseValue = 0.5,
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
				ExtractValue =
				{
					ExtractAs = "TooltipDamage",
					Format ="Percent"
				}
			},
			]]

			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "ImpactVelocity",
				ChangeValue = 0,
				ChangeType = "MultiplyBase",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "ImpactVelocityCap",
				ChangeValue = 0,
				ChangeType = "MultiplyBase",
			},
		},
	},


	SwordHeavySecondStrikeTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_03",
		RequiredWeapon = "SwordWeapon",
		-- RequiredFalseTraits = { "SwordConsecrationTrait" },
		PropertyChanges =
		{
			{
				WeaponName = "SwordWeapon",
				SequenceName = "SwordWeapon",
				ChangeType = "Remove",
			},
			{
				WeaponName = "SwordWeapon",
				SequenceName = "SwordWeapon3",
				ChangeType = "Remove",
			},
			{
				WeaponName = "SwordWeapon2",
				ProjectileProperty = "DamageLow",
				ChangeValue = 65,
				ChangeType = "Add",
				ExcludeLinked = true,
				ExtractValue =
				{
					ExtractAs = "TooltipDamage",
				},
			},

			{
				WeaponName = "SwordWeapon2",
				ProjectileProperty = "DamageHigh",
				ChangeValue = 65,
				ChangeType = "Add",
				ExcludeLinked = true,
				ExtractValue =
				{
					ExtractAs = "TooltipDamage",
				},
			},
			{
				WeaponName = "SwordWeaponDash",
				WeaponProperty = "SwapOnFire",
				ChangeValue = "SwordWeapon2",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "ControlWindow",
				ChangeValue = 0,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "SwapOnFire",
				ChangeValue = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "AddControlOnFire",
				ChangeValue = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "RemoveControlOnFire",
				ChangeValue = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "RemoveControlOnFire2",
				ChangeValue = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "LockTrigger",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "LockTriggerForCharge",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "CancelChargeOnRelease",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "ChargeTime",
				ChangeValue = 1.56,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "Cooldown",
				ChangeValue = 0.32,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon",
				EffectName = "SwordDisableCancelableAndLockTrigger",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SwordWeapon2",
				EffectName = "SwordSelfSlow",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SwordWeapon2",
				EffectName = "SwordDisable",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "SwordWeapon2",
				EffectName = "SwordDisableHeavy",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				ProjectileProperty = "ImpactVelocity",
				ChangeValue = 1300,
				ChangeType = "Add",
				ExcludeLinked = true,
			},
		},

		WeaponDataOverride =
		{
			SwordWeapon2 =
			{
				Sounds =
				{
					ChargeSounds =
					{
						{ Name = "/SFX/Player Sounds/WeaponSwing" },
					},
					FireSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmotePowerAttacking" },
						{ Name = "/SFX/Player Sounds/ZagreusSwordOverhead" },
					},
					ImpactSounds =
					{
						Invulnerable = "/SFX/SwordWallHitClank",
						Armored = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Bone = "/SFX/MetalBoneSmash",
						Brick = "/SFX/MetalStoneClang",
						Stone = "/SFX/MetalStoneClang",
						Organic = "/SFX/StabSplatterSmall",
						StoneObstacle = "/SFX/SwordWallHitClank",
						BrickObstacle = "/SFX/SwordWallHitClank",
						MetalObstacle = "/SFX/SwordWallHitClank",
						BushObstacle = "/Leftovers/World Sounds/LeavesRustle",
					},
				},
			},
		},
	},

	SwordSecondaryNovaWaveTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_04",
		RequiredWeapon = "SwordWeapon",
		PropertyChanges =
		{
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "NumProjectiles",
				ChangeValue = 1,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ProjectileInterval",
				ChangeValue = 0.1,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "Range",
				ChangeValue = 500,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "Speed",
				ChangeValue = 1000,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "Fuse",
				ChangeValue = 0.2,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "TotalFuse",
				ChangeValue = 1.0,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "MultiDetonate",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "AttachToOwner",
				ChangeValue = false,
				ChangeType = "Absolute",
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "CheckObstacleImpact",
				ChangeValue = false,
				ChangeType = "Absolute",
			},
		},
	},


	SwordSecondaryBlinkTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_04",
		RequiredWeapon = "SwordWeapon",
		RequiredFalseTraits = { "HermesSecondaryTrait" },
		PropertyChanges =
		{
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordParryBlink",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
		},

		WeaponDataOverride =
		{
			SwordParry =
			{
				Sounds =
				{
					FireSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmoteHeavySpecialAttack" },
						{ Name = "/SFX/Player Sounds/ZagreusSwordParry" },
					},
					ChargeSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmoteCharging" },
						{ Name = "/SFX/Player Sounds/ZagreusSwordSwipe" },
					},
				},
			},
		},
	},
	SwordSecondaryReflectionTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_08",
		RequiredWeapon = "SwordWeapon",
		PropertyChanges =
		{
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordParrySelfReflection",
				EffectProperty = "Duration",
				BaseValue = 3,
				ChangeType = "Multiply",
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
				ExtractValue =
				{
					ExtractAs = "TooltipDuration",
				}
			},
		},
	},
	BowTapFireTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Bow_15",
		RequiredWeapon = "BowWeapon",
		RequiredFalseTraits = { "BowPowerShotTrait", "BowBeamTrait", "BowTransitionTapFireTrait" },
		WeaponDataOverride =
		{
			BowWeapon =
			{
				ChargeCameraMotion = { ZoomType = "None" },
				FireCameraMotion = { ZoomType = "None" },
			}
		},
		PropertyChanges =
		{
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "LockTriggerForCharge",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "FireOnRelease",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "FullyAutomatic",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "ForceReleaseOnFire",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "AllowExternalForceRelease",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "ForceReleaseWeaponOnFire",
				ChangeValue = "null",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "ShowFreeAimLine",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "MinChargeToFire",
				ChangeValue = 1.0,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "ChargeTime",
				ChangeValue = 0.333333,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "ReloadTime",
				ChangeValue = 0.25,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowWeapon",
				WeaponProperty = "ClipSize",
				ChangeValue = 3,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			--[[
			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "ChargeDamageMultiplier",
				ChangeValue = 2.4,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			]]

			{
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "PerfectChargeWindowDuration",
				ChangeValue = 0.0,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowBondTrait",
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "ChargeTime",
				ChangeValue = 0.5,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				TraitName = "BowBondTrait",
				WeaponNames = { "BowWeapon", "BowWeaponDash" },
				WeaponProperty = "ChargeDamageMultiplier",
				ChangeValue = 1/3,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				WeaponName = "BowWeapon",
				EffectName = "BowWeaponDisableCancelable",
				EffectProperty = "Cancelable",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

		},
	},
	ShieldThrowElectiveCharge =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Shield_12",
		RequiredWeapon = "ShieldWeapon",
		RequiredFalseTraits = { "ShieldThrowSingleTargetTrait", "ShieldRushBonusProjectileTrait", "ShieldTwoShieldTrait" },
		WeaponDataOverride =
		{
			ShieldThrow =
			{
				Sounds =
				{
					ChargeSounds =
					{
						{
							Name = "/SFX/Player Sounds/ZagreusWeaponChargeup",
							Key = "ShieldThrowElectiveCharge",
							StoppedBy = { "ChargeCancel", "TriggerRelease", "Fired" },
							SetPitchToPropertyValue = "ChargeTime",
						},
						{
							Name = "/VO/ZagreusEmotes/EmoteRangedCharging",
							StoppedBy = { "ChargeCancel", "TriggerRelease", "Fired" },
						}
					},
					FireSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmoteRanged" },
						{ Name = "/SFX/Player Sounds/ZagreusBowFire" },
						{ Name = "/SFX/Player Sounds/ZagreusSpearThrow" },
					},
					ImpactSounds =
					{
						Invulnerable = "/SFX/SwordWallHitClank",
						Armored = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Bone = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Brick = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Stone = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Organic = "/SFX/Player Sounds/ZagreusShieldRicochet",
						StoneObstacle = "/SFX/Player Sounds/ZagreusShieldRicochet",
						BrickObstacle = "/SFX/Player Sounds/ZagreusShieldRicochet",
						MetalObstacle = "/SFX/Player Sounds/ZagreusShieldRicochet",
						BushObstacle = "/SFX/Player Sounds/ZagreusShieldRicochet",
					},
				},
			},
		},
		PropertyChanges =
		{
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "FireOnRelease",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "FullyAutomatic",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ShowFreeAimLine",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "LockTriggerForCharge",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeTime",
				ChangeValue = 0.6,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "MinChargeToFire",
				ChangeValue = 0.04,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "PerfectChargeWindowDuration",
				ChangeValue = 0.0,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "StartDelay",
				ChangeValue = 0.12,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeDamageMultiplier",
				ChangeValue = 3,
				ChangeType = "Absolute",
				ExcludeLinked = true,
				ExtractValue =
				{
					ExtractAs = "TooltipDamageBonus",
					Format = "PercentDelta"
				},
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusShieldHeavyThrow_Charge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusShieldHeavyThrow_Fire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "ShieldRushBonusProjectileTrait",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusShieldAlt01HeavyThrow_Charge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldRushBonusProjectileTrait",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusShieldAlt01HeavyThrow_Fire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "ShieldLoadAmmoTrait",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusShieldBeowulfHeavyThrow_Charge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldLoadAmmoTrait",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusShieldBeowulfHeavyThrow_Fire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponNames = { "ShieldThrow" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusShieldAlt02HeavyThrow_Charge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponNames = { "ShieldThrow" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusShieldAlt02HeavyThrow_Fire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "StartDelay",
				ChangeValue = 0,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "MinChargeStartFx",
				ChangeValue = "ShieldChargeThrowTrait",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		},
	},
	SpearReachAttack =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Spear_03",
		RequiredWeapon = "SpearWeapon",
		AddOutgoingDamageModifiers =
		{
			ValidWeapons = { "SpearWeapon", "SpearWeapon2", "SpearWeapon3", "SpearWeaponDash", "SpearWeaponSpin", "SpearWeaponSpin2", "SpearWeaponSpin3" },
			ExcludeLinked = true,
			DistanceThreshold = 475,
			DistanceMultiplier =
			{
				BaseValue = 1.4,
				SourceIsMultiplier = true,
			},
			ExtractValues =
			{
				{
					Key = "DistanceMultiplier",
					ExtractAs = "TooltipDamageBonus",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{
			{
				WeaponNames = { "SpearWeapon", "SpearWeapon2", "SpearWeapon3" },
				ProjectileProperty = "Range",
				ChangeValue = 1.4,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon", "SpearWeapon2", "SpearWeapon3" },
				WeaponProperty = "AutoLockRange",
				ChangeValue = 1.4,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeaponSpin", "SpearWeaponSpin2", "SpearWeaponSpin3", "SpearWeaponSpinExplosiveChargeWeapon" },
				ProjectileProperty = "DamageRadius",
				ChangeValue = 1.4,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
		},
	},
	SpearSpinDamageRadius =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Spear_07",
		RequiredWeapon = "SpearWeapon",
		RequiredFalseTrait = "SpearAutoAttack",
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier = 2.25,
			ValidWeapons = { "SpearWeaponSpin", "SpearWeaponSpin2", "SpearWeaponSpin3", "SpearWeaponSpinExplosiveChargeWeapon" },
			ExcludeLinked = true,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamageIncrease",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{
			{
				WeaponNames = { "SpearWeaponSpin", "SpearWeaponSpin2", "SpearWeaponSpin3", "SpearWeaponSpinExplosiveChargeWeapon" },
				ProjectileProperty = "DamageRadius",
				ChangeValue = 1.30,
				ChangeType = "Multiply",
			},
		},
	},
	SpearSpinChargeLevelTime =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Spear_08",
		RequiredWeapon = "SpearWeapon",
		RequiredFalseTrait = "SpearAutoAttack",
		PropertyChanges =
		{
			{
				WeaponNames = { "SpearWeaponSpin", "SpearWeaponSpin2", "SpearWeaponSpin3" },
				EffectName = "SpearSpinDisable",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
			},
			{
				WeaponNames = { "SpearWeaponSpin", "SpearWeaponSpin2", "SpearWeaponSpin3" },
				EffectName = "SpearSpinDisableCancelable",
				EffectProperty = "Active",
				ChangeValue = false,
				ChangeType = "Absolute",
			},
			{
				WeaponNames = { "SpearWeaponSpin", "SpearWeaponSpin2", "SpearWeaponSpin3" },
				EffectName = "SpearSpinDisableFast",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
			{
				WeaponNames = { "SpearWeaponSpin", "SpearWeaponSpin2", "SpearWeaponSpin3" },
				EffectName = "SpearSpinDisableCancelableFast",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
			{
				WeaponNames = { "SpearWeaponSpinExplosiveChargeWeapon" },
				ProjectileProperty = "Cooldown",
				ChangeValue = 0.5,
				ChangeType = "Multiply",
				ExtractValue =
				{
					ExtractAs = "TooltipSpeed",
					Format = "Percent",
				}
			},
		},
	},
	ShieldThrowRushTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Shield_16",
		RequiredWeapon = "ShieldWeapon",

		RequiredFalseTraits = { "ShieldThrowElectiveCharge", "ShieldTwoShieldTrait", },

		WeaponDataOverride =
		{
			ShieldThrow =
			{
				DashWeapon = "ShieldThrowDash",
			}
		},
		AddOutgoingDamageModifiers =
		{
			ValidWeapons = { "ShieldThrowDash" },
			ValidWeaponMultiplier = 3,
			ExcludeLinked = true,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamageIncrease",
					Format = "PercentDelta",
				}
			},
		},
		PropertyChanges =
		{
			{
				WeaponNames = {  "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "Speed",
				ChangeValue = 2,
				ChangeType = "Multiply",
				ExtractValue =
				{
					ExtractAs = "TooltipSpeedIncrease",
					Format = "PercentDelta",
				},
			},
		},
	},
	ShieldThrowElectiveCharge =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Shield_12",
		RequiredWeapon = "ShieldWeapon",
		RequiredFalseTraits = { "ShieldThrowSingleTargetTrait", "ShieldRushBonusProjectileTrait", "ShieldTwoShieldTrait" },
		WeaponDataOverride =
		{
			ShieldThrow =
			{
				Sounds =
				{
					ChargeSounds =
					{
						{
							Name = "/SFX/Player Sounds/ZagreusWeaponChargeup",
							Key = "ShieldThrowElectiveCharge",
							StoppedBy = { "ChargeCancel", "TriggerRelease", "Fired" },
							SetPitchToPropertyValue = "ChargeTime",
						},
						{
							Name = "/VO/ZagreusEmotes/EmoteRangedCharging",
							StoppedBy = { "ChargeCancel", "TriggerRelease", "Fired" },
						}
					},
					FireSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmoteRanged" },
						{ Name = "/SFX/Player Sounds/ZagreusBowFire" },
						{ Name = "/SFX/Player Sounds/ZagreusSpearThrow" },
					},
					ImpactSounds =
					{
						Invulnerable = "/SFX/SwordWallHitClank",
						Armored = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Bone = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Brick = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Stone = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Organic = "/SFX/Player Sounds/ZagreusShieldRicochet",
						StoneObstacle = "/SFX/Player Sounds/ZagreusShieldRicochet",
						BrickObstacle = "/SFX/Player Sounds/ZagreusShieldRicochet",
						MetalObstacle = "/SFX/Player Sounds/ZagreusShieldRicochet",
						BushObstacle = "/SFX/Player Sounds/ZagreusShieldRicochet",
					},
				},
			},
		},
		PropertyChanges =
		{
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "FireOnRelease",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "FullyAutomatic",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ShowFreeAimLine",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "LockTriggerForCharge",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeTime",
				ChangeValue = 0.6,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "MinChargeToFire",
				ChangeValue = 0.04,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "PerfectChargeWindowDuration",
				ChangeValue = 0.0,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "StartDelay",
				ChangeValue = 0.12,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeDamageMultiplier",
				ChangeValue = 3,
				ChangeType = "Absolute",
				ExcludeLinked = true,
				ExtractValue =
				{
					ExtractAs = "TooltipDamageBonus",
					Format = "PercentDelta"
				},
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusShieldHeavyThrow_Charge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusShieldHeavyThrow_Fire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "ShieldRushBonusProjectileTrait",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusShieldAlt01HeavyThrow_Charge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldRushBonusProjectileTrait",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusShieldAlt01HeavyThrow_Fire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "ShieldLoadAmmoTrait",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusShieldBeowulfHeavyThrow_Charge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldLoadAmmoTrait",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusShieldBeowulfHeavyThrow_Fire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponNames = { "ShieldThrow" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusShieldAlt02HeavyThrow_Charge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponNames = { "ShieldThrow" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusShieldAlt02HeavyThrow_Fire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "ShieldTwoShieldTrait",
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				ProjectileProperty = "StartDelay",
				ChangeValue = 0,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "ShieldThrow", "ShieldThrowDash" },
				WeaponProperty = "MinChargeStartFx",
				ChangeValue = "ShieldChargeThrowTrait",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		},
	},
	SpearDashMultiStrike =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Spear_10",
		RequiredWeapon = "SpearWeapon",
		PropertyChanges =
		{
			{
				WeaponNames = { "SpearWeaponDash" },
				WeaponProperty = "NumProjectiles",
				ChangeValue = 1,
				ChangeType = "Add",
				ExtractValue =
				{
					ExtractAs = "TooltipHits",
				},
			},
			{
				WeaponNames = { "SpearWeaponDash" },
				WeaponProperty = "ProjectileInterval",
				ChangeValue = 0.08,
				ChangeType = "Absolute",
			},
			{
				WeaponNames = { "SpearWeaponDash" },
				EffectName = "SpearDashDisableLong",
				EffectProperty = "Active",
				ChangeValue = true,
			},
			{
				WeaponNames = { "RushWeapon" },
				WeaponProperty = "WeaponRange",
				ChangeValue = 1.25,
				ChangeType = "Multiply",
				ExtractValue =
				{
					ExtractAs = "TooltipRangeBonus",
					Format = "PercentDelta",
				},
			},
		},
	},
	SpearAttackPhalanxTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Spear_13",
		RequiredWeapon = "SpearWeapon",
		PropertyChanges =
		{
			{
				WeaponNames = { "SpearWeapon", "SpearWeapon2", "SpearWeapon3", "SpearWeaponDash" },
				WeaponProperty = "NumProjectiles",
				ChangeValue = 3,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon", "SpearWeapon2", "SpearWeapon3", "SpearWeaponDash" },
				ProjectileProperty = "ImmunityDuration",
				ChangeValue = 0.05,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon" },
				WeaponProperty = "ProjectileSpacing",
				ChangeValue = 135,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon" },
				WeaponProperty = "ProjectileAngleOffset",
				ChangeValue = 0.10,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon2" },
				WeaponProperty = "ProjectileSpacing",
				ChangeValue = 165,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon2" },
				WeaponProperty = "ProjectileAngleOffset",
				ChangeValue = 0.20,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon3", "SpearWeaponDash" },
				WeaponProperty = "ProjectileSpacing",
				ChangeValue = 195,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon3", "SpearWeaponDash" },
				WeaponProperty = "ProjectileAngleOffset",
				ChangeValue = 0.40,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "SpearWeapon", "SpearWeapon2", "SpearWeapon3", "SpearWeaponDash" },
				WeaponProperty = "ProjectileOffsetStart",
				ChangeValue = "CENTER",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		},
	},
	GunHeavyBulletTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Gun_04",
		RequiredWeapon = "GunWeapon",
		RequiredFalseTraits = { "GunArmorPenerationTrait", "GunChainShotTrait", "GunLoadedGrenadeTrait"},
		PropertyChanges =
		{
			--[[
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				EffectName = "OnHitStun",
				EffectProperty = "Active",
				ChangeValue = true,
			},
			]]
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				EffectName = "OnHitSlow",
				EffectProperty = "Active",
				ChangeValue = true,
			},
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				ProjectileProperty = "DamageRadius",
				ChangeValue = 275,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				ProjectileProperty = "DamageRadiusScaleX",
				ChangeValue = 0.9,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				ProjectileProperty = "DamageRadiusScaleY",
				ChangeValue = 0.5,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				ProjectileProperty = "DetonateGraphic",
				ChangeValue = "MineExplosionFadeDecalGunTrait",
				ChangeType = "Absolute",
			},
			{
                WeaponNames = { "GunWeapon", "GunWeaponDash" },
                ProjectileProperty = "DetonateSound",
                ChangeValue = "/SFX/PlayerHammerExplosionsTight",
                ChangeType = "Absolute",
            },
		},
	},

	GunHomingBulletTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Gun_10",
		RequiredWeapon = "GunWeapon",
		RequiredFalseTraits = { "GunChainShotTrait", "GunShotgunTrait", "GunLoadedGrenadeTrait" },
		AddOutgoingDamageModifiers =
		{
			ValidWeapons = { "GunWeapon", "GunWeaponDash", "SniperGunWeapon", "SniperGunWeaponDash" },
			ValidWeaponMultiplier = 1.5,
			ExcludeLinked = true,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamageIncrease",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash", "SniperGunWeapon", "SniperGunWeaponDash" },
				ProjectileProperty = "MaxAdjustRate",
				ChangeValue = 10,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "GunWeapon", "GunWeaponDash", "SniperGunWeapon", "SniperGunWeaponDash" },
				ProjectileProperty = "AdjustRateAcceleration",
				ChangeValue = 25,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				ProjectileProperty = "Speed",
				ChangeValue = 0.30,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				ProjectileProperty = "MaxSpeed",
				ChangeValue = 0.30,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				ProjectileProperty = "Acceleration",
				ChangeValue = 0.30,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				ProjectileProperty = "Range",
				ChangeValue = 1.15,
				ChangeType = "Multiply",
				ExcludeLinked = true,
				ExtractValue =
				{
					ExtractAs = "TooltipRange",
					Format = "PercentDelta",
				},
			},

			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				WeaponProperty = "AutoLockRange",
				ChangeValue = 1.15,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				ProjectileProperty = "Fuse",
				ChangeValue = 0.85,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				ProjectileProperty = "Graphic",
				ChangeValue = "GunWeaponProjectile_Homing",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},

			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				TraitName = "AthenaWeaponTrait",
				ProjectileProperty = "Graphic",
				ChangeValue = "GunWeaponProjectile_Homing-Athena",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				TraitName = "AresWeaponTrait",
				ProjectileProperty = "Graphic",
				ChangeValue = "GunWeaponProjectile_Homing-Ares",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				TraitName = "ArtemisWeaponTrait",
				ProjectileProperty = "Graphic",
				ChangeValue = "GunWeaponProjectile_Homing-Artemis",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				TraitName = "AphroditeWeaponTrait",
				ProjectileProperty = "Graphic",
				ChangeValue = "GunWeaponProjectile_Homing-Aphrodite",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				TraitName = "DemeterWeaponTrait",
				ProjectileProperty = "Graphic",
				ChangeValue = "GunWeaponProjectile_Homing-Demeter",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				TraitName = "DionysusWeaponTrait",
				ProjectileProperty = "Graphic",
				ChangeValue = "GunWeaponProjectile_Homing-Dionysus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				TraitName = "PoseidonWeaponTrait",
				ProjectileProperty = "Graphic",
				ChangeValue = "GunWeaponProjectile_Homing-Poseidon",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "GunWeapon", "GunWeaponDash" },
				TraitName = "ZeusWeaponTrait",
				ProjectileProperty = "Graphic",
				ChangeValue = "GunWeaponProjectile_Homing-Zeus",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},


		},
	},
	FistHeavyAttackTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Fist_13",
		RequiredWeapon = "FistWeapon",
		-- RequiredFalseTraits = { "FistAttackFinisherTrait", "FistDetonateTrait" },
		PropertyChanges =
		{
			{
				WeaponName = "FistWeapon",
				SequenceName = "FistWeapon4",
				ChangeType = "Remove",
			},
			{
				WeaponName = "FistWeapon",
				SequenceName = "FistWeapon5",
				ChangeType = "Remove",
			},
			{
				WeaponNames = { "FistWeapon", "FistWeapon2", "FistWeapon3", "FistWeapon4", "FistWeapon5", "FistWeaponDash" },
				ProjectileProperty = "DamageLow",
				ChangeValue = 20,
				ChangeType = "Add",
				ExcludeLinked = true,
				ExtractValue =
				{
					ExtractAs = "TooltipDamage",
				},
			},
			{
				WeaponNames = { "FistWeapon", "FistWeapon2", "FistWeapon3", "FistWeapon4", "FistWeapon5" },
				ProjectileProperty = "DamageHigh",
				DeriveValueFrom = "DamageLow",
			},
			{
				WeaponNames = { "FistWeapon", "FistWeapon2", "FistWeaponDash" },
				WeaponProperty = "ChargeTime",
				ChangeValue = 1.05,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},
			{
				WeaponNames = { "FistWeapon3" },
				WeaponProperty = "ChargeTime",
				ChangeValue = 1.6,
				ChangeType = "Multiply",
				ExcludeLinked = true,
			},

			{
				WeaponName = "FistWeapon",
				EffectName = "FistChargeDisable",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "FistWeapon",
				EffectName = "FistChargeDisableAndLockTrigger",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},


			{
				WeaponName = "FistWeapon2",
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusFistDashHayMaker_Fire",
				ChangeType = "Absolute",
			},

			{
				WeaponName = "FistWeapon3",
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusFistGrab_Start",
				ChangeType = "Absolute",
			},
			{
				WeaponName = "FistWeapon3",
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusFistGrab_Fire",
				ChangeType = "Absolute",
			},

			{
				WeaponName = "FistWeapon2",
				EffectName = "FistChargeDisable2",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
			{
				WeaponName = "FistWeapon2",
				EffectName = "FistChargeDisableAndLockTrigger2",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
			{
				WeaponName = "FistWeapon3",
				EffectName = "FistChargeDisable2",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
			{
				WeaponName = "FistWeapon3",
				EffectName = "FistChargeDisableAndLockTrigger2",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
			{
				WeaponName = "FistWeapon3",
				WeaponProperty = "CooldownWeaponSlotThree",
				ChangeValue = 0.5,
				ChangeType = "Absolute",
			},
		},

		WeaponDataOverride =
		{
			FistWeapon3 =
			{
				Sounds =
				{
					FireSounds =
					{
						{ Name = "/VO/ZagreusEmotes/EmotePowerAttacking_Fist5" },
						{ Name = "/SFX/Player Sounds/ZagreusSwordOverhead" },
					},
					ImpactSounds =
					{
						Invulnerable = "/SFX/FistImpactSmall",
						Armored = "/SFX/Player Sounds/ZagreusShieldRicochet",
						Bone = "/SFX/FistImpactSmall",
						Brick = "/SFX/FistImpactSmall",
						Stone = "/SFX/FistImpactSmall",
						Organic = "/SFX/FistImpactSmall",
						StoneObstacle = "/SFX/FistImpactSmall",
						BrickObstacle = "/SFX/FistImpactSmall",
						MetalObstacle = "/SFX/FistImpactSmall",
						BushObstacle = "/Leftovers/World Sounds/LeavesRustle",
					},
				},
			}
		},

	},
	FistAttackFinisherTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Fist_08",
		RequiredWeapon = "FistWeapon",
		RequiredFalseTraits = { "FistChargeAttackTrait", "FistDetonateTrait" },
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier = 1.6,
			ValidWeapons = { "FistWeaponDash" },
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamageIncrease",
					Format = "PercentDelta",
				},
			}
		},
		PropertyChanges =
		{
			{
				WeaponName = "FistWeapon",
				SequenceName = "FistWeaponDash",
				ChangeType = "Remove",
			},
			{
				WeaponNames = { "FistWeapon5" },
				WeaponProperty = "CooldownWeaponSlotThree",
				ChangeValue = 0.5,
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				TraitName = "FistDetonateTrait",
				WeaponNames = { "FistWeaponDash" },
				WeaponProperty = "ControlWindow",
				ChangeValue = 0.35,
				ChangeType = "Absolute",
				ExcludeLinked = true,

			}
		},
	},
	SwordBlinkTrait =
	{
		InheritFrom = { "WeaponTrait" },
		Icon = "Weapon_Sword_14",
		PreEquipWeapons = {"SwordParryRecall", "SwordSpecialMiniDash"},
		RequiredWeapon = "SwordWeapon",
		OnWeaponChargeFunctions =
		{
			ValidWeapons = { "SwordParry", "SwordAOEWave" },
			FunctionName = "CheckRecallTeleportToNearbyEnemy",
			FunctionArgs =
			{
				RecallTime = 0.95, -- The effect duration below should always match this value
				Range = 0,
				NoTargetRange = 400,
				AutoLockArc = 40,
				AnimationData =
				{
					Default = { Animation = "SwordTeleportReturnPoint", DissipateFx = "SwordTeleportReturnPointDissipate" },
					SwordCriticalParryTrait = { Animation = "SwordTeleportReturnPoint_B", DissipateFx = "SwordTeleportReturnPointDissipate_B" },
					DislodgeAmmoTrait  = { Animation = "SwordTeleportReturnPoint_C", DissipateFx = "SwordTeleportReturnPointDissipate_C" },
					SwordConsecrationTrait  = {Animation =  "SwordTeleportReturnPoint_D", DissipateFx = "SwordTeleportReturnPointDissipate_D" },
				},
				ExtractValues =
				{
					{
						Key = "RecallTime",
						ExtractAs = "TooltipRecall",
					}
				}
			},
		},
		PropertyChanges =
		{
			--[[
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DamageLow",
				ChangeValue = 70,
				ChangeType = "Absolute",
				ExcludeLinked = true,
				ExtractValue =
				{
					ExtractAs = "TooltipDamage",
				},
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				ProjectileProperty = "DamageHigh",
				DeriveValueFrom = "DamageLow",
			},
			]]

			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "RemoveControlOnCharge",
				ChangeValue = "SwordWeapon",
				ChangeType = "Absolute",
				ExcludeLinked = true
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "RemoveControlOnCharge2",
				ChangeValue = "SwordWeapon2",
				ChangeType = "Absolute",
				ExcludeLinked = true
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "RemoveControlOnCharge3",
				ChangeValue = "SwordWeapon3",
				ChangeType = "Absolute",
				ExcludeLinked = true
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "RemoveControlOnCharge4",
				ChangeValue = "RangedWeapon",
				ChangeType = "Absolute",
				ExcludeLinked = true
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "RemoveControlOnCharge5",
				ChangeValue = "SwordWeaponDash",
				ChangeType = "Absolute",
				ExcludeLinked = true
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "AddControlOnFire2",
				ChangeValue = "RangedWeapon",
				ChangeType = "Absolute",
				ExcludeLinked = true
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "AddControlOnChargeCancel",
				ChangeValue = "SwordWeapon",
				ChangeType = "Absolute",
				ExcludeLinked = true
			},
			{
				TraitName = "SwordHeavySecondStrikeTrait",
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "AddControlOnChargeCancel",
				ChangeValue = "SwordWeapon2",
				ChangeType = "Absolute",
				ExcludeLinked = true
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "AddControlOnChargeCancel2",
				ChangeValue = "RangedWeapon",
				ChangeType = "Absolute",
				ExcludeLinked = true
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "AcceptTriggerLockRequests",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ClearFireRequestOnSwap",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "LockTriggerTransferFromOnSwap",
				ChangeValue = true,
				ChangeType = "Absolute",
				ExcludeLinked = true
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "IgnoreTriggerLockDuringCooldown",
				ChangeValue = false,
				ChangeType = "Absolute",
				ExcludeLinked = true
			},

			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordBlinkTraitDefense",
				EffectProperty = "Active",
				ChangeValue = true,
				ChangeType = "Absolute",
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				EffectName= "SwordBlinkTraitDefense",
				EffectProperty = "Modifier",
				BaseMin = 0.7,
				BaseMax = 0.7,
				SourceIsMultiplier = true,
				ChangeType = "Absolute",
				ExtractValue =
				{
					ExtractAs = "TooltipDamageReduction",
					Format = "PercentDelta",
				}
			},
			{
				WeaponNames = { "SwordParry", "SwordAOEWave" },
				EffectName = "SwordBlinkTraitDefense",
				EffectProperty = "Duration",
				ChangeValue = 1.0,
				ChangeType = "Absolute",
				ExtractValue =
				{
					ExtractAs = "TooltipDuration",
					DecimalPlaces = 2,
				}
			},
		}
	},
	DislodgeAmmoTrait =
	{
		Icon = "WeaponEnchantment_Sword02",
		CustomTrayText = "DislodgeAmmoTrait_Tray",
		InheritFrom = { "WeaponEnchantmentTrait" },
		PostWeaponUpgradeScreenAnimation = "ZagreusSwordAlt02Attack2_ReturnToIdle_Loop",
		RequiredWeapon = "SwordWeapon",
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier =
			{
				BaseValue = 1.10,
				SourceIsMultiplier = true,
			},
			ValidWeapons = WeaponSets.HeroNonPhysicalWeapons,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamage",
					Format = "PercentDelta",
				},
			}
		},
		DislodgeAmmoProperties =
		{
			ValidWeapons = { "SwordParry", "SwordAOEWave" },
			ForceMin = 300,
			ForceMax = 420
		},
		DroppedAmmoForceMultiplier = 5,
		WeaponBinks =
		{
			"ZagreusSword02_Bink",
			"ZagreusSword02ReturnToIdle_Bink",
			"ZagreusSword02DashAttack_Bink",
			"ZagreusSword02Run_Bink",
			"ZagreusSword02RunStop_Bink",
			"ZagreusSword02Parry_Bink"
		},
		WeaponDataOverride =
		{
			SwordWeapon =
			{
				WeaponBinks =
				{
					"ZagreusSword02_Bink",
					"ZagreusSword02ReturnToIdle_Bink",
					"ZagreusSword02DashAttack_Bink",
					"ZagreusSword02Run_Bink",
					"ZagreusSword02RunStop_Bink",
					"ZagreusSword02Parry_Bink"
				},
			},
			RangedWeapon =
			{
				NotReadyAmmoInEnemyText = "RetrieveAmmoOrDislodgeFromEnemy",
			}
		},
		PropertyChanges =
		{
			{
				WeaponName = "SwordWeapon",
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordAlt02Charge1",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon",
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordAlt02Attack1",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordAlt02Charge2",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon2",
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordAlt02Attack2",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon3",
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordAlt02Charge3",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeapon3",
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordAlt02Attack3",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordAlt02ParryFire",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = { "SwordParry", "SwordAOEWave" },
				WeaponProperty = "ChargeStartAnimation",
				ChangeValue = "ZagreusSwordAlt02ParryCharge",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
			{
				WeaponName = "SwordWeaponDash",
				WeaponProperty = "FireGraphic",
				ChangeValue = "ZagreusSwordAlt02DashAttack",
				ChangeType = "Absolute",
				ExcludeLinked = true,
			},
		}
	},
	BouldyBlessing_Armor =
	{
		InheritFrom = { "BouldyBlessing" },
		RarityLevels =
		{
			Common =
			{
				MinMultiplier = 1.0,
				MaxMultiplier = 1.0,
			},
			Rare =
			{
				MinMultiplier = 2.0,
				MaxMultiplier = 2.0,
			},
			Epic =
			{
				MinMultiplier = 3.0,
				MaxMultiplier = 3.0,
			},
			Heroic =
			{
				MinMultiplier = 4.0,
				MaxMultiplier = 4.0,
			}
		},
		AddIncomingDamageModifiers =
		{
			NonTrapDamageTakenMultiplier =
			{
				BaseMin = 0.90,
				BaseMax = 0.90,
				SourceIsMultiplier = true,
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
			},
			ExtractValues =
			{
				{
					Key = "NonTrapDamageTakenMultiplier",
					ExtractAs = "TooltipDamageReduction",
					Format = "NegativePercentDelta",
				},
			}
		}
	},
	BouldyBlessing_Attack =
	{
		InheritFrom = { "BouldyBlessing" },
		RarityLevels =
		{
			Common =
			{
				MinMultiplier = 1.0,
				MaxMultiplier = 1.0,
			},
			Rare =
			{
				MinMultiplier = 2.0,
				MaxMultiplier = 2.0,
			},
			Epic =
			{
				MinMultiplier = 3.0,
				MaxMultiplier = 3.0,
			},
			Heroic =
			{
				MinMultiplier = 4.0,
				MaxMultiplier = 4.0,
			}
		},
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier =
			{
				BaseMin = 1.10,
				BaseMax = 1.10,
				SourceIsMultiplier = true,
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
			},
			ValidWeapons = WeaponSets.HeroPhysicalWeapons,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamage",
					Format = "PercentDelta",
				},
			}
		},
	},
	BouldyBlessing_Special =
	{
		InheritFrom = { "BouldyBlessing" },
		RarityLevels =
		{
			Common =
			{
				MinMultiplier = 1.0,
				MaxMultiplier = 1.0,
			},
			Rare =
			{
				MinMultiplier = 2.0,
				MaxMultiplier = 2.0,
			},
			Epic =
			{
				MinMultiplier = 3.0,
				MaxMultiplier = 3.0,
			},
			Heroic =
			{
				MinMultiplier = 4.0,
				MaxMultiplier = 4.0,
			}
		},
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier =
			{
				BaseMin = 1.10,
				BaseMax = 1.10,
				SourceIsMultiplier = true,
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
			},
			ValidWeapons = WeaponSets.HeroSecondaryWeapons,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamage",
					Format = "PercentDelta",
				},
			}
		},
	},
	BouldyBlessing_Ranged =
	{
		InheritFrom = { "BouldyBlessing" },
		RarityLevels =
		{
			Common =
			{
				MinMultiplier = 1.0,
				MaxMultiplier = 1.0,
			},
			Rare =
			{
				MinMultiplier = 2.0,
				MaxMultiplier = 2.0,
			},
			Epic =
			{
				MinMultiplier = 3.0,
				MaxMultiplier = 3.0,
			},
			Heroic =
			{
				MinMultiplier = 4.0,
				MaxMultiplier = 4.0,
			}
		},
		AddOutgoingDamageModifiers =
		{
			ValidWeaponMultiplier =
			{
				BaseMin = 1.10,
				BaseMax = 1.10,
				SourceIsMultiplier = true,
				IdenticalMultiplier =
				{
					Value = DuplicateMultiplier,
				},
			},
			ValidWeapons = WeaponSets.HeroNonPhysicalWeapons,
			ExtractValues =
			{
				{
					Key = "ValidWeaponMultiplier",
					ExtractAs = "TooltipDamage",
					Format = "PercentDelta",
				},
			}
		},
	},
	BouldyBlessing_Speed =
	{
		InheritFrom = { "BouldyBlessing" },
		RarityLevels =
		{
			Common =
			{
				MinMultiplier = 1.0,
				MaxMultiplier = 1.0,
			},
			Rare =
			{
				MinMultiplier = 2.0,
				MaxMultiplier = 2.0,
			},
			Epic =
			{
				MinMultiplier = 3.0,
				MaxMultiplier = 3.0,
			},
			Heroic =
			{
				MinMultiplier = 4.0,
				MaxMultiplier = 4.0,
			}
		},
		PropertyChanges =
		{
			{
				UnitProperty = "Speed",
				BaseMin = 1.10,
				BaseMax = 1.10,
				ChangeType = "Multiply",
				ExtractValue =
				{
					ExtractAs = "TooltipSpeed",
					Format = "PercentDelta",
				}
			},
		}
	},
	BouldyBlessing_Money =
	{
		InheritFrom = { "BouldyBlessing" },
		RarityLevels =
		{
			Common =
			{
				MinMultiplier = 1.0,
				MaxMultiplier = 1.0,
			},
			Rare =
			{
				MinMultiplier = 2.0,
				MaxMultiplier = 2.0,
			},
			Epic =
			{
				MinMultiplier = 3.0,
				MaxMultiplier = 3.0,
			},
			Heroic =
			{
				MinMultiplier = 4.0,
				MaxMultiplier = 4.0,
			}
		},
		MoneyMultiplier =
		{
			BaseMin = 1.10,
			BaseMax = 1.10,
			ToNearest = 0.01,
			SourceIsMultiplier = true,
		},
		ExtractValues =
		{
			{
				Key = "MoneyMultiplier",
				ExtractAs = "TooltipMoneyRewardIncrease",
				Format = "PercentDelta",
			},
		}
	},
}