Hooks:PostHook(CharacterTweakData, "init", "fixmod_init", function(self)
	self.gensec.suppression = self.presets.suppression.easy -- weak enemy, so only easy suppression

	self.medic.suppression = nil -- no suppression

	self.tank.ecm_vulnerability = 0 -- bugs out if they get affected by it

	-- prevent phalanx from meleeing, since it's just buggy
	for _, weapon in pairs(self.phalanx_minion.weapon) do
		weapon.melee_speed = nil
		weapon.melee_dmg = nil
		weapon.melee_retry_delay = nil
	end

	for _, weapon in pairs(self.phalanx_vip.weapon) do
		weapon.melee_speed = nil
		weapon.melee_dmg = nil
		weapon.melee_retry_delay = nil
	end
end)