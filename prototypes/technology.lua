-- Crushing Industry Mod Settings
local ci_glass = settings.startup["crushing-industry-glass"].value
local ci_ore_crushing = settings.startup["crushing-industry-ore"].value
local ci_concrete_mix = settings.startup["crushing-industry-concrete-mix"].value

if ci_glass or ci_ore_crushing or mods["aai-industry"] then
	data:extend(
	{
		{
			type = "technology",
			name = "ore-enriching",
			icon = "__enriching-industry__/graphics/technology/ore-enriching.png",
			icon_size = 256,
			effects = {
-- 				{type="unlock-recipe", recipe="ei-enriched-iron-ore"},
-- 				{type="unlock-recipe", recipe="ei-enriched-iron-smelting"},
-- 				{type="unlock-recipe", recipe="ei-enriched-copper-ore"},
-- 				{type="unlock-recipe", recipe="ei-enriched-copper-smelting"},
-- 				{type="unlock-recipe", recipe="ei-quartz"},
-- 				{type="unlock-recipe", recipe="ei-quartz-smelting"},
-- 				{type="unlock-recipe", recipe="ei-tailing-slurry-filtering"},
			},
			prerequisites = {"chemical-science-pack"},
			unit = {
				count = 250,
				ingredients = {
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1}
				},
				time = 15
			}
		},
		{
			type = "technology",
			name = "ore-enriching-2",
			icon = "__enriching-industry__/graphics/technology/ore-enriching.png",
			icon_size = 256,
			effects = {
-- 				{type="unlock-recipe", recipe="ei-sulfuric-iron-leaching"},
-- 				{type="unlock-recipe", recipe="ei-enriched-iron-ore-recrystallization"},
-- 				{type="unlock-recipe", recipe="ei-sulfuric-copper-leaching"},
-- 				{type="unlock-recipe", recipe="ei-enriched-copper-ore-recrystallization"},
-- 				{type="unlock-recipe", recipe="ei-tailing-slurry-reprocessing"},
			},
			prerequisites = {"ore-enriching", "production-science-pack"},
			unit = {
				count = 500,
				ingredients = {
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1},
					{"production-science-pack", 1}
				},
				time = 15
			}
		}
	}
	)
end
