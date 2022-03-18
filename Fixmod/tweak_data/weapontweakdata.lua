Hooks:PostHook(WeaponTweakData, "_set_sm_wish", "fixmod_set_sm_wish", function(self)
	self.benelli_npc.DAMAGE = 7 -- scale the benelli to the same as the r870
end)

Hooks:PostHook(WeaponTweakData, "init", "fixmod_init", function(self)
    self.beretta92_npc.has_suppressor = "suppressed_b" -- suppressed

	self.ak47_ass_npc.sounds.prefix = "akm_npc" -- actually use ak sounds
	self.ak47_ass_npc.muzzleflash = "effects/payday2/particles/weapons/762_auto" -- proper muzzleflash

	self.m14_npc.FIRE_MODE = "auto" -- not set right

    self.benelli_npc.sounds.prefix = "benelli_m4_npc" -- actually use benelli sounds

    self.mac11_npc.sounds.prefix = "mac10_npc" -- actually use mac11 sounds

	-- what it should've been in early PD2 lua
	self.mossberg_npc.sounds.prefix = "huntsman_npc"
	self.mossberg_npc.DAMAGE = 12
	self.mossberg_npc.shell_ejection = "effects/payday2/particles/weapons/shells/shell_empty" -- no shell ejection on a double barrel shotgun
	self.mossberg_npc.CLIP_AMMO_MAX = 2 -- proper clip size, it's a double barrel not a sextuple barrel
	-- slightly irrelevant changes
	self.mossberg_npc.NR_CLIPS_MAX = 4
	self.mossberg_npc.alert_size = 4500
	self.mossberg_npc.suppression = 1.8

	self.ump_npc.sounds.prefix = "schakal_npc" -- actually use ump sounds, this soundbank was added way after the weapon, so i can't blame them really

	self.akmsu_smg_npc.sounds.prefix = "akmsu_npc" -- actually use akmsu sounds
	self.akmsu_smg_npc.shell_ejection = "effects/payday2/particles/weapons/shells/shell_556"

	self.asval_smg_npc.sounds.prefix = "val_npc" -- actually use asval sounds
	self.asval_smg_npc.muzzleflash_silenced = "effects/payday2/particles/weapons/9mm_auto_silence"
	self.asval_smg_npc.has_suppressor = "suppressed_a"

	-- chunky suppressor
	self.s552_npc.muzzleflash_silenced = "effects/payday2/particles/weapons/9mm_auto_silence"
	self.s552_npc.has_suppressor = "suppressed_c"

	self.rpk_lmg_npc.sounds.prefix = "rpk_npc" -- actually use rpk sounds
end)