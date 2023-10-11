if ModUtil ~= nil then
	ModUtil.Mod.Register("HadeanRebirth")
	if HRMod.Config == nil then return end
	if HRMod.Config.Gameplay then
		ModUtil.LoadOnce(function()
			Import "../Mods/HadeanRebirth/Scripts/TraitDataUpdate.lua"
			for trait, traitData in pairs( TraitDataUpdate ) do
				TraitData[trait] = nil
				TraitData[trait] = traitData
			end
			
			Import "../Mods/HadeanRebirth/Scripts/KeywordDataUpdate.lua"
			ModUtil.Table.Replace(KeywordList, ModUtil.Array.Join(KeywordList, KeywordListUpdate))
			ResetKeywords()
			
			Import "../Mods/HadeanRebirth/Scripts/LootDataUpdate.lua"
			ModUtil.Table.Replace(LootData.WeaponUpgrade.Traits, ModUtil.Array.Join(LootData.WeaponUpgrade.Traits, LootDataUpdate.WeaponUpgrade.Traits))
			ModUtil.Table.Replace(RewardStoreData.RunProgress, ModUtil.Array.Join(RewardStoreData.RunProgress, RewardStoreDataUpdate.RunProgress))
			
			Import "../Mods/HadeanRebirth/Scripts/WeaponSequences.lua"
			Import "../Mods/HadeanRebirth/Scripts/CombatAdjustments.lua"
			Import "../Mods/HadeanRebirth/Scripts/UpgradeManagerAdjustments.lua"
			Import "../Mods/HadeanRebirth/Scripts/WeaponUpgradeScriptsAdjustments.lua"
		end)
	end
	if HRMod.Config.Meta then
		ModUtil.LoadOnce(function()
			Import "../Mods/HadeanRebirth/Scripts/MetaUpgradeDataUpdate.lua"
			for metaUpgrade, metaUpgradeData in pairs( MetaUpgradeDataUpdate ) do
				MetaUpgradeData[metaUpgrade] = nil
				MetaUpgradeData[metaUpgrade] = metaUpgradeData
			end
		end)
	end
end