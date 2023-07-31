local util = require('utils')
local noise = require("noise")
local tne = noise.to_noise_expression
local resource_autoplace = require("resource-autoplace")
local sounds = require ("__base__.prototypes.entity.sounds")

-- resource_autoplace.initialize_patch_set(util.mod_prefix.."lead-ore", true)

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
            filename = util.fi_entities_path.."ores/lead/lead-ore.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = util.fi_entities_path.."ores/lead/lead-ore.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        map_color = {r = 36/255, g = 48/255, b = 63/255}
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
        map_color = {r = 229/255, g = 194/255, b = 163/255}
      },
      {
        type = "resource",
        name = util.mod_prefix.."aluminum-ore",
        icon = util.fi_entities_icons_path.."resources/aluminum-ore.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        order="a-b-e",
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          mining_particle = "iron-ore-particle",
          mining_time = 1,
          result = util.mod_prefix.."aluminum-ore",
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = util.mod_prefix.."aluminum-ore",
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
            filename = util.fi_entities_path.."ores/aluminum/aluminum-ore.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = util.fi_entities_path.."ores/aluminum/aluminum-ore.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        map_color = {r = 114/255, g = 25/255, b = 10/255}
      },
      {
        type = "resource",
        name = util.mod_prefix.."chrome-ore",
        icon = util.fi_entities_icons_path.."resources/chrome-ore.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        order="a-b-e",
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          mining_particle = "iron-ore-particle",
          mining_time = 1,
          result = util.mod_prefix.."chrome-ore",
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = util.mod_prefix.."chrome-ore",
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
            filename = util.fi_entities_path.."ores/chrome/chrome-ore.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = util.fi_entities_path.."ores/chrome/chrome-ore.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        map_color = {r = 58/255, g = 89/255, b = 67/255}
      },
      {
        type = "resource",
        name = util.mod_prefix.."cobalt-ore",
        icon = util.fi_entities_icons_path.."resources/cobalt-ore.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        order="a-b-e",
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          mining_particle = "iron-ore-particle",
          mining_time = 1,
          result = util.mod_prefix.."cobalt-ore","cobalt-ore",
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = util.mod_prefix.."cobalt-ore",
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
            filename = util.fi_entities_path.."ores/cobalt/cobalt-ore.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = util.fi_entities_path.."ores/cobalt/cobalt-ore.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        map_color = {r = 70/255, g = 51/255, b = 34/255}
      },
      {
        type = "resource",
        name = util.mod_prefix.."molybdenum-ore",
        icon = util.fi_entities_icons_path.."resources/molybdenum-ore.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        order="a-b-e",
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          mining_particle = "iron-ore-particle",
          mining_time = 1,
          result = util.mod_prefix.."molybdenum-ore",
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = util.mod_prefix.."molybdenum-ore",
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
            filename = util.fi_entities_path.."ores/molybdenum/molybdenum-ore.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = util.fi_entities_path.."ores/molybdenum/molybdenum-ore.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        map_color = {r = 165/255, g = 167/255, b = 169/255}
      },
      {
        type = "resource",
        name = util.mod_prefix.."nickel-ore",
        icon = util.fi_entities_icons_path.."resources/nickel-ore.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        order="a-b-e",
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          mining_particle = "iron-ore-particle",
          mining_time = 1,
          result = util.mod_prefix.."nickel-ore",
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = util.mod_prefix.."nickel-ore",
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
            filename = util.fi_entities_path.."ores/nickel/nickel-ore.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = util.fi_entities_path.."ores/nickel/nickel-ore.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        map_color = {r = 142/255, g = 142/255, b = 119/255}
      },
      {
        type = "resource",
        name = util.mod_prefix.."tin-ore",
        icon = util.fi_entities_icons_path.."resources/tin-ore.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        order="a-b-e",
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          mining_particle = "iron-ore-particle",
          mining_time = 1,
          result = util.mod_prefix.."tin-ore",
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = util.mod_prefix.."tin-ore",
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
            filename = util.fi_entities_path.."ores/tin/tin-ore.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = util.fi_entities_path.."ores/tin/tin-ore.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        map_color = {r = 239/255, g = 239/255, b = 239/255}
      },
      {
        type = "resource",
        name = util.mod_prefix.."titanium-ore",
        icon = util.fi_entities_icons_path.."resources/titanium-ore.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        order="a-b-e",
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          mining_particle = "iron-ore-particle",
          mining_time = 1,
          result = util.mod_prefix.."titanium-ore",
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = util.mod_prefix.."titanium-ore",
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
            filename = util.fi_entities_path.."ores/titanium/titanium-ore.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = util.fi_entities_path.."ores/titanium/titanium-ore.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        map_color = {r = 81/255, g = 23/255, b = 2/255}
      },
      {
        type = "resource",
        name = util.mod_prefix.."tungsten-ore",
        icon = util.fi_entities_icons_path.."resources/tungsten-ore.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        order="a-b-e",
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          mining_particle = "iron-ore-particle",
          mining_time = 1,
          result = util.mod_prefix.."tungsten-ore",
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = util.mod_prefix.."tungsten-ore",
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
            filename = util.fi_entities_path.."ores/tungsten/tungsten-ore.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = util.fi_entities_path.."ores/tungsten/tungsten-ore.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        map_color = {r = 128/255, g = 128/255, b = 128/255}
      },
      {
        type = "resource",
        name = util.mod_prefix.."zinc-ore",
        icon = util.fi_entities_icons_path.."resources/zinc-ore.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        order="a-b-e",
        tree_removal_probability = 0.8,
        tree_removal_max_distance = 32 * 32,
        minable =
        {
          mining_particle = "iron-ore-particle",
          mining_time = 1,
          result = util.mod_prefix.."zinc-ore",
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = util.mod_prefix.."zinc-ore",
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
            filename = util.fi_entities_path.."ores/zinc/zinc-ore.png",
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version =
            {
              filename = util.fi_entities_path.."ores/zinc/zinc-ore.png",
              priority = "extra-high",
              size = 128,
              frame_count = 8,
              variation_count = 8,
              scale = 0.5
            }
          }
        },
        map_color = {r = 167/255, g = 165/255, b = 138/255}
      },
})