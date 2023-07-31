local util = require('utils')
data:extend(
{
      {
        type = "technology",
        name = util.mod_prefix.."advanced-electricity",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__base__/graphics/icons/small-electric-pole.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = util.mod_prefix.."small-electric-pole"
          }
        },
        prerequisites = {"logistic-science-pack"},
        unit =
        {
          count = 80,
          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
          time = 10
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."basic-electricity",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__base__/graphics/icons/small-electric-pole.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "small-electric-pole"
          },
          {
            type = "unlock-recipe",
            recipe = "boiler"
          },
          {
            type = "unlock-recipe",
            recipe = "steam-engine"
          }
        },
        prerequisites = {util.mod_prefix.."basic-liquiduary"},
        unit =
        {
          count = 20,
          ingredients = {{"automation-science-pack", 1}},
          time = 10
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."long-handed-inserter",
        icon_size = 256, icon_mipmaps = 4,
        icon = util.fi_entities_icons_path.."technologies/long-handed-inserter.png",
        effects =
        {
          { 
            type = "unlock-recipe", 
            recipe = "long-handed-inserter"
          },
          {
            type = "unlock-recipe", 
            recipe = util.mod_prefix.."long-arm-base"
          }
        },
        prerequisites = {"automation"},
        unit =
        {
          count = 15,
          ingredients = {{"automation-science-pack", 1}},
          time = 15
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."basic-liquiduary",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/fluid-handling.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "offshore-pump"
          },
          {
            type = "unlock-recipe",
            recipe = "pipe"
          },
          {
            type = "unlock-recipe",
            recipe = "pipe-to-ground"
          }
        },
        prerequisites = {"electronics"},
        unit =
        {
          count = 20,
          ingredients = {{"automation-science-pack", 1}},
          time = 20
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."lab",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/research-speed.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "lab"
          }
        },
        prerequisites = {"logistic-science-pack"},
        unit =
        {
          count = 50,
          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
          time = 20
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."radar",
        icon_size = 256, icon_mipmaps = 4,
        icon = util.fi_entities_icons_path.."technologies/radar.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = "radar"
          }
        },
        prerequisites = {"electronics"},
        unit =
        {
          count = 20,
          ingredients = {{"automation-science-pack", 1}},
          time = 10
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."advanced-mining",
        icon_size = 256, icon_mipmaps = 4,
        icon = util.fi_entities_icons_path.."technologies/burner-mining-drill-mk2.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = util.mod_prefix.."burner-mining-drill-mk2"
          }
        },
        prerequisites = {"electronics"},
        unit =
        {
          count = 30,
          ingredients = {{"automation-science-pack", 1}},
          time = 10
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."arc-furnace",
        icon_size = 256, icon_mipmaps = 4,
        icon = util.fi_technologies_path.."arc-furnace.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = util.mod_prefix.."arc-furnace"
          }
        },
        prerequisites = {},
        unit =
        {
          count = 20,
          ingredients = {{"automation-science-pack", 1}},
          time = 5
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."lead-axe",
        icon_size = 256, icon_mipmaps = 4,
        icon = util.fi_entities_icons_path.."technologies/lead-axe.png",
        effects =
        {
          {
            type = "character-mining-speed",
            modifier = 1.5
          }
        },
        prerequisites = {},
        unit =
        {
          count = 20,
          ingredients =
          {
            {"automation-science-pack", 1}
          },
          time = 10
        },
        order = "c-c-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."electric-mining-drill",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__base__/graphics/icons/electric-mining-drill.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe ="electric-mining-drill"
          }
        },
        prerequisites = { util.mod_prefix.."basic-electricity", util.mod_prefix.."advanced-mining"},
        unit =
        {
          count = 30,
          ingredients = {{"automation-science-pack", 1}},
          time = 20
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."electric-mining-drill-mk2",
        icon_size = 256, icon_mipmaps = 4,
        icon = util.fi_entities_icons_path.."technologies/electric-mining-drill-mk2.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = util.mod_prefix.."electric-mining-drill-mk2"
          }
        },
        prerequisites = { util.mod_prefix.."electric-mining-drill", "chemical-science-pack"},
        unit =
        {
          count = 250,
          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
          time = 30
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."quick-inserter",
        icon_size = 64, icon_mipmaps = 4,
        icon = "__base__/graphics/icons/fast-inserter.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = util.mod_prefix.."quick-inserter"
          }
        },
        prerequisites = { "advanced-electronics-2", "stack-inserter", "logistics-3"},
        unit =
        {
          count = 300,
          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}},
          time = 45
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."inserters-assembling-machine",
        icon_size = 256, icon_mipmaps = 4,
        icon = util.fi_entities_icons_path.."technologies/inserters-assembling-machine.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = util.mod_prefix.."inserters-assembling-machine"
          }
        },
        prerequisites = { util.mod_prefix.."basic-electricity"},
        unit =
        {
          count = 30,
          ingredients = {{"automation-science-pack", 1}},
          time = 10
        },
        ignore_tech_cost_multiplier = true,
        order = "a-h-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."advanced-solar-energy",
        icon_size = 256, icon_mipmaps = 4,
        icon = util.fi_entities_icons_path.."technologies/advanced-solar-panel.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = util.mod_prefix.."advanced-solar-panel"
          }
        },
        prerequisites = {"solar-energy", "advanced-electronics"},
        unit =
        {
          count = 50,
          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
          time = 20
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."loader",
        icon_size = 256, icon_mipmaps = 4,
        icon = util.fi_entities_icons_path.."technologies/loader.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = util.mod_prefix.."loader"
          }
        },
        prerequisites = { "advanced-electronics-2", "logistics-3", "automation-3"},
        unit =
        {
          count = 200,
          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}},
          time = 60
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."loader-2",
        icon_size = 256, icon_mipmaps = 4,
        icon = util.fi_entities_icons_path.."technologies/fast-loader.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = util.mod_prefix.."fast-loader"
          }
        },
        prerequisites = { util.mod_prefix.."loader"},
        unit =
        {
          count = 300,
          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}},
          time = 60
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
      {
        type = "technology",
        name = util.mod_prefix.."loader-3",
        icon_size = 256, icon_mipmaps = 4,
        icon = util.fi_entities_icons_path.."technologies/express-loader.png",
        effects =
        {
          {
            type = "unlock-recipe",
            recipe = util.mod_prefix.."express-loader"
          }
        },
        prerequisites = { util.mod_prefix.."loader-2", "utility-science-pack"},
        unit =
        {
          count = 500,
          ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"production-science-pack", 1}, {"utility-science-pack", 1}},
          time = 20
        },
        ignore_tech_cost_multiplier = true,
        order = "a-b-a"
      },
})