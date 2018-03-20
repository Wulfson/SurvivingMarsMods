function PickInterest(unit)
	local interests = GetInterests(unit)

	if g_ColonyNotViableUntil ~= -1 then
		table.remove_entry(interests, "interestLuxury")
		table.remove_entry(interests, "interestGambling")
	end

	return table.rand(interests)
end
