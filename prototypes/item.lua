-- local item_sounds = require("__base__.prototypes.item_sounds")

-- Crushing Industry Mod Settings
local ci_glass = settings.startup["crushing-industry-glass"].value
local ci_ore_crushing = settings.startup["crushing-industry-ore"].value

data:extend(
{
	{
		type = "item",
		name = "ei-quartz",
		icon = "__enriching-industry__/graphics/icons/quartz.png",
		icon_size = 64,
--		icon_mipmaps = 4,
		pictures =
		{
			{ size = 64, filename = "__enriching-industry__/graphics/icons/quartz.png",   scale = 0.5, mipmap_count = 1 },
			{ size = 64, filename = "__enriching-industry__/graphics/icons/quartz-1.png", scale = 0.5, mipmap_count = 1 },
			{ size = 64, filename = "__enriching-industry__/graphics/icons/quartz-2.png", scale = 0.5, mipmap_count = 1 },
			{ size = 64, filename = "__enriching-industry__/graphics/icons/quartz-3.png", scale = 0.5, mipmap_count = 1 }
		},
		subgroup = "raw-resource",
		order = "d[stone]-d[enriched]",
		hidden = not ci_glass and not mods["aai-industry"],
		stack_size = 50,
		weight = 2 * kg
	}
}
)

data:extend(
{
	{
		type = "item",
		name = "ei-enriched-iron-ore",
		icon = "__enriching-industry__/graphics/icons/enriched-iron-ore.png",
		icon_size = 64,
--		icon_mipmaps = 4,
		pictures =
		{
			{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-iron-ore.png",   scale = 0.5, mipmap_count = 1 },
			{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-iron-ore-1.png", scale = 0.5, mipmap_count = 1 },
			{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-iron-ore-2.png", scale = 0.5, mipmap_count = 1 },
			{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-iron-ore-3.png", scale = 0.5, mipmap_count = 1 }
		},
		subgroup = "raw-resource",
		order = "e[iron-ore]-d[enriched]",
		hidden = not ci_ore_crushing,
		stack_size = 100,
		weight = 2 * kg
	},
	{
		type = "item",
		name = "ei-enriched-copper-ore",
		icon = "__enriching-industry__/graphics/icons/enriched-copper-ore.png",
		icon_size = 64,
--		icon_mipmaps = 4,
		pictures =
		{
			{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-copper-ore.png",   scale = 0.5, mipmap_count = 1 },
			{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-copper-ore-1.png", scale = 0.5, mipmap_count = 1 },
			{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-copper-ore-2.png", scale = 0.5, mipmap_count = 1 },
			{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-copper-ore-3.png", scale = 0.5, mipmap_count = 1 }
		},
		subgroup = "raw-resource",
		order = "f[copper-ore]-d[enriched]",
		hidden = not ci_ore_crushing,
		stack_size = 100,
		weight = 2 * kg
	}
}
)

if mods["space-age"] then
	data:extend(
	{
		{
			type = "item",
			name = "ei-enriched-tungsten-ore",
			icon = "__enriching-industry__/graphics/icons/enriched-tungsten-ore.png",
			icon_size = 64,
	--		icon_mipmaps = 4,
			pictures =
			{
				{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-tungsten-ore.png",   scale = 0.5, mipmap_count = 1 },
				{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-tungsten-ore-1.png", scale = 0.5, mipmap_count = 1 },
				{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-tungsten-ore-2.png", scale = 0.5, mipmap_count = 1 },
				{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-tungsten-ore-3.png", scale = 0.5, mipmap_count = 1 }
			},
			subgroup = "vulcanus-processes",
			order = "c[tungsten]-a[tungsten-ore]-d[enriched]",
			hidden = not ci_ore_crushing,
			stack_size = 100,
			default_import_location = "vulcanus",
			weight = 2 * kg
		},
		{
			type = "item",
			name = "ei-enriched-holmium",
			icon = "__enriching-industry__/graphics/icons/enriched-holmium-ore.png",
			icon_size = 64,
	--		icon_mipmaps = 4,
			pictures =
			{
				{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-holmium-ore.png",   scale = 0.5, mipmap_count = 1 },
				{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-holmium-ore-1.png", scale = 0.5, mipmap_count = 1 },
				{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-holmium-ore-2.png", scale = 0.5, mipmap_count = 1 },
				{ size = 64, filename = "__enriching-industry__/graphics/icons/enriched-holmium-ore-3.png", scale = 0.5, mipmap_count = 1 }
			},
			subgroup = "fulgora-processes",
			order = "b[holmium]-a[holmium-ore]-d[enriched]",
			hidden = not ci_ore_crushing,
			stack_size = 100,
			default_import_location = "fulgora",
			weight = 2 * kg
		}
	}
	)
end
