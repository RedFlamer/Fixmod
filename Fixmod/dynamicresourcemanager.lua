local overrides = {
	["units/payday2/weapons/wpn_npc_s552/wpn_npc_s552"] = "unit",
	["units/payday2/weapons/wpn_npc_sawnoff_shotgun/wpn_npc_sawnoff_shotgun"] = "unit",
	["units/payday2/weapons/wpn_npc_ump/wpn_npc_ump"] = "unit",

	["units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg"] = "unit",
	["units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg_husk"] = "unit",

	["units/pd2_dlc_mad/weapons/wpn_npc_akmsu/wpn_npc_akmsu"] = "unit",
	["units/pd2_dlc_mad/weapons/wpn_npc_asval/wpn_npc_asval"] = "unit",
	["units/pd2_dlc_mad/weapons/wpn_npc_rpk/wpn_npc_rpk"] = "unit",
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