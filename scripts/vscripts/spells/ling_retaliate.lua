--[[
	Author: Noya
	Date: 9.1.2015.
	Does base damage plus a percent of the hero strength
]]
function Return( event )
	-- Variables
	local caster = event.caster
	local attacker = event.attacker
	local ability = event.ability
	local damage = ability:GetLevelSpecialValueFor( "return_damage" , ability:GetLevel() - 1  )
	local damageType = ability:GetAbilityDamageType()
	local return_damage = damage

	-- Damage
	if attacker:GetTeamNumber() ~= caster:GetTeamNumber() then
		ApplyDamage({ victim = attacker, attacker = caster, damage = return_damage, damage_type = damageType })
		print("done "..return_damage)
	end
end