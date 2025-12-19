data:extend({
-- ================================================== Selection
	{
		type = "string-setting",
		name = "ei-extra-selection",
		setting_type = "startup",
		default_value = "10",
		allowed_values = { "custom", "0", "10", "25", "50", "75", "100" },
		order = "f[base-change]-c"
	},
	{
		type = "string-setting",
		name = "ei-metal-byproduct-extra-selection",
		setting_type = "startup",
		default_value = "10",
		allowed_values = { "custom", "0", "10", "25", "50", "75", "100" },
		order = "f[base-change]-f"
	},
	{
		type = "string-setting",
		name = "ei-primprec-extra-selection",
		setting_type = "startup",
		default_value = "10",
		allowed_values = { "custom", "0", "1", "2", "5", "10", "25", "50"},
		order = "f[base-change]-i-c"
	},
	{
		type = "string-setting",
		name = "ei-secoprec-extra-selection",
		setting_type = "startup",
		default_value = "1",
		allowed_values = { "custom", "0", "1", "2", "5", "10", "25"},
		order = "f[base-change]-l-c"
	},
-- ================================================== General settings
	{
		type = "bool-setting",
		name = "ei-crushing-extra-io",
		setting_type = "startup",
		default_value = true,
		order = "h[base-change]-c-c"
	},
	{
		type = "bool-setting",
		name = "ei-primprec-productivity",--	TODO: Enable productivity for CI primprec!
		setting_type = "startup",
		default_value = false,
		order = "f[base-change]-i-f"
	},
	{
		type = "bool-setting",
		name = "ei-secoprec-productivity",
		setting_type = "startup",
		default_value = false,
		order = "f[base-change]-l-c"
	},
-- ================================================== Direct bonus
	{
		type = "int-setting",
		name = "ei-crushing-extra",
		setting_type = "startup",
		default_value = 50,
		minimum_value = 0,
		maximum_value = 100,
		order = "h[base-change]-c-e"
	},
	{
		type = "int-setting",
		name = "ei-washing-extra",
		setting_type = "startup",
		default_value = 50,
		minimum_value = 0,
		maximum_value = 100,
		order = "h[base-change]-d-c"
	},
	{
		type = "int-setting",
		name = "ei-leaching-extra",
		setting_type = "startup",
		default_value = 50,
		minimum_value = 0,
		maximum_value = 100,
		order = "h[base-change]-e-c"
	},
	{
		type = "int-setting",
		name = "ei-recrystall-extra",
		setting_type = "startup",
		default_value = 50,
		minimum_value = 0,
		maximum_value = 100,
		order = "h[base-change]-f"
	},
	{
		type = "int-setting",
		name = "ei-recrystall-byprod-extra",
		setting_type = "startup",
		default_value = 50,
		minimum_value = 0,
		maximum_value = 100,
		order = "h[base-change]-g"
	},
	{
		type = "int-setting",
		name = "ei-quartz-extra",
		setting_type = "startup",
		default_value = 50,
		minimum_value = 0,
		maximum_value = 100,
		order = "h[base-change]-h-c"
	},
-- ================================================== Primary precursor bonus
	{
		type = "int-setting",
		name = "ei-primprec-quartz-extra",
		setting_type = "startup",
		default_value = 5,
		minimum_value = 0,
		maximum_value = 50,
		order = "h[base-change]-h-f"
	},
	{
		type = "int-setting",
		name = "ei-primprec-crushing-extra",
		setting_type = "startup",
		default_value = 5,
		minimum_value = 0,
		maximum_value = 50,
		order = "h[base-change]-c-i"
	},
	{
		type = "int-setting",
		name = "ei-primprec-washing-extra",
		setting_type = "startup",
		default_value = 5,
		minimum_value = 0,
		maximum_value = 50,
		order = "h[base-change]-d-f"
	},
	{
		type = "int-setting",
		name = "ei-primprec-leaching-extra",
		setting_type = "startup",
		default_value = 5,
		minimum_value = 0,
		maximum_value = 50,
		order = "h[base-change]-e-f"
	},
-- ================================================== Secondary precursor bonus
	{
		type = "int-setting",
		name = "ei-secoprec-quartz-extra",
		setting_type = "startup",
		default_value = 1,
		minimum_value = 0,
		maximum_value = 25,
		order = "h[base-change]-h-i"
	},
	{
		type = "int-setting",
		name = "ei-secoprec-washing-extra",
		setting_type = "startup",
		default_value = 1,
		minimum_value = 0,
		maximum_value = 25,
		order = "h[base-change]-d-i"
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
