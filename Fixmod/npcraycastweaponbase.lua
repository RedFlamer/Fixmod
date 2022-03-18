Hooks:PostHook(NPCRaycastWeaponBase, "init", "fixmod_init", function(self)
	-- actually use suppressed muzzleflash if applicable
	if self:weapon_tweak_data().has_suppressor then
		self._muzzle_effect = Idstring(self:weapon_tweak_data().muzzleflash_silenced or "effects/payday2/particles/weapons/9mm_auto_silence")
		self._muzzle_effect_table.effect = self._muzzle_effect
	end
end)