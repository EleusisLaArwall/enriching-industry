local ei_defaults = {
-- ================================================== General settings
	ei_selection_setup = "ci",
	ei_ci_overwrite = false,
	ei_productivity_precursor = false,
-- ================================================== Stone, Sand, Glass & Quartz
	ei_stone_crush_bonus_precursor = 0.05,
	ei_stone_wash_bonus_direct = 0.5,
	ei_stone_wash_bonus_primprec = 0.05,
	ei_stone_wash_bonus_secoprec = 0.02,
-- ================================================== Crushing
	ei_crush_bonus_direct = 0.5,
	ei_crush_bonus_precursor = 0.05,
	ei_crush_byprod_sand = 0.02,
-- ================================================== Washing
	ei_wash_bonus_direct = 0.5,
	ei_wash_bonus_primprec = 0.05,
	ei_wash_bonus_secoprec = 0.02,
-- ================================================== Leaching
	ei_leach_sulfuric_acid = 5,
	ei_leach_bonus_direct = 5,
	ei_leach_bonus_primprec = 0.05,
-- ================================================== Recrystallization
	ei_recry_bonus_direct = 0.5,
	ei_recry_byprod = 0.5,
	ei_nonmetal_byproduct_sulfur_recrystall = 0.35,
-- ================================================== Non-metal by-products
	ei_nonmetal_byproduct_sulfur_tailfilt = 0.02,
	ei_nonmetal_byproduct_sulfur_tailrepr = 0.05,
	ei_nonmetal_byproduct_sand = 0.05,
	ei_nonmetal_byproduct_stone = 0.02,
}

return ei_defaults
