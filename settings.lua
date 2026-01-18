local ei_defaults = require ("ei-defaults")
local ei_full_control = not mods["enriching-industry-full-control"]

data:extend({
-- ================================================== General settings
	{
		type = "string-setting",
		name = "ei-selection-setup",
		setting_type = "startup",
--		default_value = "default",
		default_value = ei_defaults.ei_selection_setup,
		allowed_values = { "default", "small", "decreasing", "prec", "custom" },
		order = "c[settings]-c-c"
	},
	{
		type = "bool-setting",
		name = "ei-ci-overwrite",
		setting_type = "startup",
--		default_value = true,
		default_value = ei_defaults.ei_ci_overwrite,
		order = "c[settings]-c-d"
	},
	{
		type = "bool-setting",
		name = "ei-productivity-precursor",
		setting_type = "startup",
--		default_value = false,
		default_value = ei_defaults.ei_productivity_precursor,
		order = "c[settings]-i-f"
	},
-- ================================================== Stone, Sand, Glass & Quartz
	{
		type = "int-setting",
		name = "ei-stone-crush-bonus-precursor",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 5,
		default_value = ei_defaults.ei_stone_crush_bonus_precursor * 100,
		minimum_value = 0,
		maximum_value = 50,
		order = "x[fc-settings]-c[ssgq]-c[crush]-b"
	},
	{
		type = "int-setting",
		name = "ei-stone-wash-bonus-direct",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 50,
		default_value = ei_defaults.ei_stone_wash_bonus_direct * 100,
		minimum_value = 0,
		maximum_value = 100,
		order = "x[fc-settings]-c[ssgq]-f[wash]-c"
	},
	{
		type = "int-setting",
		name = "ei-stone-wash-bonus-primprec",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 5,
		default_value = ei_defaults.ei_stone_wash_bonus_primprec * 100,
		minimum_value = 0,
		maximum_value = 50,
		order = "x[fc-settings]-c[ssgq]-f[wash]-f"
	},
	{
		type = "int-setting",
		name = "ei-stone-wash-bonus-secoprec",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 2,
		default_value = ei_defaults.ei_stone_wash_bonus_secoprec * 100,
		minimum_value = 0,
		maximum_value = 25,
		order = "x[fc-settings]-c[ssgq]-f[wash]-i"
	},
-- ================================================== Crushing
	{
		type = "int-setting",
		name = "ei-crush-bonus-direct",
--		name = "ei-crush-extra",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 50,
		default_value = ei_defaults.ei_crush_bonus_direct * 100,
		minimum_value = 0,
		maximum_value = 100,
		order = "x[fc-settings]-f[ore]-c[crush]-c"
	},
	{
		type = "int-setting",
		name = "ei-crush-bonus-precursor",
--		name = "ei-primprec-crush-extra",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 5,
		default_value = ei_defaults.ei_crush_bonus_precursor * 100,
		minimum_value = 0,
		maximum_value = 50,
		order = "x[fc-settings]-f[ore]-c[crush]-f"
	},
	{
		type = "int-setting",
		name = "ei-crush-byprod-sand",
--		name = "ei-byproduct-crush-extra",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 2,
		default_value = ei_defaults.ei_crush_byprod_sand * 100,
		minimum_value = 0,
		maximum_value = 50,
		order = "x[fc-settings]-f[ore]-c[crush]-i"
	},
-- ================================================== Washing
	{
		type = "int-setting",
		name = "ei-wash-bonus-direct",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 50,
		default_value = ei_defaults.ei_wash_bonus_direct * 100,
		minimum_value = 0,
		maximum_value = 100,
		order = "x[fc-settings]-f[ore]-f[wash]-c"
	},
	{
		type = "int-setting",
		name = "ei-wash-bonus-primprec",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 5,
		default_value = ei_defaults.ei_wash_bonus_primprec * 100,
		minimum_value = 0,
		maximum_value = 50,
		order = "x[fc-settings]-f[ore]-f[wash]-f"
	},
	{
		type = "int-setting",
		name = "ei-wash-bonus-secoprec",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 2,
		default_value = ei_defaults.ei_wash_bonus_secoprec * 100,
		minimum_value = 0,
		maximum_value = 25,
		order = "x[fc-settings]-f[ore]-f[wash]-g"
	},
-- ================================================== Leaching
	{
		type = "int-setting",
		name = "ei-leach-sulfuric-acid",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 5,
		default_value = ei_defaults.ei_leach_sulfuric_acid,
		minimum_value = 1,
		maximum_value = 100,
		order = "x[fc-settings]-f[ore]-i[leaching]-b"
	},
	{
		type = "int-setting",
		name = "ei-leach-bonus-direct",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 50,
		default_value = ei_defaults.ei_leach_bonus_direct * 10,
		minimum_value = 0,
		maximum_value = 100,
		order = "x[fc-settings]-f[ore]-i[leaching]-c"
	},
	{
		type = "int-setting",
		name = "ei-leach-bonus-primprec",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 5,
		default_value = ei_defaults.ei_leach_bonus_primprec * 100,
		minimum_value = 0,
		maximum_value = 50,
		order = "x[fc-settings]-f[ore]-i[leaching]-f"
	},
-- ================================================== Recrystallization
	{
		type = "int-setting",
		name = "ei-recry-bonus-direct",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 50,
		default_value = ei_defaults.ei_recry_bonus_direct * 100,
		minimum_value = 0,
		maximum_value = 100,
		order = "x[fc-settings]-f[ore]-l[recrystall]-c"
	},
	{
		type = "int-setting",
		name = "ei-recry-byprod",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 50,
		default_value = ei_defaults.ei_recry_byprod * 100,
		minimum_value = 0,
		maximum_value = 100,
		order = "x[fc-settings]-f[ore]-l[recrystall]-d"
	},
	{
		type = "int-setting",
		name = "ei-nonmetal-byproduct-sulfur-recrystall",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 35,
		default_value = ei_defaults.ei_nonmetal_byproduct_sulfur_recrystall * 100,
		minimum_value = 0,
		maximum_value = 100,
		order = "x[fc-settings]-f[ore]-l[recrystall]-i"
	},
-- ================================================== Non-metal by-products
	{
		type = "int-setting",
		name = "ei-nonmetal-byproduct-sulfur-tailfilt",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 2,
		default_value = ei_defaults.ei_nonmetal_byproduct_sulfur_tailfilt * 100,
		minimum_value = 0,
		maximum_value = 100,
		order = "x[fc-settings]-u[tailing-slurry]-c[sulfur]-c"
	},
	{
		type = "int-setting",
		name = "ei-nonmetal-byproduct-sulfur-tailrepr",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 5,
		default_value = ei_defaults.ei_nonmetal_byproduct_sulfur_tailrepr * 100,
		minimum_value = 0,
		maximum_value = 100,
		order = "x[fc-settings]-u[tailing-slurry]-c[sulfur]-f"
	},
	{
		type = "int-setting",
		name = "ei-nonmetal-byproduct-sand",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 5,
		default_value = ei_defaults.ei_nonmetal_byproduct_sand * 100,
		minimum_value = 0,
		maximum_value = 10,
		order = "x[fc-settings]-u[tailing-slurry]-f[sand]"
	},
	{
		type = "int-setting",
		name = "ei-nonmetal-byproduct-stone",
		setting_type = "startup",
		hidden = ei_full_control,
--		default_value = 2,
		default_value = ei_defaults.ei_nonmetal_byproduct_stone * 100,
		minimum_value = 0,
		maximum_value = 10,
		order = "x[fc-settings]-u[tailing-slurry]-g[stone]"
	},
})

if mods["space-age"] then
	data:extend({
		{
			type = "int-setting",
			name = "ei-tungsten-extra",
			setting_type = "startup",
			default_value = 50,
			minimum_value = 0,
			maximum_value = 100,
			order = "k[space-age]-f"
		},
		{
			type = "int-setting",
			name = "ei-holmium-extra",
			setting_type = "startup",
			default_value = 50,
			minimum_value = 0,
			maximum_value = 100,
			order = "k[space-age]-g"
		}
	})
end
