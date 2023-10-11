ModUtil.Path.Wrap("InitHeroLastStands", function( baseFunction, newHero, ... )
	for s = 1, GetNumMetaUpgrades("ExtraChanceMetaUpgrade" ) do
		for i = 1, MetaUpgradeData["ExtraChanceMetaUpgrade"].ChangeValue do
			AddLastStand({
				Unit = newHero,
				IncreaseMax = true,
				Icon = "ExtraLifeZag",
				WeaponName = "LastStandMetaUpgradeShield",
				HealFraction = 0.5,
				Silent = true
			})
		end
	end
	if GetNumMetaUpgrades("ExtraChanceReplenishMetaUpgrade" ) > 0 then
		AddLastStand({
			Name = "ExtraChanceReplenishMetaUpgrade",
			Unit = newHero,
			IncreaseMax = true,
			Icon = "ExtraLifeReplenish",
			WeaponName = "LastStandMetaUpgradeShield",
			HealFraction = MetaUpgradeData.ExtraChanceReplenishMetaUpgrade.HealPercent,
			Silent = true
		})
	end
end, HadeanRebirth )