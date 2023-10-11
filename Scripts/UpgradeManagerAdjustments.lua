ModUtil.Path.Wrap("ApplyWeaponPropertyChanges", function( baseFunction, unit, weaponName, propertyChanges, reverse, ... )
	if propertyChanges == nil then
		return
	end
	unit.CurrentWeaponSequence = unit.BaseWeaponSequence
	baseFunction( unit, weaponName, propertyChanges, reverse, ... )
	ApplyCurrentWeaponSequence( unit )
end, HadeanRebirth )

ModUtil.Path.Wrap("ApplyWeaponPropertyChange", function( baseFunction, unit, weaponName, propertyChange, reverse, ... )
	if propertyChange.LegalWeapons ~= nil then
		if not Contains( propertyChange.LegalWeapons, weaponName ) then
			return
		end
	end
	if propertyChange.LegalWeapon ~= nil then
		if propertyChange.LegalWeapon ~= weaponName then
			return
		end
	end
	if propertyChange.LegalUnits ~= nil then
		if not Contains( propertyChange.LegalUnits, unit.Name ) then
			return
		end
	end
	-- handle weapon sequence rework
	if propertyChange.SequenceName ~= nil then
		if propertyChange.ChangeType == "Remove" then
			DebugPrint({ Text = tostring(#unit.CurrentWeaponSequence) .. ", updating sequence" })
			for i = #unit.CurrentWeaponSequence, 1, -1 do
				local weaponInSequence = unit.CurrentWeaponSequence[i]
				if weaponInSequence == propertyChange.SequenceName then
					DebugPrint({ Text = "updating sequence" })
					table.remove( unit.CurrentWeaponSequence, i ) -- default to appending
				end
			end
		elseif propertyChange.ChangeType == "Add" then
			table.insert( unit.CurrentWeaponSequence, changeValue or #unit.CurrentWeaponSequence, i )
		elseif propertyChange.ChangeType == "Shuffle" then
			for i = #unit.CurrentWeaponSequence, 1, -1 do
				local weaponInSequence = unit.CurrentWeaponSequence[i]
				if weaponInSequence == propertyChange.SequenceName then
					table.remove( unit.CurrentWeaponSequence, i )
				end
				table.insert( unit.CurrentWeaponSequence, changeValue or #unit.CurrentWeaponSequence, i )
			end
		elseif propertyChange.ChangeType == "Absolute" then
			unit.CurrentWeaponSequence = {}
			table.insert( unit.CurrentWeaponSequence, propertyChange.SequenceName )
		end
	end
	return baseFunction( unit, weaponName, propertyChange, reverse, ... )
end, HadeanRebirth )

ModUtil.Path.Wrap("ApplyUnitPropertyChanges", function( baseFunction, unit, propertyChanges, applyLuaUpgrades, reverse, ... )
	if propertyChanges == nil then
		return
	end
	unit.CurrentWeaponSequence = unit.BaseWeaponSequence
	baseFunction( unit, propertyChanges, applyLuaUpgrades, reverse, ... )
	ApplyCurrentWeaponSequence( unit )
end, HadeanRebirth )



	