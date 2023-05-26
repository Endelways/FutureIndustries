local utils = require('utils')
local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
data:extend({
  {
    type = "electric-pole",
    name = utils.mod_prefix.."small-electric-pole",
    icon = "__base__/graphics/icons/small-electric-pole.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 0.1, result = utils.mod_prefix.."small-electric-pole"},
    max_health = 100,
    corpse = "small-electric-pole-remnants",
    dying_explosion = "small-electric-pole-explosion",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
    damaged_trigger_effect = hit_effects.entity({{-0.2, -2.2}, {0.2, 0.2}}),
    drawing_box = {{-0.5, -2.6}, {0.5, 0.5}},
    maximum_wire_distance = 5,
    supply_area_distance = 2.5,
    vehicle_impact_sound = sounds.car_wood_impact(0.5),
    open_sound = sounds.electric_network_open,
    close_sound = sounds.electric_network_close,
    track_coverage_during_build_by_moving = true,
    fast_replaceable_group = "electric-pole",
    pictures =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole.png",
          priority = "extra-high",
          width = 36,
          height = 108,
          direction_count = 4,
          shift = util.by_pixel(2, -42),
          hr_version =
          {
            filename = "__base__/graphics/entity/small-electric-pole/hr-small-electric-pole.png",
            priority = "extra-high",
            width = 72,
            height = 220,
            direction_count = 4,
            shift = util.by_pixel(1.5, -42.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole-shadow.png",
          priority = "extra-high",
          width = 130,
          height = 28,
          direction_count = 4,
          shift = util.by_pixel(50, 2),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/small-electric-pole/hr-small-electric-pole-shadow.png",
            priority = "extra-high",
            width = 256,
            height = 52,
            direction_count = 4,
            shift = util.by_pixel(51, 3),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = util.by_pixel(98.5, 2.5),
          red = util.by_pixel(111.0, 4.5),
          green = util.by_pixel(85.5, 4.0)
        },
        wire =
        {
          lead =  util.by_pixel(0.0, -82.5),
          copper = util.by_pixel(0.0, -82.5),
          red = util.by_pixel(13.0, -81.0),
          green = util.by_pixel(-12.5, -81.0)
        }
      },
      {
        shadow =
        {
          copper = util.by_pixel(99.5, 4.0),
          red = util.by_pixel(110.0, 9.0),
          green = util.by_pixel(92.5, -4.0)
        },
        wire =
        {
          copper = util.by_pixel(1.5, -81.0),
          red = util.by_pixel(12.0, -76.0),
          green = util.by_pixel(-6.0, -89.5)
        }
      },
      {
        shadow =
        {
          copper = util.by_pixel(100.5, 5.5),
          red = util.by_pixel(102.5, 14.5),
          green = util.by_pixel(103.5, -3.5)
        },
        wire =
        {
          copper = util.by_pixel(2.5, -79.5),
          red = util.by_pixel(4.0, -71.0),
          green = util.by_pixel(5.0, -89.5)
        }
      },
      {
        shadow =
        {
          copper = util.by_pixel(98.5, -1.5),
          red = util.by_pixel(88.0, 3.5),
          green = util.by_pixel(106.0, -9.0)
        },
        wire =
        {
          copper = util.by_pixel(0.5, -86.5),
          red = util.by_pixel(-10.5, -81.5),
          green = util.by_pixel(8.0, -93.5)
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole-reflection.png",
        priority = "extra-high",
        width = 12,
        height = 28,
        shift = util.by_pixel(5, 40),
        variation_count = 4,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = true
    }
  },
  {
    type = "solar-panel",
    name = utils.mod_prefix.."advanced-solar-panel",
    icon = utils.fi_entities_icons_path.."advanced-solar-panel.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = utils.mod_prefix.."advanced-solar-panel"},
    max_health = 400,
    corpse = utils.mod_prefix.."advanced-solar-panel-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-2.7, -2.7}, {2.7, 2.7}},
    selection_box = {{-3, -3}, {3, 3}},
    damaged_trigger_effect = hit_effects.entity(),
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      layers =
      {
        {
          filename = utils.fi_entities_path.."advanced-solar-panel/advanced-solar-panel.png",
          priority = "high",
          width = 400,
          height = 400,
          shift = util.by_pixel(-3, 3),
          hr_version =
          {
            filename = utils.fi_entities_path.."advanced-solar-panel/advanced-solar-panel.png",
            priority = "high",
            width = 400,
            height = 400,
            shift = util.by_pixel(-3, 3),
            scale = 0.5
          }
        },
        {
          filename = utils.fi_entities_path.."advanced-solar-panel/advanced-solar-panel-shadow.png",
          priority = "high",
          width = 400,
          height = 380,
          shift = util.by_pixel(10, 6),
          draw_as_shadow = true,
          hr_version =
          {
            filename = utils.fi_entities_path.."advanced-solar-panel/advanced-solar-panel-shadow.png",
            priority = "high",
            width = 400,
            height = 380,
            shift = util.by_pixel(9.5, 6),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    overlay =
    {
      layers =
      {
        {
          filename = utils.fi_entities_path.."advanced-solar-panel/advanced-solar-panel-shadow-overlay.png",
          priority = "high",
          width = 400,
          height = 380,
          shift = util.by_pixel(11, 6),
          hr_version =
          {
            filename = utils.fi_entities_path.."advanced-solar-panel/advanced-solar-panel-shadow-overlay.png",
            priority = "high",
            width = 400,
            height = 380,
            shift = util.by_pixel(10.5, 6),
            scale = 0.5
          }
        }
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    production = "720kW"
  }
})