local overrides = {
	["units/payday2/characters/ene_fbi_3/ene_fbi_3"] = "unit", -- wrong tweak_table
	["units/payday2/characters/ene_fbi_3/ene_fbi_3_husk"] = "unit", -- wrong tweak_table

	["units/payday2/weapons/wpn_npc_s552/wpn_npc_s552"] = "unit", -- wrong soundbank
	["units/payday2/weapons/wpn_npc_sawnoff_shotgun/wpn_npc_sawnoff_shotgun"] = "unit", -- wrong soundbank
	["units/payday2/weapons/wpn_npc_ump/wpn_npc_ump"] = "unit", -- wrong soundbank

	["units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg"] = "unit", -- wrong weapon
	["units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg_husk"] = "unit", -- wrong weapon

	["units/pd2_dlc_mad/weapons/wpn_npc_akmsu/wpn_npc_akmsu"] = "unit", -- wrong soundbank
	["units/pd2_dlc_mad/weapons/wpn_npc_asval/wpn_npc_asval"] = "unit", -- wrong soundbank
	["units/pd2_dlc_mad/weapons/wpn_npc_rpk/wpn_npc_rpk"] = "unit", -- wrong soundbank
}

Hooks:PostHook(DynamicResourceManager, "preload_units", "fixmod_preload_units", function(self)
	for path, extension in pairs(overrides) do
		local ids_path = Idstring(path)
		local ids_extension = Idstring(extension)
		if PackageManager:has(ids_extension, ids_path) then
			BLT.AssetManager:CreateEntry(ids_path, ids_extension, Fixmod.mod_path .. path .. "." .. extension)
			PackageManager:reload(ids_extension, ids_path)
			self:load(ids_extension, ids_path, self.DYN_RESOURCES_PACKAGE)
		end
	end
end)