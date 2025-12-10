-- FDSL is dependency of crushing-industry
local ftech = require("__fdsl__.lib.technology")

-- Crushing Industry Mod Settings
local ci_glass = settings.startup["crushing-industry-glass"].value
local ci_ore_crushing = settings.startup["crushing-industry-ore"].value
local ci_concrete_mix = settings.startup["crushing-industry-concrete-mix"].value

if ci_glass or mods["aai-industry"] then
	ftech.add_unlock("ore-enriching", "ei-quartz")
	ftech.add_unlock("ore-enriching", "ei-quartz-smelting")
end

if ci_ore_crushing then
	ftech.add_prereq("ore-enriching", "ore-crushing")
	ftech.add_unlock("ore-enriching", "ei-enriched-iron-ore")
	ftech.add_unlock("ore-enriching", "ei-enriched-iron-smelting")
	ftech.add_unlock("ore-enriching", "ei-enriched-copper-ore")
	ftech.add_unlock("ore-enriching", "ei-enriched-copper-smelting")
	ftech.add_unlock("ore-enriching-2", "ei-sulfuric-iron-leaching")
	ftech.add_unlock("ore-enriching-2", "ei-enriched-iron-ore-recrystallization")
	ftech.add_unlock("ore-enriching-2", "ei-sulfuric-copper-leaching")
	ftech.add_unlock("ore-enriching-2", "ei-enriched-copper-ore-recrystallization")
	if mods["space-age"] then
		ftech.add_unlock("tungsten-steel", "ei-enriched-tungsten-ore")
		ftech.add_unlock("tungsten-steel", "ei-enriched-tungsten-carbide")
		ftech.add_unlock("holmium-processing", "ei-enriched-holmium")
	end
	if ci_concrete_mix then
		ftech.add_unlock("concrete", "ei-concrete-mix-from-tailing-slurry")
	end
	ftech.add_unlock("ore-enriching-2", "ei-tailing-slurry-reprocessing")
end

if ci_glass or ci_ore_crushing or mods["aai-industry"] then
	ftech.add_unlock("ore-enriching", "ei-tailing-slurry-filtering")
end
