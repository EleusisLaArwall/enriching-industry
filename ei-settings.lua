local ei_settings = require ("ei-defaults")

--local ei_settings = {}
ei_settings.ei_selection_setup = settings.startup["ei-selection-setup"].value
ei_settings.ei_ci_overwrite = settings.startup["ei-ci-overwrite"].value
ei_settings.ei_productivity_precursor = settings.startup["ei-productivity-precursor"].value

-- if ei_settings.ei_selection_setup == "ci" then
-- 	ei_settings = ei_defaults
-- end

if ei_settings.ei_selection_setup == "small" then
--	ei_settings = ei_defaults
--	ei_settings.ei_selection_setup = "small"
--	ei_settings.ei_stone_crush_bonus_precursor = 0.02
	ei_settings.ei_stone_wash_bonus_direct = 0.25
	ei_settings.ei_crush_bonus_direct = 0.25
	ei_settings.ei_wash_bonus_direct = 0.25
	ei_settings.ei_leach_sulfuric_acid = 2.5
	ei_settings.ei_leach_bonus_direct = 2.5
	ei_settings.ei_recry_bonus_direct = 0.25
	ei_settings.ei_recry_byprod = 0.1
	ei_settings.ei_nonmetal_byproduct_sulfur_recrystall = 0.1
end

if ei_settings.ei_selection_setup == "prec" then
--	ei_settings = ei_defaults
--	ei_settings.ei_selection_setup = "prec"
	ei_settings.ei_stone_crush_bonus_precursor = 0.1
	ei_settings.ei_stone_wash_bonus_direct = 0
	ei_settings.ei_stone_wash_bonus_primprec = 0.1
	ei_settings.ei_stone_wash_bonus_secoprec = 0.05
	ei_settings.ei_crush_bonus_direct = 0
	ei_settings.ei_crush_bonus_precursor = 0.1
	ei_settings.ei_crush_byprod_sand = 0.05
	ei_settings.ei_wash_bonus_direct = 0
	ei_settings.ei_wash_bonus_primprec = 0.1
	ei_settings.ei_wash_bonus_secoprec = 0.05
	ei_settings.ei_leach_sulfuric_acid = 1
	ei_settings.ei_leach_bonus_direct = 0
	ei_settings.ei_leach_bonus_primprec = 0.1
	ei_settings.ei_recry_bonus_direct = 0
	ei_settings.ei_recry_byprod = 0.2
	ei_settings.ei_nonmetal_byproduct_sulfur_recrystall = 0.1
end

if ei_settings.ei_selection_setup == "custom" then
--	ei_settings.ei_ci_overwrite = settings.startup["ei-ci-overwrite"].value
--	ei_settings.ei_productivity_precursor = settings.startup["ei-productivity-precursor"].value
	ei_settings.ei_stone_crush_bonus_precursor = settings.startup["ei-stone-crush-bonus-precursor"].value * 0.01
	ei_settings.ei_stone_wash_bonus_direct = settings.startup["ei-stone-wash-bonus-direct"].value * 0.01
	ei_settings.ei_stone_wash_bonus_primprec = settings.startup["ei-stone-wash-bonus-primprec"].value * 0.01
	ei_settings.ei_stone_wash_bonus_secoprec = settings.startup["ei-stone-wash-bonus-secoprec"].value * 0.01
	ei_settings.ei_crush_bonus_direct = settings.startup["ei-crush-bonus-direct"].value * 0.01
	ei_settings.ei_crush_bonus_precursor = settings.startup["ei-crush-bonus-precursor"].value * 0.01
	ei_settings.ei_crush_byprod_sand = settings.startup["ei-crush-byprod-sand"].value * 0.01
	ei_settings.ei_wash_bonus_direct = settings.startup["ei-wash-bonus-direct"].value * 0.01
	ei_settings.ei_wash_bonus_primprec = settings.startup["ei-wash-bonus-primprec"].value * 0.01
	ei_settings.ei_wash_bonus_secoprec = settings.startup["ei-wash-bonus-secoprec"].value * 0.01
	ei_settings.ei_leach_sulfuric_acid = settings.startup["ei-leach-sulfuric-acid"].value
	ei_settings.ei_leach_bonus_direct = settings.startup["ei-leach-bonus-direct"].value * 0.1
	ei_settings.ei_leach_bonus_primprec = settings.startup["ei-leach-bonus-primprec"].value * 0.01
	ei_settings.ei_recry_bonus_direct = settings.startup["ei-recry-bonus-direct"].value * 0.01
	ei_settings.ei_recry_byprod = settings.startup["ei-recry-byprod"].value * 0.01
	ei_settings.ei_nonmetal_byproduct_sulfur_recrystall = settings.startup["ei-nonmetal-byproduct-sulfur-recrystall"].value * 0.01
	ei_settings.ei_nonmetal_byproduct_sulfur_tailfilt = settings.startup["ei-nonmetal-byproduct-sulfur-tailfilt"].value * 0.01
	ei_settings.ei_nonmetal_byproduct_sulfur_tailrepr = settings.startup["ei-nonmetal-byproduct-sulfur-tailrepr"].value * 0.01
	ei_settings.ei_nonmetal_byproduct_sand = settings.startup["ei-nonmetal-byproduct-sand"].value * 0.01
	ei_settings.ei_nonmetal_byproduct_stone = settings.startup["ei-nonmetal-byproduct-stone"].value * 0.01
end

if ei_settings.ei_stone_crush_bonus_precursor > 0.1  or ei_settings.ei_stone_wash_bonus_primprec > 0.1 or ei_settings.ei_stone_wash_bonus_secoprec > 0.1 or ei_settings.ei_crush_bonus_precursor > 0.1 or ei_settings.ei_wash_bonus_primprec > 0.1 or ei_settings.ei_wash_bonus_secoprec > 0.1 or ei_settings.ei_leach_bonus_primprec > 0.1 then
	ei_settings.ei_productivity_precursor = false
end

return ei_settings
