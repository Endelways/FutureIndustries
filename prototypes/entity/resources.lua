local util = require('utils')
local noise = require("noise")
local tne = noise.to_noise_expression
local resource_autoplace = require("resource-autoplace")
local sounds = require ("__base__.prototypes.entity.sounds")

resource_autoplace.initialize_patch_set(util.mod_prefix.."lead-ore", true)

data:extend({
    {
        type = "resource",
        name = util.mod_prefix.."lead-ore",
        icon = util.fi_entities_icons_path.."resources/lead-ore.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        order="a-b-e",
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          mining_particle = "iron-ore-particle",
          mining_time = 1,
          result = util.mod_prefix.."lead-ore",
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = util.mod_prefix.."lead-ore",
          order = "b",
          base_density = 10,
          has_starting_area_placement = true,
          regular_rq_factor_multiplier = 1.10,
          starting_rq_factor_multiplier = 1.5,
          candidate_spot_count = 22
        },
        stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
        stages =
        {
          sheet =
          {
            filename = util.fi_entities_path.."lead-ore/lead-ore.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = util.fi_entities_path.."lead-ore/lead-ore.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        map_color = {r = 198/255, g = 241/255, b = 245/255}
      },
      {
        type = "resource",
        name = util.mod_prefix.."sand",
        icon = util.fi_entities_icons_path.."resources/sand.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        order="a-b-e",
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          mining_particle = "stone-particle",
          mining_time = 1,
          result = util.mod_prefix.."sand",
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = util.mod_prefix.."sand",
          order = "c",
          base_density = 10,
          has_starting_area_placement = true,
          regular_rq_factor_multiplier = 1.10,
          starting_rq_factor_multiplier = 1.5,
          candidate_spot_count = 22
        },
        stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
        stages =
        {
          sheet =
          {
            filename = util.fi_entities_path.."ores/sand/sand.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = util.fi_entities_path.."ores/sand/sand.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        map_color = {r = 198/255, g = 241/255, b = 245/255}
      },
})