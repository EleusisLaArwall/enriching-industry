-- Crushing Industry Mod Settings
local ci_glass = settings.startup["crushing-industry-glass"].value
local ci_ore_crushing = settings.startup["crushing-industry-ore"].value

data:extend(
{
	{
		type = "fluid",
		name = "ei-tailing-slurry",
		icon = "__enriching-industry__/graphics/icons/tailing-slurry.png",
		subgroup = "fluid",
		order = "a[fluid]-d[chemicals]-b[tailings]",
		hidden = not ci_ore_crushing and not ci_glass and not mods["aai-industry"],
		auto_barrel = ci_ore_crushing or ci_glass or mods["aai-industry"],
		default_temperature = 25,
		max_temperature = 100,
		heat_capacity = "0.01kJ",
--		base_color = {r = 0.67, g = 0.33, b = 0.01, a = 1.000}, --#AA5303	coffee
		base_color = {r = 0.48, g = 0.25, b = 0.00, a = 1.000}, --cinnamon	#7B3F00
		flow_color = {r = 1.00, g = 1.00, b = 0.67, a = 1.000}, --popcornyellow	#FFFFAA
		visualization_color = {r = 0.48, g = 0.25, b = 0.00, a = 1.000}, --cinnamon	#7B3F00
	}
}
)

data:extend(
{
	{
		type = "fluid",
		name = "ei-sulfuric-iron-solution",
		icon = "__enriching-industry__/graphics/icons/sulfuric-iron-solution.png",
		subgroup = "fluid",
		order = "a[fluid]-d[chemicals]-c[sulfuric-iron-solution]",
		hidden = not ci_ore_crushing,
		auto_barrel = ci_ore_crushing,
		default_temperature = 25,
		max_temperature = 100,
		heat_capacity = "0.01kJ",
		base_color = {r = 0.40, g = 0.78, b = 1.00, a = 1.000},--neon blue	#67C8FF
		flow_color = {r = 0.75, g = 0.95, b = 1.00, a = 1.000},--light blue1	#BFEFFF
		visualization_color = {r = 0.75, g = 0.95, b = 1.00, a = 1.000},--light blue1	#BFEFFF
	},
	{
		type = "fluid",
		name = "ei-sulfuric-copper-solution",
		icon = "__enriching-industry__/graphics/icons/sulfuric-copper-solution.png",
		subgroup = "fluid",
		order = "a[fluid]-d[chemicals]-d[sulfuric-copper-solution]",
		hidden = not ci_ore_crushing,
		auto_barrel = ci_ore_crushing,
		default_temperature = 25,
		max_temperature = 100,
		heat_capacity = "0.01kJ",
		base_color = {r = 0.85, g = 0.53, b = 0.10, a = 1.000},--	#D98719	cool copper
		flow_color = {r = 0.93, g = 0.76, b = 0.58, a = 1.000}, --	#EDC393	light copper
		visualization_color = {r = 0.93, g = 0.76, b = 0.58, a = 1.000}, --	#EDC393	light copper
	}
}
)
