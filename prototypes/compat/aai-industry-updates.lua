local frep = require("__fdsl__.lib.recipe")

-- Crushing Industry Mod Settings
local ci_glass = settings.startup["crushing-industry-glass"].value

if mods["aai-industry"] and not ci_glass then
	frep.modify_ingredient("ei-quartz-smelting", "ei-quartz", {amount=4})
	frep.modify_result("ei-quartz-smelting", "glass", {amount=1})
--	frep.change_time("ei-quartz-smelting", {energy_required=4})
	data.raw.recipe["ei-quartz-smelting"].energy_required = 4
end
