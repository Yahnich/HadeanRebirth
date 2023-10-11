ModUtil.Path.Wrap("EquipWeaponUpgrade", function( baseFunction, hero, args, ... )
	baseFunction( hero, args, ... )
	SetupWeaponSequence( hero )
end, HadeanRebirth )