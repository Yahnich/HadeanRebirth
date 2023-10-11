MetaUpgradeDataUpdate =
{
	HealthMetaUpgrade =
	{
		InheritFrom = { "BaseMetaUpgrade", },
		Icon = "MirrorIcon_StartingHealth",
		RequiredAccumulatedMetaPoints = 200,
		Starting = true,
		CostTable = { 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 1000, 1250, 1500, 1750, 2000, 2500, 3000, 3500, 4000, 5000, 6000, 7000, 8000, 9000, 10000 },
		ShortTotal = "HealthMetaUpgrade_ShortTotal",
		ShortTotalNoIcon = "HealthMetaUpgrade_ShortTotalNoIcon",
		ChangeValue = 5,
		PropertyChanges =
		{
			{
				LuaProperty = "MaxHealth",
				ChangeValue = 5,
				ChangeType = "Add",
			},
		}
	},
	ExtraChanceReplenishMetaUpgrade=
	{
		InheritFrom = { "BaseMetaUpgrade", },
		Icon = "MirrorIcon_ExtraChanceReplenish",
		Starting = true,
		CostTable = { 600, 1800, 5400 },
		Color = { 255, 255, 255, 255 },
		ShortTotal = "ExtraChanceReplenishMetaUpgrade_ShortTotal",
		ShortTotalNoIcon = "ExtraChanceReplenishMetaUpgrade_ShortTotalNoIcon",
		BaseValue = 20,
		ChangeValue = 10,
		Uses = 1,
		KeywordOverride =
		{
			Key = "ExtraChance",
			Value = "ExtraChanceAlt",
		},
	},
}