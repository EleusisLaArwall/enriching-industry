local frep = require("__fdsl__.lib.recipe")

-- Enriching Industry Mod Settings
-- Amount of secondary metal from recrystallization. Disabled if == 0
-- Overwrite Crushing Industrys default 50% setting if enabled
-- Amount of bonus from crushing, if above is enabled

-- Enriching Industry Mod Settings
local ei_metal_byproduct_extra_selection = settings.startup["ei-metal-byproduct-extra-selection"].value
local ei_recrystall_byprod_extra = {}
local ei_crushing_extra_io = settings.startup["ei-crushing-extra-io"].value
local ei_crushing_extra = {}
-- Direct bonus
local ei_extra_selection = settings.startup["ei-extra-selection"].value
local ei_quartz_extra = {}
local ei_washing_extra = {}
local ei_leaching_amount = {}
local ei_recrystall_extra = {}
-- Primary precursor bonus
local ei_primprec_extra_selection = settings.startup["ei-primprec-extra-selection"].value
local ei_primprec_productivity = settings.startup["ei-primprec-productivity"].value
local ei_primprec_quartz_extra = {}
local ei_primprec_washing_extra = {}
local ei_primprec_leaching_extra = {}

-- Crushing Industry Mod Settings
local ci_glass = settings.startup["crushing-industry-glass"].value
local ci_ore_crushing = settings.startup["crushing-industry-ore"].value
local ci_byproducts = settings.startup["crushing-industry-byproducts"].value

-- Selection or Full Control
-- Direct bonus
if ei_extra_selection == "custom" then
	ei_crushing_extra = settings.startup["ei-crushing-extra"].value * 0.01
	ei_quartz_extra = settings.startup["ei-quartz-extra"].value * 0.01
	ei_washing_extra = settings.startup["ei-washing-extra"].value * 0.01
	ei_leaching_amount = settings.startup["ei-leaching-extra"].value * 0.1 + 10
	ei_recrystall_extra = settings.startup["ei-recrystall-extra"].value * 0.01
	ei_recrystall_byprod_extra = settings.startup["ei-recrystall-byprod-extra"].value * 0.01
else
	ei_extra_selection = tonumber(ei_extra_selection) * 0.01
	ei_crushing_extra = ei_extra_selection
	ei_quartz_extra = ei_extra_selection
	ei_washing_extra = ei_extra_selection
	ei_leaching_amount = ei_extra_selection * 10 + 10
	ei_recrystall_extra = ei_extra_selection
	ei_recrystall_byprod_extra = tonumber(ei_metal_byproduct_extra_selection) * 0.01
end

-- Primary precursor bonus
if ei_primprec_extra_selection == "custom" then
	ei_primprec_crushing_extra = settings.startup["ei-primprec-crushing-extra"].value * 0.01
	ei_primprec_quartz_extra = settings.startup["ei-primprec-quartz-extra"].value * 0.01
	ei_primprec_washing_extra = settings.startup["ei-primprec-washing-extra"].value * 0.01
	ei_primprec_leaching_extra = settings.startup["ei-primprec-leaching-extra"].value * 0.01
else
	ei_primprec_extra_selection = tonumber(ei_primprec_extra_selection) * 0.01
	ei_primprec_crushing_extra = ei_primprec_extra_selection
	ei_primprec_quartz_extra = ei_primprec_extra_selection
	ei_primprec_washing_extra = ei_primprec_extra_selection
	ei_primprec_leaching_extra = ei_primprec_extra_selection
end
-- Disable productivity if any primary precursor > 10%
if ei_primprec_quartz_extra > 0.1 or ei_primprec_washing_extra > 0.1 or ei_primprec_leaching_extra > 0.1 then
	ei_primprec_productivity = false
end

-- ==================================================

if ci_glass then
	if ei_crushing_extra_io then
		frep.remove_result("sand", "stone")
		if ei_primprec_quartz_extra > 0 then
			frep.add_result("sand", EnrichingIndustry.make_washing_byproduct("stone", ei_primprec_quartz_extra, 1, ei_primprec_productivity))
		end
	end
end

if ci_glass or mods["aai-industry"] then
	if mods["space-age"] then
		frep.replace_ingredient("holmium-solution", "sand", {type="item", name="ei-quartz", amount=3})
		frep.replace_ingredient("electrolyte", "sand", {type="item", name="ei-quartz", amount=4})
		frep.replace_ingredient("molten-glass", "sand", {type="item", name="ei-quartz", amount=100})
	end
end

if ci_ore_crushing then
-- Modify CI's crushing bonus if enabled
	if ei_crushing_extra_io then
--		frep.modify_result("sand", "sand", {extra_count_fraction=ei_crushing_extra})
		frep.modify_result("crushed-iron-ore", "crushed-iron-ore", {extra_count_fraction=ei_crushing_extra})
		frep.modify_result("crushed-copper-ore", "crushed-copper-ore", {extra_count_fraction=ei_crushing_extra})
		frep.remove_result("crushed-iron-ore", "iron-ore")
		frep.remove_result("crushed-copper-ore", "copper-ore")
		if ei_primprec_crushing_extra > 0 then
			frep.add_result("crushed-iron-ore", EnrichingIndustry.make_washing_byproduct("iron-ore", ei_primprec_crushing_extra, 1, ei_primprec_productivity), true, 2)
			frep.add_result("crushed-copper-ore", EnrichingIndustry.make_washing_byproduct("copper-ore", ei_primprec_crushing_extra, 1, ei_primprec_productivity), true, 2)
		end
	end
-- Add secondary metal byproduct to recrystallization if sec. bonus > 0
	if ei_recrystall_byprod_extra > 0 then
		frep.add_result("ei-enriched-iron-ore-recrystallization", {type="item", name="ei-enriched-copper-ore", amount=1, probability=ei_recrystall_byprod_extra})
		frep.add_result("ei-enriched-copper-ore-recrystallization", {type="item", name="ei-enriched-iron-ore", amount=1, probability=ei_recrystall_byprod_extra})
	end
-- Add sulfur after secondary metal to recrystallization
	frep.add_result("ei-enriched-iron-ore-recrystallization", EnrichingIndustry.make_washing_byproduct("sulfur", EnrichingIndustry.FREQUENT_BYPRODUCT), false)
	frep.add_result("ei-enriched-copper-ore-recrystallization", EnrichingIndustry.make_washing_byproduct("sulfur", EnrichingIndustry.FREQUENT_BYPRODUCT), false)
-- Add byproducts if enabled
	if ci_byproducts then
	-- Sulfuric leaching byproducts: Sand & Stone
		frep.add_result("ei-sulfuric-iron-leaching", EnrichingIndustry.make_washing_byproduct("sand", EnrichingIndustry.COMMON_BYPRODUCT), false)
		frep.add_result("ei-sulfuric-iron-leaching", EnrichingIndustry.make_washing_byproduct("stone"), false)
		frep.add_result("ei-sulfuric-copper-leaching", EnrichingIndustry.make_washing_byproduct("sand", EnrichingIndustry.COMMON_BYPRODUCT), false)
		frep.add_result("ei-sulfuric-copper-leaching", EnrichingIndustry.make_washing_byproduct("stone"), false)
	end
	if mods["space-age"] then
		frep.replace_ingredient("tungsten-plate", "crushed-tungsten-ore", "ei-enriched-tungsten-ore")
	--	frep.scale_ingredient("tungsten-plate", "ei-enriched-tungsten-ore", {amount=1.5})
		frep.replace_ingredient("molten-iron", "crushed-iron-ore", "ei-enriched-iron-ore")
		frep.scale_ingredient("molten-iron", "ei-enriched-iron-ore", {amount=4/3})
		frep.replace_ingredient("molten-copper", "crushed-copper-ore", "ei-enriched-copper-ore")
		frep.scale_ingredient("molten-copper", "ei-enriched-copper-ore", {amount=4/3})
		frep.modify_ingredient("holmium-plate", "holmium-solution", {type="item", name="ei-enriched-holmium", amount=1})
		if ci_byproducts then
			frep.add_result("ei-enriched-tungsten-ore", EnrichingIndustry.make_washing_byproduct("crushed-coal", EnrichingIndustry.FLAVOR_BYPRODUCT), false)
		end
	end
end

if ci_glass or ci_ore_crushing or mods["aai-industry"] then
-- Tailing slurry filtering byproducts: Sand, Stone & Sulfur
	frep.add_result("ei-tailing-slurry-filtering", EnrichingIndustry.make_washing_byproduct("sand", EnrichingIndustry.FREQUENT_BYPRODUCT), false)
	frep.add_result("ei-tailing-slurry-filtering", EnrichingIndustry.make_washing_byproduct("stone", EnrichingIndustry.COMMON_BYPRODUCT), false)
	frep.add_result("ei-tailing-slurry-filtering", EnrichingIndustry.make_washing_byproduct("sulfur", EnrichingIndustry.FLAVOR_BYPRODUCT), false)
-- Tailing slurry reprocessing byproducts: Sand, Stone & Sulfur
	frep.add_result("ei-tailing-slurry-reprocessing", EnrichingIndustry.make_washing_byproduct("sand", EnrichingIndustry.FREQUENT_BYPRODUCT), false)
	frep.add_result("ei-tailing-slurry-reprocessing", EnrichingIndustry.make_washing_byproduct("stone", EnrichingIndustry.COMMON_BYPRODUCT), false)
	frep.add_result("ei-tailing-slurry-reprocessing", EnrichingIndustry.make_washing_byproduct("sulfur"), false)
end
