data:extend({
	{
		type = "bool-setting",
		name = "ei-crushing-extra-io",
		setting_type = "startup",
		default_value = true,
		order = "h[base-change]-c-c"
	},
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
		order = "h[base-change]-d"
	},
	{
		type = "int-setting",
		name = "ei-leaching-extra",
		setting_type = "startup",
		default_value = 50,
		minimum_value = 0,
		maximum_value = 100,
		order = "h[base-change]-e"
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
		order = "h[base-change]-h"
	}
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
