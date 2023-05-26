local util = require('utils')
require("prototypes.entity.resources")
require("prototypes.entity.remnants")
require("prototypes.entity.electricity")
require("prototypes.entity.mechanisms")
require("prototypes.item.resources")
require("prototypes.item.electricity")
require("prototypes.item.components")
require("prototypes.item.mechanisms")
require("prototypes.autoplace-control")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.categories.recipe-category")
require("prototypes.categories.fuel-category")
require("prototypes.item-groups")

data.raw["mining-drill"]["burner-mining-drill"].resource_searching_radius = 0.5;
data.raw["mining-drill"]["burner-mining-drill"].mining_speed = 0.2;
data.raw["mining-drill"]["electric-mining-drill"].resource_searching_radius = 1.5;
data.raw["mining-drill"]["electric-mining-drill"].mining_speed = 0.8;
data.raw["electric-pole"]["small-electric-pole"].maximum_wire_distance = 3;
data.raw["electric-pole"]["small-electric-pole"].supply_area_distance = 1.5;
data.raw["electric-pole"]["small-electric-pole"].localised_name = "Tiny electric pole";
data.raw["technology"]["solar-energy"].prerequisites = {"electric-energy-distribution-1", "optics"};
data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance = 64;
data.raw["electric-pole"]["big-electric-pole"].supply_area_distance = 1;
data.raw["electric-pole"]["substation"].maximum_wire_distance = 25;
data.raw["electric-pole"]["substation"].supply_area_distance = 20;
data.raw["transport-belt"]["transport-belt"].speed = 0.01666666666666666666666666666667;
data.raw["transport-belt"]["fast-transport-belt"].speed = 0.03333333333333333333333333333333;
data.raw["transport-belt"]["express-transport-belt"].speed = 0.06666666666666666666666666666667;
data.raw["underground-belt"]["underground-belt"].speed = 0.01666666666666666666666666666667;
data.raw["underground-belt"]["fast-underground-belt"].speed = 0.03333333333333333333333333333333;
data.raw["underground-belt"]["express-underground-belt"].speed = 0.06666666666666666666666666666667;
data.raw["splitter"]["splitter"].speed = 0.01666666666666666666666666666667;
data.raw["splitter"]["fast-splitter"].speed = 0.03333333333333333333333333333333;
data.raw["splitter"]["express-splitter"].speed = 0.06666666666666666666666666666667;
-- data.raw["transport-belt"]["fast-transport-belt"].speed = 0.13333333333333333333333333333333;
-- data.raw["transport-belt"]["express-transport-belt"].speed = 0.26666666666666666666666666666667;
-- data.raw["transport-belt"]["express-transport-belt"].speed = 0.53333333333333333333333333333333;


data.raw["technology"]["electric-energy-distribution-1"].prerequisites = {util.mod_prefix.."advanced-electricity", "steel-processing"}
data.raw["technology"]["steel-processing"].prerequisites = {util.mod_prefix.."steel-stone-furnace"};
data.raw["technology"]["automation"].prerequisites = {util.mod_prefix.."inserters-assembling-machine"};
data.raw["technology"]["automation-2"].prerequisites =  {"circuit-network"};
data.raw["technology"]["fast-inserter"].prerequisites = {util.mod_prefix.."long-handed-inserter"};
data.raw["technology"]["research-speed-1"].prerequisites = {util.mod_prefix.."lab", "automation-2"};
data.raw["technology"]["inserter-capacity-bonus-1"].prerequisites = {util.mod_prefix.."quick-inserter"};
data.raw["technology"]["optics"].prerequisites =  { util.mod_prefix.."basic-electricity"};
data.raw["technology"]["electronics"].effects = {{type = "unlock-recipe", recipe="electronic-circuit"}, {type = "unlock-recipe", recipe="repair-pack"}};
data.raw["technology"]["electronics"].prerequisites = nil;
data.raw["technology"]["logistic-science-pack"].prerequisites = {"automation"};
data.raw["technology"]["logistics"].prerequisites = {"electronics"};
data.raw["technology"]["steel-axe"].effects = {{ type = "character-mining-speed", modifier = 1.5}}
data.raw["technology"]["automation"].effects  = {{ type = "unlock-recipe", recipe = "assembling-machine-1"}, {type = "unlock-recipe", recipe = "inserter" }, 
                                                 { type = "unlock-recipe", recipe = util.mod_prefix.."inserter-stand"}, { type = "unlock-recipe", recipe = util.mod_prefix.."arm-base" }, 
                                                 { type = "unlock-recipe", recipe = util.mod_prefix.."mechanical-arm" }}
data.raw.recipe["pipe"].normal.enabled = false
data.raw.recipe["pipe"].expensive.enabled = false
data.raw.recipe["electronic-circuit"].normal.enabled = false
data.raw.recipe["electronic-circuit"].expensive.enabled = false
data.raw.recipe["steam-engine"].normal.enabled = false
data.raw.recipe["steam-engine"].expensive.enabled = false
data.raw.recipe["electric-mining-drill"].normal.enabled = false
data.raw.recipe["electric-mining-drill"].expensive.enabled = false
data.raw["recipe"]["pipe-to-ground"].enabled = false;
data.raw["recipe"]["inserter"].enabled = false;
data.raw["recipe"]["small-electric-pole"].enabled = false;
data.raw["recipe"]["boiler"].enabled = false;
data.raw["recipe"]["offshore-pump"].enabled = false;    
data.raw["recipe"]["lab"].enabled = false;
data.raw["recipe"]["repair-pack"].enabled = false;
data.raw["recipe"]["radar"].enabled = false;

table.remove(data.raw["technology"]["circuit-network"].prerequisites, 1);
table.insert(data.raw["technology"]["military-science-pack"].prerequisites, util.mod_prefix.."radar");
table.insert(data.raw["technology"]["military-science-pack"].prerequisites, "gun-turret");
table.insert(data.raw["technology"]["steel-axe"].prerequisites, util.mod_prefix.."lead-axe");
table.insert(data.raw["technology"]["steel-axe"].prerequisites, "logistic-science-pack");
table.insert(data.raw["technology"]["steel-axe"]["unit"]["ingredients"], {"logistic-science-pack", 1})
table.insert(data.raw["technology"]["fast-inserter"].effects, { type = "unlock-recipe", recipe = util.mod_prefix.."fast-inserter-stand"});
table.insert(data.raw["technology"]["fast-inserter"].effects, { type = "unlock-recipe", recipe = util.mod_prefix.."filter-inserter-stand"});
table.insert(data.raw["technology"]["stack-inserter"].effects, { type = "unlock-recipe", recipe = util.mod_prefix.."stack-mechanical-arm"});