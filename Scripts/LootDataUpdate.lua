LootDataUpdate = 
{
	WeaponUpgrade = 
	{
		Traits = 
		{
			"SwordAOESecondStrikeTrait"
		}
	},
}

RewardStoreDataUpdate = {
	RunProgress = 
	{
		{
			Name = "WeaponUpgrade",
			GameStateRequirements =
			{
				RequiredFalseConsumablesThisRun = { "ChaosWeaponUpgrade" },
				RequiredMaxWeaponUpgrades = 1,
				RequiredNotInStoreNames = { "ChaosWeaponUpgrade", "WeaponUpgradeDrop" },
				RequiredMinCompletedRuns = 3,
				RequiredMinDepth = 13,
			}
		},
	},
}