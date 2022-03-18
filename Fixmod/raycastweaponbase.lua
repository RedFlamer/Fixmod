local check_autoaim_orig = RaycastWeaponBase.check_autoaim
function RaycastWeaponBase:check_autoaim(...)
	local closest_ray, suppression_enemies = check_autoaim_orig(self, ...)
	if suppression_enemies then
		for k, v in pairs(suppression_enemies) do
			suppression_enemies[k] = 1 - v
		end
	end

	return closest_ray, suppression_enemies
end