ModUtil.Path.Context.Env( "ManualReload", function( )
	ModUtil.Path.Wrap( "HeroHasTrait", function( baseFunction, traitName, ... )
		if traitName == "GunManualReloadTrait" then
		   return false
		end
		return baseFunction( traitName, ... )
	end, HadeanRebirth )  
end)

ModUtil.Path.Wrap("ReloadGun", function( baseFunction, attacker, weaponData, ... )
	if attacker == nil or attacker.HandlingDeath or attacker.Reloading or attacker.SurgeActive then -- repeat check to make sure everything's alright
		return false
	end
	if HeroHasTrait("GunManualReloadTrait") then
		thread( MarkObjectiveComplete, "ManualReload" )
		ApplyEffectFromWeapon({ Id = CurrentRun.Hero.ObjectId, DestinationId = CurrentRun.Hero.ObjectId, WeaponName = "ManualReloadEffectApplicator", EffectName = "ManualReloadBonus" })
	end
	return baseFunction( attacker, weaponData, ... )
end, HadeanRebirth )

ModUtil.Path.Wrap("AddLastStand", function( baseFunction, args, ... )
	local unit = args.Unit or CurrentRun.Hero
	if args.Name == "ExtraChanceReplenishMetaUpgrade" then
		unit.MaxLastStands = 1
		args.HealFraction = (MetaUpgradeData.ExtraChanceReplenishMetaUpgrade.BaseValue + GetNumMetaUpgrades("ExtraChanceReplenishMetaUpgrade") * MetaUpgradeData.ExtraChanceReplenishMetaUpgrade.ChangeValue)/100
		if unit.MaxLastStands > TableLength( unit.LastStands ) then
			return baseFunction( args, ... )
		end
	else
		return baseFunction( args, ... )
	end
end, HadeanRebirth )

ModUtil.Path.Context.Env( "EquipPlayerWeapon", function( )
	ModUtil.Path.Wrap( "ReapplyWeaponSwitchMetaUpgrades", function( baseFunction, ... )
		ApplyCurrentWeaponSequence( CurrentRun.Hero )
		return baseFunction( ... )
	end, HadeanRebirth )  
end )

function SetupWeaponSequence( hero )
	if not hero then return end
	local currentWeaponInSlot = GetEquippedWeapon()
	local mainWeaponSequence
	
	for weaponName, sequence in pairs( WeaponSequences ) do
		for _, weaponInSequence in ipairs( sequence ) do
			if currentWeaponInSlot == weaponInSequence then
				mainWeaponSequence = sequence
				break
			end
		end
	end
	
	if not mainWeaponSequence then
		return
	end
	
	 -- set this up to juggle properties later
	hero.BaseWeaponSequence = mainWeaponSequence
	hero.CurrentWeaponSequence = hero.BaseWeaponSequence
end

function ApplyCurrentWeaponSequence( hero )
	if hero.CurrentWeaponSequence == nil then
		SetupWeaponSequence( hero )
	end
	if not hero then return end
	if not hero.CurrentWeaponSequence then return end
	for index, weaponInSequence in ipairs( hero.CurrentWeaponSequence ) do
		if hero.CurrentWeaponSequence[index+1] == nil then -- addonfire
			SetWeaponProperty({ WeaponName = hero.CurrentWeaponSequence[index], DestinationId = hero.ObjectId, Property = "AddOnFire", Value = hero.CurrentWeaponSequence[1], ValueChangeType = "Absolute" })
			SetWeaponProperty({ WeaponName = hero.CurrentWeaponSequence[index], DestinationId = hero.ObjectId, Property = "SwapOnFire", Value = "null", ValueChangeType = "Absolute" })
		else -- swaponfire
			SetWeaponProperty({ WeaponName = hero.CurrentWeaponSequence[index], DestinationId = hero.ObjectId, Property = "SwapOnFire", Value = hero.CurrentWeaponSequence[index+1], ValueChangeType = "Absolute" })
		end
	end
end