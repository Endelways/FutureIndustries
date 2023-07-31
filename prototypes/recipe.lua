local util = require('utils')
data:extend({
    {
        type = "recipe",
        name = util.mod_prefix.."lead-plate",
        category = "smelting",
        energy_required = 3,
        ingredients = {{util.mod_prefix.."lead-ore", 20}},
        result = util.mod_prefix.."lead-plate"
    },
    {
        type = "recipe",
        name = util.mod_prefix.."lead-gear-wheel",
        normal =
        {
          ingredients = {{"iron-plate", 2}, {util.mod_prefix.."lead-plate", 2}},
          result = util.mod_prefix.."lead-gear-wheel"
        },
        expensive =
        {
          ingredients = {{"iron-plate", 4}, {util.mod_prefix.."lead-plate", 4}},
          result = util.mod_prefix.."lead-gear-wheel"
        }
    },
    {
        type = "recipe",
        name = util.mod_prefix.."lead-stick",
        normal =
        {
          ingredients = {{util.mod_prefix.."lead-plate", 2}},
          result = util.mod_prefix.."lead-stick"
        },
        expensive =
        {
          ingredients = {{util.mod_prefix.."lead-plate", 4}},
          result = util.mod_prefix.."lead-stick"
        }
    },
    {
        type = "recipe",
        name = util.mod_prefix.."lead-cable",
        normal =
        {
          ingredients = {{util.mod_prefix.."lead-plate", 1}},
          result = util.mod_prefix.."lead-cable"
        },
        expensive =
        {
          ingredients = {{util.mod_prefix.."lead-plate", 4}},
          result = util.mod_prefix.."lead-cable"
        }
    },
    {
        type = "recipe",
        category = "advanced-crafting",
        name = util.mod_prefix.."small-electric-pole",
        enabled = false,
        ingredients = {{util.mod_prefix.."lead-plate", 2}, {util.mod_prefix.."lead-stick", 4}, {util.mod_prefix.."lead-cable", 2}},
        result = util.mod_prefix.."small-electric-pole"
    },
    {
      type = "recipe",
      name = "small-electric-pole",
      enabled = false,
      ingredients = {{"wood", 2}, {"copper-cable", 4}, {"iron-stick", 2}},
      result = "small-electric-pole"
    },
    {
      type = "recipe",
      category = "advanced-crafting",
      name = util.mod_prefix.."advanced-solar-panel",                          
      enabled = false,
      ingredients = {{util.mod_prefix.."lead-plate", 5}, {"steel-plate", 5}, {"advanced-circuit", 4}, {"solar-panel", 4}},
      result = util.mod_prefix.."advanced-solar-panel"
    },
    {
        type = "recipe",
        name = util.mod_prefix.."solid-fuel-lab",
        ingredients = {{util.mod_prefix.."lead-gear-wheel", 5}, {"iron-gear-wheel", 5}, {"stone-furnace", 1}, {"transport-belt", 4}},
        result = util.mod_prefix.."solid-fuel-lab"
    },
    {
        type = "recipe",
        name = util.mod_prefix.."burner-mining-drill-mk2",
        enabled = false, 
        ingredients = {{util.mod_prefix.."lead-gear-wheel", 3}, {"electronic-circuit",3}, {"stone-furnace", 1}, {"iron-plate", 5}},
        result = util.mod_prefix.."burner-mining-drill-mk2"
    },
    {
      type = "recipe",
      name = util.mod_prefix.."electric-mining-drill-mk2",
      enabled = false, 
      ingredients = {{util.mod_prefix.."lead-gear-wheel", 3}, {"electronic-circuit",3}, {"stone-furnace", 1}, {"iron-plate", 5}},
      result = util.mod_prefix.."electric-mining-drill-mk2"
    },
    {
      type = "recipe",
      name = util.mod_prefix.."arc-furnace",
      enabled = false, 
      ingredients = {{util.mod_prefix.."lead-gear-wheel", 5}, {"iron-gear-wheel", 5}, {"stone-furnace", 1}, {"transport-belt", 4}},
      result = util.mod_prefix.."arc-furnace"
    },
    {
      type = "recipe",
      name = util.mod_prefix.."quick-inserter",
      enabled = false, 
      ingredients = {{util.mod_prefix.."lead-gear-wheel", 5}, {"processing-unit", 2}, {"fast-inserter", 1}, {"advanced-circuit", 5}},
      result = util.mod_prefix.."quick-inserter"
    },
    {
      type = "recipe",
      name = util.mod_prefix.."inserters-assembling-machine",
      enabled = false, 
      ingredients = {{util.mod_prefix.."lead-gear-wheel", 5}, {"processing-unit", 2}, {"fast-inserter", 1}, {"advanced-circuit", 5}},
      result = util.mod_prefix.."inserters-assembling-machine"
    },
    {
      type = "recipe",
      category = "advanced-smelting",
      energy_required = 3.2,
      allow_productivity = true,
      enabled = false, 
      name = "steel-plate",
      ingredients = {{"iron-plate", 4}, {util.mod_prefix.."coke", 2}},
      result = "steel-plate"
    },
    {
      type = "recipe",
      category = "advanced-crafting",
      energy_required = 2,
      allow_productivity = true,
      enabled = false, 
      name = util.mod_prefix.."mechanical-arm",
      ingredients = {{"iron-stick", 2}, {"iron-gear-wheel", 3}, {"iron-plate", 2}, {"green-wire", 1}},
      result = util.mod_prefix.."mechanical-arm"
    },
    {
      type = "recipe",
      category = "advanced-crafting",
      energy_required = 2,
      allow_productivity = true,
      enabled = false, 
      name = util.mod_prefix.."stack-mechanical-arm",
      ingredients = {{util.mod_prefix.."lead-stick", 4}, {util.mod_prefix.."lead-gear-wheel", 5}, {util.mod_prefix.."lead-plate", 2}, {"green-wire", 2}},
      result = util.mod_prefix.."stack-mechanical-arm"
    },
    {
      type = "recipe",
      category = "advanced-crafting",
      energy_required = 2,
      allow_productivity = true,
      enabled = false, 
      name = util.mod_prefix.."inserter-stand",
      ingredients = {{"electronic-circuit", 1}, {"iron-stick", 3}, {"iron-gear-wheel", 3}, {"copper-cable", 1}, {"green-wire", 1}},
      result = util.mod_prefix.."inserter-stand"
    },
    {
      type = "recipe",
      category = "advanced-crafting",
      energy_required = 3,
      allow_productivity = true,
      enabled = false, 
      name = util.mod_prefix.."fast-inserter-stand",
      ingredients = {{"electronic-circuit", 2}, {"iron-stick", 3}, {"iron-gear-wheel", 5}, {"copper-cable", 2}, {"red-wire", 1}},
      result = util.mod_prefix.."fast-inserter-stand"
    },
    {
      type = "recipe",
      category = "advanced-crafting",
      energy_required = 3.5,
      allow_productivity = true,
      enabled = false, 
      name = util.mod_prefix.."filter-inserter-stand",
      ingredients = {{"advanced-circuit", 1}, {"iron-stick", 3}, {"iron-gear-wheel", 5}, {"copper-cable", 3}, {"red-wire", 2}},
      result = util.mod_prefix.."filter-inserter-stand"
    },
    {
      type = "recipe",
      category = "advanced-crafting",
      energy_required = 2,
      allow_productivity = true,
      enabled = false, 
      name = util.mod_prefix.."arm-base",
      ingredients = {{"iron-stick", 2}, {"green-wire", 1}},
      result = util.mod_prefix.."arm-base"
    },
    {
      type = "recipe",
      category = "advanced-crafting",
      energy_required = 2,
      allow_productivity = true,
      enabled = false, 
      name = util.mod_prefix.."long-arm-base",
      ingredients = {{"iron-stick", 4}, {"green-wire", 2}},
      result = util.mod_prefix.."long-arm-base"
    },
    {
      type = "recipe",
      energy_required = 2,
      allow_productivity = true,
      name = util.mod_prefix.."iron-pulley",
      ingredients = {{"iron-stick", 1}, {"iron-gear-wheel", 2}},
      result = util.mod_prefix.."iron-pulley"
    },
    {
      type = "recipe",
      category = "inserters-crafting",
      energy_required = 4,
      enabled = false, 
      name = "inserter",
      ingredients = {{util.mod_prefix.."inserter-stand", 1}, {util.mod_prefix.."arm-base", 1}, {util.mod_prefix.."mechanical-arm", 1}},
      result = "inserter"
    },
    {
      type = "recipe",
      category = "inserters-crafting",
      energy_required = 4,
      enabled = false, 
      name = "fast-inserter",
      ingredients = {{util.mod_prefix.."fast-inserter-stand", 1}, {util.mod_prefix.."arm-base", 1}, {util.mod_prefix.."mechanical-arm", 1}},
      result = "fast-inserter"
    },
    {
      type = "recipe",
      category = "inserters-crafting",
      energy_required = 4,
      enabled = false, 
      name = "long-handed-inserter",
      ingredients = {{util.mod_prefix.."inserter-stand", 1}, {util.mod_prefix.."arm-base", 2}, {util.mod_prefix.."mechanical-arm", 1}},
      result = "long-handed-inserter"
    },
    {
      type = "recipe",
      category = "inserters-crafting",
      energy_required = 4,
      enabled = false, 
      name = "filter-inserter",
      ingredients = {{util.mod_prefix.."filter-inserter-stand", 1}, {util.mod_prefix.."arm-base", 1}, {util.mod_prefix.."mechanical-arm", 1}},
      result = "filter-inserter"
    },
    {
      type = "recipe",
      category = "inserters-crafting",
      energy_required = 4,
      enabled = false, 
      name = "stack-inserter",
      ingredients = {{util.mod_prefix.."fast-inserter-stand", 1}, {util.mod_prefix.."arm-base", 1}, {util.mod_prefix.."stack-mechanical-arm", 1}},
      result = "stack-inserter"
    },
    {
      type = "recipe",
      category = "inserters-crafting",
      energy_required = 4,
      enabled = false, 
      name = "stack-filter-inserter",
      ingredients = {{util.mod_prefix.."filter-inserter-stand", 1}, {util.mod_prefix.."arm-base", 1}, {util.mod_prefix.."stack-mechanical-arm", 1}},
      result = "stack-filter-inserter"
    },
    {
      type = "recipe",
      category = "advanced-crafting",
      energy_required = 4,
      enabled = false, 
      name = "medium-electric-pole",
      ingredients = {{"copper-cable", 2}, {"steel-plate", 2}, {util.mod_prefix.."lead-stick", 4}},
      result = "medium-electric-pole"
    },
    {
      type = "recipe",
      category = "advanced-crafting",
      energy_required = 4,
      enabled = false, 
      name = "big-electric-pole",
      ingredients = {{"copper-cable", 10}, {"steel-plate", 10}, {util.mod_prefix.."lead-stick", 16}},
      result = "big-electric-pole"
    },
    {
      type = "recipe",
      category = "advanced-crafting",
      energy_required = 4,
      enabled = false, 
      name = "substation",
      ingredients = {{util.mod_prefix.."lead-cable", 16}, {"steel-plate", 25}, {"advanced-circuit", 16}},
      result = "substation"
    },
    {
      type = "recipe",
      energy_required = 6,
      enabled = false,
      name = util.mod_prefix.."loader",
      ingredients = {{"copper-cable", 8}, {"iron-gear-wheel", 8}, {"advanced-circuit", 6}, {"transport-belt", 4}},
      result = util.mod_prefix.."loader",
      result_count = 2
    },
    {
      type = "recipe",
      energy_required = 10,
      enabled = false,
      name = util.mod_prefix.."fast-loader",
      ingredients = {{util.mod_prefix.."lead-cable", 4}, {util.mod_prefix.."lead-gear-wheel", 6}, {"advanced-circuit", 4}, {"fast-transport-belt", 4}, {util.mod_prefix.."loader", 2}},
      result = util.mod_prefix.."fast-loader",
      result_count = 2
    },
    {
      type = "recipe",
      energy_required = 12,
      enabled = false,
      name = util.mod_prefix.."express-loader",
      ingredients =  {{util.mod_prefix.."lead-cable", 6}, {util.mod_prefix.."lead-gear-wheel", 8}, {"processing-unit", 4}, {"express-transport-belt", 4}, {util.mod_prefix.."fast-loader", 2}},
      result = util.mod_prefix.."express-loader",
      result_count = 2
    },
    {
      type = "recipe",
      energy_required = 5,
      -- enabled = false,
      name = util.mod_prefix.."coke-furnace",
      ingredients =  {{"stone-brick", 5}},
      result = util.mod_prefix.."coke-furnace",
      result_count = 1
    },
    {
      type = "recipe",
      energy_required = 5,
      category = "coking",
      -- enabled = false,
      name = util.mod_prefix.."coke",
      ingredients =  {{"coal", 10}},
      result = util.mod_prefix.."coke",
      result_count = 1
    },
    {
      type = "recipe",
      name = "copper-plate",
      category = "smelting",
      energy_required = 3,
      ingredients = {{ "copper-ore", 16}},
      result = "copper-plate"
    },
    {
      type = "recipe",
      name = "iron-plate",
      category = "smelting",
      energy_required = 3,
      ingredients = {{"iron-ore", 16}},
      result = "iron-plate"
    },
    {
      type = "recipe",
      name = "crusher",
      energy_required = 4,
      ingredients = {{util.mod_prefix.."machine-frame", 1}},
      result = util.mod_prefix.."crusher"
    },
    {
      type = "recipe",
      name = "crushed-iron-ore",
      category = "crushing",
      energy_required = 4,
      ingredients = {{"iron-ore", 16}},
      result = util.mod_prefix.."crushed-iron-ore",
      result_count = 16
    },
    {
      type = "recipe",
      name = "crushed-copper-ore",
      category = "crushing",
      energy_required = 4,
      ingredients = {{"copper-ore", 16}},
      result = util.mod_prefix.."crushed-copper-ore",
      result_count = 16
    },
    {
      type = "recipe",
      name = "crushed-lead-ore",
      category = "crushing",
      energy_required = 4,
      ingredients = {{util.mod_prefix.."lead-ore", 16}},
      result = util.mod_prefix.."crushed-lead-ore",
      result_count = 16
    },

  
})