
local utils = require('utils')
local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
require ("__base__.prototypes.entity.pipecovers")

function createLoader(name, color, speed, icon, belt_animation_set, upgrade)
  data:extend({
    {
      type = "loader-1x1",
      name = utils.mod_prefix.. name,
      icon = utils.fi_entities_icons_path.."loaders/".. icon,
      icon_size = 64, icon_mipmaps = 4,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = utils.mod_prefix.."loader" },
      max_health = 170,
      filter_count = 5,
      collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      animation_speed_coefficient = 32,
      belt_animation_set = basic_belt_animation_set,
      container_distance = 1,
      speed = speed,
      structure_render_layer = "object",
      belt_animation_set = belt_animation_set,
      fast_replaceable_group = "transport-belt",
      next_upgrade = upgrade,
      structure =
      {
        direction_in = {
          sheets = {
            {
              filename = utils.fi_entities_path .. "loader/loader.png",
              priority = "extra-high",
              shift = { 0.15625, 0.0703125 },
              width = 53,
              height = 43,
              y = 43,
              hr_version = {
                filename = utils.fi_entities_path .. "loader/hr-loader.png",
                priority = "extra-high",
                shift = { 0.15625, 0.0703125 },
                width = 106,
                height = 85,
                y = 85,
                scale = 0.5,
              },
            },
            {
              filename = utils.fi_entities_path .. "loader/loader-mask.png",
              priority = "extra-high",
              shift = { 0.15625, 0.0703125 },
              width = 53,
              height = 43,
              y = 43,
              tint = color,
              hr_version = {
                filename = utils.fi_entities_path .. "loader/hr-loader-mask.png",
                priority = "extra-high",
                shift = { 0.15625, 0.0703125 },
                width = 106,
                height = 85,
                y = 85,
                scale = 0.5,
                tint = color,
              },
            },
            rust_layer_direction_in,
          },
        },
        direction_out = {
          sheets = {
            {
              filename = utils.fi_entities_path .. "loader/loader.png",
              priority = "extra-high",
              shift = { 0.15625, 0.0703125 },
              width = 53,
              height = 43,
              hr_version = {
                filename = utils.fi_entities_path .. "loader/hr-loader.png",
                priority = "extra-high",
                shift = { 0.15625, 0.0703125 },
                width = 106,
                height = 85,
                scale = 0.5,
              },
            },
            {
              filename = utils.fi_entities_path .. "loader/loader-mask.png",
              priority = "extra-high",
              shift = { 0.15625, 0.0703125 },
              width = 53,
              height = 43,
              tint = color,
              hr_version = {
                filename = utils.fi_entities_path .. "loader/hr-loader-mask.png",
                priority = "extra-high",
                shift = { 0.15625, 0.0703125 },
                width = 106,
                height = 85,
                scale = 0.5,
                tint = color,
              },
            },
            rust_layer_direction_out,
          },
        },
      },
    }
  })
end

function assemblerpipepictures()
  return {
    north = {
      filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine-k-pipe-N.png",
      priority = "extra-high",
      width = 35,
      height = 18,
      shift = util.by_pixel(2.5, 14),
      hr_version = {
        filename = utils.fi_entities_path .. "inserters-assembling-machine/hr-inserters-assembling-machine-k-pipe-N.png",
        priority = "extra-high",
        width = 71,
        height = 38,
        shift = util.by_pixel(2.25, 13.5),
        scale = 0.5,
      },
    },
    east = {
      filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine-k-pipe-E.png",
      priority = "extra-high",
      width = 20,
      height = 38,
      shift = util.by_pixel(-25, 1),
      hr_version = {
        filename = utils.fi_entities_path .. "inserters-assembling-machine/hr-inserters-assembling-machine-k-pipe-E.png",
        priority = "extra-high",
        width = 42,
        height = 76,
        shift = util.by_pixel(-24.5, 1),
        scale = 0.5,
      },
    },
    south = {
      filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine-k-pipe-S.png",
      priority = "extra-high",
      width = 44,
      height = 31,
      shift = util.by_pixel(0, -31.5),
      hr_version = {
        filename = utils.fi_entities_path .. "inserters-assembling-machine/hr-inserters-assembling-machine-k-pipe-S.png",
        priority = "extra-high",
        width = 88,
        height = 61,
        shift = util.by_pixel(0, -31.25),
        scale = 0.5,
      },
    },
    west = {
      filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine-k-pipe-W.png",
      priority = "extra-high",
      width = 19,
      height = 37,
      shift = util.by_pixel(25.5, 1.5),
      hr_version = {
        filename = utils.fi_entities_path .. "inserters-assembling-machine/hr-inserters-assembling-machine-k-pipe-W.png",
        priority = "extra-high",
        width = 39,
        height = 73,
        shift = util.by_pixel(25.75, 1.25),
        scale = 0.5,  
      },
    },
  }
end

local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

local crafting_categories = {
    "inserters-crafting",
  }

data:extend({
  {
    type = "lab",
    name = utils.mod_prefix.."solid-fuel-lab",
    icon = "__base__/graphics/icons/lab.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = utils.mod_prefix.."solid-fuel-lab"},
    max_health = 150,
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    on_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 15.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-light.png",
          blend_mode = "additive",
          draw_as_light = true,
          width = 106,
          height = 100,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(-1, 1),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-light.png",
            blend_mode = "additive",
            draw_as_light = true,
            width = 216,
            height = 194,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 0),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(13, 11),
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    off_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 1,
          shift = util.by_pixel(0, 1.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          shift = util.by_pixel(0, 15.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            shift = util.by_pixel(13, 11),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      audible_distance_modifier = 0.7,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 2,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.6,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    energy_usage = "90kW",
    researching_speed = 0.5,
    inputs = {"automation-science-pack", "logistic-science-pack"}
  },
  {
    type = "assembling-machine",
    name = utils.mod_prefix.."steel-stone-furnace",
    icon = "__base__/graphics/icons/stone-furnace.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = utils.mod_prefix.."steel-stone-furnace"},
    max_health = 200,
    corpse = "stone-furnace-remnants",
    dying_explosion = "stone-furnace-explosion",
    repair_sound = sounds.manual_repair,
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg",volume = 0.8},
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.car_stone_impact,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/furnace.ogg",
          volume = 0.6
        }
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      audible_distance_modifier = 0.4
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    damaged_trigger_effect = hit_effects.rock(),
    crafting_categories = {"advanced-smelting"},
    result_inventory_size = 1,
    energy_usage = "100kW",
    crafting_speed = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 2,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.6,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace.png",
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          shift = util.by_pixel(14.5, 2),
          hr_version =
          {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace.png",
            priority = "extra-high",
            width = 151,
            height = 146,
            frame_count = 1,
            shift = util.by_pixel(-0.25, 6),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(14.5, 2),
          hr_version =
          {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-shadow.png",
            priority = "extra-high",
            width = 164,
            height = 74,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(14.5, 13),
            scale = 0.5
          }
        }
      }
    },
    working_visualisations =
    {
      {
        draw_as_light = true,
        fadeout = true,
        effect = "flicker",
        animation =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
              priority = "extra-high",
              line_length = 8,
              width = 20,
              height = 49,
              frame_count = 48,
              axially_symmetrical = false,
              direction_count = 1,
              shift = util.by_pixel(-0.5, 5.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
                priority = "extra-high",
                line_length = 8,
                width = 41,
                height = 100,
                frame_count = 48,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(-0.75, 5.5),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/stone-furnace/stone-furnace-light.png",
              blend_mode = "additive",
              width = 54,
              height = 74,
              repeat_count = 48,
              shift = util.by_pixel(0, 4),
              hr_version =
              {
                filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-light.png",
                blend_mode = "additive",
                width = 106,
                height = 144,
                repeat_count = 48,
                shift = util.by_pixel(0, 5),
                scale = 0.5,
              }
            },
          }
        }
      },
      {
        draw_as_light = true,
        draw_as_sprite = false,
        fadeout = true,
        effect = "flicker",
        animation =
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-ground-light.png",
          blend_mode = "additive",
          draw_as_sprite = false,
          width = 56,
          height = 56,
          repeat_count = 48,
          shift = util.by_pixel(0, 44),
          hr_version =
          {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-ground-light.png",
            blend_mode = "additive",
            draw_as_sprite = false,
            width = 116,
            height = 110,
            repeat_count = 48,
            shift = util.by_pixel(-1, 44),
            scale = 0.5,
          }
        },
      },
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/stone-furnace/stone-furnace-reflection.png",
        priority = "extra-high",
        width = 16,
        height = 16,
        shift = util.by_pixel(0, 35),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
  },
  {
    type = "mining-drill",
    name = utils.mod_prefix.."burner-mining-drill-mk2",
    icon = "__base__/graphics/icons/burner-mining-drill.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    resource_categories = {"basic-solid"},
    minable = {mining_time = 0.3, result = utils.mod_prefix.."burner-mining-drill-mk2"},
    max_health = 150,
    corpse = "burner-mining-drill-remnants",
    dying_explosion = "burner-mining-drill-explosion",
    collision_box = {{ -0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{ -1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    mining_speed = 0.4,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/burner-mining-drill.ogg",
          volume = 0.6
        },
        {
          filename = "__base__/sound/burner-mining-drill-1.ogg",
          volume = 0.6
        }
      },
      --max_sounds_per_type = 3,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    allowed_effects = {}, -- no beacon effects on the burner drill
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = 20,
      light_flicker = {color = {0,0,0}},
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 3
        }
      }
    },
    energy_usage = "180kW",
    animations =
    {
      north =
      {
        layers =
        {
          {
            priority = "high",
            width = 87,
            height = 95,
            line_length = 4,
            shift = util.by_pixel(2.5, 0.5),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-N.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            hr_version =
            {
              priority = "high",
              width = 173,
              height = 188,
              line_length = 4,
              shift = util.by_pixel(2.75, 0.5),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-N.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              scale = 0.5
            }
          },
          {
            priority = "high",
            width = 109,
            height = 76,
            line_length = 4,
            shift = util.by_pixel(23.5, -1),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-N-shadow.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            draw_as_shadow = true,
            hr_version =
            {
              priority = "high",
              width = 217,
              height = 150,
              line_length = 4,
              shift = util.by_pixel(23.75, -1),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-N-shadow.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      east =
      {
        layers =
        {
          {
            priority = "high",
            width = 93,
            height = 84,
            line_length = 4,
            shift = util.by_pixel(2.5, 1),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-E.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            hr_version =
            {
              priority = "high",
              width = 185,
              height = 168,
              line_length = 4,
              shift = util.by_pixel(2.75, 1),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-E.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              scale = 0.5
            }
          },
          {
            priority = "high",
            width = 93,
            height = 65,
            line_length = 4,
            shift = util.by_pixel(13.5, 0.5),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-E-shadow.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            draw_as_shadow = true,
            hr_version =
            {
              priority = "high",
              width = 185,
              height = 128,
              line_length = 4,
              shift = util.by_pixel(13.75, 0.5),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-E-shadow.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      south =
      {
        layers =
        {
          {
            priority = "high",
            width = 87,
            height = 87,
            line_length = 4,
            shift = util.by_pixel(0.5, -0.5),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-S.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            hr_version =
            {
              priority = "high",
              width = 174,
              height = 174,
              line_length = 4,
              shift = util.by_pixel(0.5, -0.5),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-S.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              scale = 0.5
            }
          },
          {
            priority = "high",
            width = 88,
            height = 69,
            line_length = 4,
            shift = util.by_pixel(11, 2.5),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-S-shadow.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            draw_as_shadow = true,
            hr_version =
            {
              priority = "high",
              width = 174,
              height = 137,
              line_length = 4,
              shift = util.by_pixel(11, 2.75),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-S-shadow.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      },
      west =
      {
        layers =
        {
          {
            priority = "high",
            width = 91,
            height = 88,
            line_length = 4,
            shift = util.by_pixel(-1.5, 0),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-W.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            hr_version =
            {
              priority = "high",
              width = 180,
              height = 176,
              line_length = 4,
              shift = util.by_pixel(-1.5, 0),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-W.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              scale = 0.5
            }
          },
          {
            priority = "high",
            width = 89,
            height = 66,
            line_length = 4,
            shift = util.by_pixel(7.5, 1),
            filename = "__base__/graphics/entity/burner-mining-drill/burner-mining-drill-W-shadow.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            draw_as_shadow = true,
            hr_version =
            {
              priority = "high",
              width = 176,
              height = 130,
              line_length = 4,
              shift = util.by_pixel(7.5, 1),
              filename = "__base__/graphics/entity/burner-mining-drill/hr-burner-mining-drill-W-shadow.png",
              frame_count = 32,
              animation_speed = 0.5,
              run_mode = "forward-then-backward",
              draw_as_shadow = true,
              scale = 0.5
            }
          }
        }
      }
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    resource_searching_radius = 1.49,
    vector_to_place_result = {-0.5, -1.3},
    fast_replaceable_group = "mining-drill",

    circuit_wire_connection_points = circuit_connector_definitions["burner-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["burner-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  {
    type = "mining-drill",
    name = utils.mod_prefix.."electric-mining-drill-mk2",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.3, result = "electric-mining-drill"},
    max_health = 300,
    resource_categories = {"basic-solid"},
    corpse = "electric-mining-drill-remnants",
    dying_explosion = "electric-mining-drill-explosion",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    input_fluid_box =
    {
      production_type = "input-output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        { position = {-2, 0} },
        { position = {2, 0} },
        { position = {0, 2} }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.5
      },
      audible_distance_modifier = 0.6,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,

    graphics_set =
    {
      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = electric_mining_drill_status_colors(),

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 30, south = 30, west = 30 },

      animation =
      {
        north =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N.png",
              line_length = 1,
              width = 96,
              height = 104,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -4),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N.png",
                line_length = 1,
                width = 190,
                height = 208,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -4),
                repeat_count = 5,
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 32,
              height = 34,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-4, -44),
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-output.png",
                line_length = 5,
                width = 60,
                height = 66,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-3, -44),
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-shadow.png",
              line_length = 1,
              width = 106,
              height = 104,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(6, -4),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-shadow.png",
                line_length = 1,
                width = 212,
                height = 204,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(6, -3),
                repeat_count = 5,
                scale = 0.5
              }
            }
          }
        },
        east =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E.png",
              line_length = 1,
              width = 96,
              height = 94,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -4),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E.png",
                line_length = 1,
                width = 192,
                height = 188,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -4),
                repeat_count = 5,
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 26,
              height = 38,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(30, -8),
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-output.png",
                line_length = 5,
                width = 50,
                height = 74,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(30, -8),
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-shadow.png",
              line_length = 1,
              width = 112,
              height = 92,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(10, 2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-shadow.png",
                line_length = 1,
                width = 222,
                height = 182,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(10, 2),
                repeat_count = 5,
                scale = 0.5
              }
            }
          }
        },
        south =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S.png",
              line_length = 1,
              width = 92,
              height = 98,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S.png",
                line_length = 1,
                width = 184,
                height = 192,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -1),
                repeat_count = 5,
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-shadow.png",
              line_length = 1,
              width = 106,
              height = 102,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(6, 2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-shadow.png",
                line_length = 1,
                width = 212,
                height = 204,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(6, 2),
                repeat_count = 5,
                scale = 0.5
              }
            }
          }
        },
        west =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W.png",
              line_length = 1,
              width = 96,
              height = 94,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -4),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W.png",
                line_length = 1,
                width = 192,
                height = 188,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -4),
                repeat_count = 5,
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 24,
              height = 28,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-30, -12),
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-output.png",
                line_length = 5,
                width = 50,
                height = 60,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-31, -13),
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-shadow.png",
              line_length = 1,
              width = 102,
              height = 92,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(-6, 2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-shadow.png",
                line_length = 1,
                width = 200,
                height = 182,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(-5, 2),
                repeat_count = 5,
                scale = 0.5
              }
            }
          }
        }
      },

      shift_animation_waypoints =
      {
        -- Movement should be between 0.25-0.4 distance
        -- Bounds -0.5 - 0.6
        north = { {0, 0}, {0, -0.3}, {0, 0.1}, {0, 0.5}, {0, 0.2}, {0, -0.1}, {0, -0.5}, {0, -0.15}, {0, 0.25}, {0, 0.6}, {0, 0.3} },
        -- Bounds -1 - 0
        east = { {0, 0}, {-0.4, 0}, {-0.1, 0}, {-0.5, 0}, {-0.75, 0}, {-1, 0}, {-0.65, 0}, {-0.3, 0}, {-0.9, 0}, {-0.6, 0}, {-0.3, 0} },
        -- Bounds -1 - 0
        south = { {0, 0}, {0, -0.4}, {0, -0.1}, {0, -0.5}, {0, -0.75}, {0, -1}, {0, -0.65}, {0, -0.3}, {0, -0.9}, {0, -0.6}, {0, -0.3} },
        -- Bounds 0 - 1
        west = { {0, 0}, {0.4, 0}, {0.1, 0}, {0.5, 0}, {0.75, 0}, {1, 0}, {0.65, 0}, {0.3, 0}, {0.9, 0}, {0.6, 0}, {0.3, 0} }
      },

      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

      working_visualisations =
      {
        -- dust animation 1
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 }
        },

        -- dust animation directional 1
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 24,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -44),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-smoke.png",
                  line_length = 5,
                  width = 42,
                  height = 58,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-1, -44),
                  scale = 0.5
                }
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              electric_mining_drill_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              electric_mining_drill_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              electric_mining_drill_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              electric_mining_drill_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          }
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke_front(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 }
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
                line_length = 5,
                width = 24,
                height = 28,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(24, -12),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 56,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(24, -12),
                  scale = 0.5
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
                line_length = 5,
                width = 24,
                height = 18,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, 20),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-smoke.png",
                  line_length = 5,
                  width = 48,
                  height = 36,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, 20),
                  scale = 0.5
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-26, -12),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 54,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-25, -11),
                  scale = 0.5
                }
              }
            }
          }
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          --north_animation = util.empty_sprite(),
          east_animation = electric_mining_drill_horizontal_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = electric_mining_drill_horizontal_front_animation()
        },

        -- front frame
        {
          always_draw = true,
          north_animation = nil,
          east_animation =
          {
            priority = "high",
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-front.png",
            line_length = 1,
            width = 66,
            height = 74,
            frame_count = 1,
            animation_speed = electric_drill_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(22, 10),
            hr_version =
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-front.png",
              line_length = 1,
              width = 136,
              height = 148,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(21, 10),
              scale = 0.5
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 44,
                height = 28,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-2, 34),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-output.png",
                  line_length = 5,
                  width = 84,
                  height = 56,
                  frame_count = 5,
                  animation_speed = electric_drill_animation_speed,
                  shift = util.by_pixel(-1, 34),
                  scale = 0.5
                }
              },
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-front.png",
                line_length = 1,
                width = 96,
                height = 54,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 26),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-front.png",
                  line_length = 1,
                  width = 190,
                  height = 104,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  repeat_count = 5,
                  shift = util.by_pixel(0, 27),
                  scale = 0.5
                }
              }
            }
          },
          west_animation =
          {
            priority = "high",
            filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-front.png",
            line_length = 1,
            width = 68,
            height = 70,
            frame_count = 1,
            animation_speed = electric_drill_animation_speed,
            direction_count = 1,
            shift = util.by_pixel(-22, 12),
            hr_version =
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-front.png",
              line_length = 1,
              width = 134,
              height = 140,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-22, 12),
              scale = 0.5
            }
          }
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        --electric_mining_drill_primary_light,
        electric_mining_drill_secondary_light
      }
    },

    wet_mining_graphics_set =
    {
      drilling_vertical_movement_duration = 10 / electric_drill_animation_speed,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = electric_mining_drill_status_colors(),

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 48, south = 48, west = 48 },

      animation =
      {
        north =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet.png",
              line_length = 1,
              width = 96,
              height = 100,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -8),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet.png",
                line_length = 1,
                width = 190,
                height = 198,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -7),
                repeat_count = 5,
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 32,
              height = 34,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-4, -44),
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-output.png",
                line_length = 5,
                width = 60,
                height = 66,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-3, -44),
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-shadow.png",
              line_length = 1,
              width = 124,
              height = 110,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(12, 2),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-shadow.png",
                line_length = 1,
                width = 248,
                height = 222,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(12, 1),
                repeat_count = 5,
                scale = 0.5
              }
            }
          }
        },
        west =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet.png",
              line_length = 1,
              width = 96,
              height = 106,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(2, -10),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet.png",
                line_length = 1,
                width = 194,
                height = 208,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(1, -9),
                repeat_count = 5,
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 24,
              height = 28,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-30, -12),
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-output.png",
                line_length = 5,
                width = 50,
                height = 60,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-31, -13),
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-shadow.png",
              line_length = 1,
              width = 132,
              height = 102,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(8, 6),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-shadow.png",
                line_length = 1,
                width = 260,
                height = 202,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(9, 6),
                repeat_count = 5,
                scale = 0.5
              }
            }
          }
        },
        south =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet.png",
              line_length = 1,
              width = 98,
              height = 106,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(0, -6),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet.png",
                line_length = 1,
                width = 192,
                height = 208,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(1, -5),
                repeat_count = 5,
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-shadow.png",
              line_length = 1,
              width = 124,
              height = 98,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(12, 4),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-shadow.png",
                line_length = 1,
                width = 248,
                height = 192,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(12, 5),
                repeat_count = 5,
                scale = 0.5
              }
            }
          }
        },
        east =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet.png",
              line_length = 1,
              width = 98,
              height = 106,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(-2, -10),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet.png",
                line_length = 1,
                width = 194,
                height = 208,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -9),
                repeat_count = 5,
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 26,
              height = 38,
              frame_count = 5,
              animation_speed = electric_drill_animation_speed,
              direction_count = 1,
              shift = util.by_pixel(30, -8),
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-output.png",
                line_length = 5,
                width = 50,
                height = 74,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(30, -8),
                scale = 0.5
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-shadow.png",
              line_length = 1,
              width = 112,
              height = 100,
              frame_count = 1,
              animation_speed = electric_drill_animation_speed,
              draw_as_shadow = true,
              shift = util.by_pixel(10, 6),
              repeat_count = 5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-shadow.png",
                line_length = 1,
                width = 226,
                height = 202,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                draw_as_shadow = true,
                shift = util.by_pixel(9, 5),
                repeat_count = 5,
                scale = 0.5
              }
            }
          }
        }
      },

      shift_animation_waypoints =
      {
        -- Movement should be between 0.25-0.4 distance
        -- Bounds -0.5 - 0.2
        north = { {0, 0}, {0, -0.4}, {0, -0.1}, {0, 0.2} },
        -- Bounds -0.3 - 0
        east = { {0, 0}, {-0.3, 0}, {0, 0}, {-0.25, 0} },
        -- Bounds -0.7 - 0
        south = { {0, 0}, {0, -0.4}, {0, -0.7}, {0, -0.3} },
        -- Bounds 0 - 0.3
        west = { {0, 0}, {0.3, 0}, {0, 0}, {0.25, 0} }
      },

      shift_animation_waypoint_stop_duration = 195 / electric_drill_animation_speed,
      shift_animation_transition_duration = 30 / electric_drill_animation_speed,

      working_visualisations =
      {
        -- dust animation 1
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke(),
          north_position = { 0, 0.25 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25 },
          west_position = { 0, 0 }
        },

        -- dust animation directional 1
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 24,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -44),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-smoke.png",
                  line_length = 5,
                  width = 42,
                  height = 58,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-1, -44),
                  scale = 0.5
                }
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation =
          {
            layers =
            {
              electric_mining_drill_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          east_animation =
          {
            layers =
            {
              electric_mining_drill_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          },
          south_animation =
          {
            layers =
            {
              electric_mining_drill_animation(),
              electric_mining_drill_shadow_animation()
            }
          },
          west_animation =
          {
            layers =
            {
              electric_mining_drill_horizontal_animation(),
              electric_mining_drill_horizontal_shadow_animation()
            }
          }
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = electric_mining_drill_smoke_front()
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-smoke.png",
                line_length = 5,
                width = 24,
                height = 28,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(24, -12),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 56,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(24, -12),
                  scale = 0.5
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-smoke.png",
                line_length = 5,
                width = 24,
                height = 18,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, 20),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-smoke.png",
                  line_length = 5,
                  width = 48,
                  height = 36,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, 20),
                  scale = 0.5
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-26, -12),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-smoke.png",
                  line_length = 5,
                  width = 46,
                  height = 54,
                  frame_count = 10,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-25, -11),
                  scale = 0.5
                }
              }
            }
          }
        },

        -- fluid window background (bottom)
        {
          -- render_layer = "lower-object-above-shadow",
          secondary_draw_order = -49,
          always_draw = true,
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background.png",
                line_length = 1,
                width = 12,
                height = 8,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -52),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-window-background.png",
                  line_length = 1,
                  width = 22,
                  height = 14,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -52),
                  scale = 0.5
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background.png",
                line_length = 1,
                width = 16,
                height = 12,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -44),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-window-background.png",
                  line_length = 1,
                  width = 30,
                  height = 20,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, -43),
                  scale = 0.5
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background.png",
                line_length = 1,
                width = 12,
                height = 8,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -52),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-window-background.png",
                  line_length = 1,
                  width = 22,
                  height = 14,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -52),
                  scale = 0.5
                }
              }
            }
          }
        },

        -- fluid base (bottom)
        {
          always_draw = true,
          -- render_layer = "lower-object-above-shadow",
          secondary_draw_order = -48,
          apply_tint = "input-fluid-base-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background.png",
                line_length = 1,
                width = 12,
                height = 8,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -52),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-background.png",
                  line_length = 1,
                  width = 22,
                  height = 14,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -52),
                  scale = 0.5
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background.png",
                line_length = 1,
                width = 14,
                height = 8,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -42),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-background.png",
                  line_length = 1,
                  width = 28,
                  height = 18,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, -43),
                  scale = 0.5
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background.png",
                line_length = 1,
                width = 12,
                height = 8,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -52),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-background.png",
                  line_length = 1,
                  width = 22,
                  height = 14,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -52),
                  scale = 0.5
                }
              }
            }
          }
        },

        -- fluid flow (bottom)
        {
          --render_layer = "lower-object-above-shadow",
          secondary_draw_order = -47,
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          north_animation = nil,
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow.png",
                line_length = 1,
                width = 12,
                height = 8,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -52),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-flow.png",
                  line_length = 1,
                  width = 24,
                  height = 14,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -52),
                  scale = 0.5
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow.png",
                line_length = 1,
                width = 14,
                height = 8,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-2, -42),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-flow.png",
                  line_length = 1,
                  width = 26,
                  height = 16,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-2, -42),
                  scale = 0.5
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow.png",
                line_length = 1,
                width = 12,
                height = 8,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -52),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-flow.png",
                  line_length = 1,
                  width = 24,
                  height = 14,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -52),
                  scale = 0.5
                }
              }
            }
          }
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          --north_animation = util.empty_sprite(),
          east_animation = electric_mining_drill_horizontal_front_animation(),
          --south_animation = util.empty_sprite(),
          west_animation = electric_mining_drill_horizontal_front_animation()
        },

        -- fluid window background (front)
        {
          always_draw = true,
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-window-background.png",
                line_length = 1,
                width = 86,
                height = 44,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, 10),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-window-background.png",
                  line_length = 1,
                  width = 172,
                  height = 90,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, 9),
                  scale = 0.5
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-window-background-front.png",
                line_length = 1,
                width = 40,
                height = 54,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(14, 10),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-window-background-front.png",
                  line_length = 1,
                  width = 80,
                  height = 106,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(14, 10),
                  scale = 0.5
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-window-background-front.png",
                line_length = 1,
                width = 86,
                height = 14,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -8),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-window-background-front.png",
                  line_length = 1,
                  width = 172,
                  height = 22,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -7),
                  scale = 0.5
                }
              }
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-window-background-front.png",
                line_length = 1,
                width = 40,
                height = 54,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-14, 10),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-window-background-front.png",
                  line_length = 1,
                  width = 82,
                  height = 110,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-15, 9),
                  scale = 0.5
                }
              }
            }
          }
        },

        -- fluid base (front)
        {
          always_draw = true,
          apply_tint = "input-fluid-base-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-background.png",
                line_length = 1,
                width = 90,
                height = 46,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, 10),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-fluid-background.png",
                  line_length = 1,
                  width = 178,
                  height = 94,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, 9),
                  scale = 0.5
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-background-front.png",
                line_length = 1,
                width = 40,
                height = 54,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(14, 10),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-background-front.png",
                  line_length = 1,
                  width = 80,
                  height = 102,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(14, 11),
                  scale = 0.5
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-background-front.png",
                line_length = 1,
                width = 90,
                height = 16,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -8),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-background-front.png",
                  line_length = 1,
                  width = 178,
                  height = 28,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -7),
                  scale = 0.5
                }
              }
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-background-front.png",
                line_length = 1,
                width = 40,
                height = 54,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-14, 10),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-background-front.png",
                  line_length = 1,
                  width = 82,
                  height = 106,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-15, 10),
                  scale = 0.5
                }
              }
            }
          }
        },

        -- fluid flow (front)
        {
          always_draw = true,
          apply_tint = "input-fluid-flow-color",
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-fluid-flow.png",
                line_length = 1,
                width = 86,
                height = 44,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, 10),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-fluid-flow.png",
                  line_length = 1,
                  width = 172,
                  height = 88,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, 10),
                  scale = 0.5
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-fluid-flow-front.png",
                line_length = 1,
                width = 40,
                height = 50,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(14, 12),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-fluid-flow-front.png",
                  line_length = 1,
                  width = 78,
                  height = 102,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(14, 11),
                  scale = 0.5
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-fluid-flow-front.png",
                line_length = 1,
                width = 86,
                height = 12,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, -8),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-fluid-flow-front.png",
                  line_length = 1,
                  width = 172,
                  height = 22,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, -8),
                  scale = 0.5
                }
              }
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-fluid-flow-front.png",
                line_length = 1,
                width = 40,
                height = 54,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-14, 10),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-fluid-flow-front.png",
                  line_length = 1,
                  width = 78,
                  height = 106,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-14, 10),
                  scale = 0.5
                }
              }
            }
          }
        },

        -- front frame (wet)
        {
          always_draw = true,
          north_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-wet-front.png",
                line_length = 1,
                width = 100,
                height = 66,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(0, 16),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-wet-front.png",
                  line_length = 1,
                  width = 200,
                  height = 130,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(0, 16),
                  scale = 0.5
                }
              }
            }
          },
          west_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-wet-front.png",
                line_length = 1,
                width = 104,
                height = 72,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(-4, 12),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-wet-front.png",
                  line_length = 1,
                  width = 208,
                  height = 144,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(-4, 12),
                  scale = 0.5
                }
              }
            }
          },
          south_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 44,
                height = 28,
                frame_count = 5,
                animation_speed = electric_drill_animation_speed,
                shift = util.by_pixel(-2, 34),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-output.png",
                  line_length = 5,
                  width = 84,
                  height = 56,
                  frame_count = 5,
                  animation_speed = electric_drill_animation_speed,
                  shift = util.by_pixel(-1, 34),
                  scale = 0.5
                }
              },
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-wet-front.png",
                line_length = 1,
                width = 96,
                height = 70,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                repeat_count = 5,
                shift = util.by_pixel(0, 18),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-wet-front.png",
                  line_length = 1,
                  width = 192,
                  height = 140,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  repeat_count = 5,
                  shift = util.by_pixel(0, 18),
                  scale = 0.5
                }
              }
            }
          },
          east_animation =
          {
            layers =
            {
              {
                priority = "high",
                filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-wet-front.png",
                line_length = 1,
                width = 106,
                height = 76,
                frame_count = 1,
                animation_speed = electric_drill_animation_speed,
                direction_count = 1,
                shift = util.by_pixel(2, 10),
                hr_version =
                {
                  priority = "high",
                  filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-wet-front.png",
                  line_length = 1,
                  width = 208,
                  height = 148,
                  frame_count = 1,
                  animation_speed = electric_drill_animation_speed,
                  direction_count = 1,
                  shift = util.by_pixel(3, 11),
                  scale = 0.5
                }
              }
            }
          }
        },

        -- LEDs
        electric_mining_drill_status_leds_working_visualisation(),

        -- light
        --electric_mining_drill_primary_light,
        electric_mining_drill_secondary_light
      }
    },

    integration_patch =
    {
      north =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-integration.png",
        line_length = 1,
        width = 110,
        height = 108,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(-2, 2),
        repeat_count = 5,
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-integration.png",
          line_length = 1,
          width = 216,
          height = 218,
          frame_count = 1,
          animation_speed = electric_drill_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(-1, 1),
          repeat_count = 5,
          scale = 0.5
        }
      },
      east =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-integration.png",
        line_length = 1,
        width = 116,
        height = 108,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(4, 2),
        repeat_count = 5,
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-integration.png",
          line_length = 1,
          width = 236,
          height = 214,
          frame_count = 1,
          animation_speed = electric_drill_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(3, 2),
          repeat_count = 5,
          scale = 0.5
        }
      },
      south =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-integration.png",
        line_length = 1,
        width = 108,
        height = 114,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(0, 4),
        repeat_count = 5,
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-integration.png",
          line_length = 1,
          width = 214,
          height = 230,
          frame_count = 1,
          animation_speed = electric_drill_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(0, 3),
          repeat_count = 5,
          scale = 0.5
        }
      },
      west =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-integration.png",
        line_length = 1,
        width = 118,
        height = 106,
        frame_count = 1,
        animation_speed = electric_drill_animation_speed,
        direction_count = 1,
        shift = util.by_pixel(-4, 2),
        repeat_count = 5,
        hr_version =
        {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-integration.png",
          line_length = 1,
          width = 234,
          height = 214,
          frame_count = 1,
          animation_speed = electric_drill_animation_speed,
          direction_count = 1,
          shift = util.by_pixel(-4, 1),
          repeat_count = 5,
          scale = 0.5
        }
      }
    },

    mining_speed = 1,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 16,
      usage_priority = "secondary-input"
    },
    energy_usage = "120kW",
    resource_searching_radius = 2.5,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 4
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 10,
      height = 10
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "mining-drill",

    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  {
    type = "inserter",
    name = utils.mod_prefix.."quick-inserter",
    icon = "__base__/graphics/icons/fast-inserter.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = { mining_time = 0.1, result = utils.mod_prefix.."quick-inserter" },
    max_health = 150,
    corpse = "fast-inserter-remnants",
    dying_explosion = "fast-inserter-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    damaged_trigger_effect = hit_effects.entity(),
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = "16KJ",
    energy_per_rotation = "16KJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1.2kW"
    },
    extension_speed = 0.18,
    rotation_speed = 0.1,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = sounds.inserter_fast,
    hand_base_picture =
    {
      filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
      hr_version =
      {
        filename = "__base__/graphics/entity/fast-inserter/hr-fast-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25
      }
    },
    hand_closed_picture =
    {
      filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/fast-inserter/hr-fast-inserter-hand-closed.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_picture =
    {
      filename = "__base__/graphics/entity/fast-inserter/fast-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/fast-inserter/hr-fast-inserter-hand-open.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 33,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
        priority = "extra-high",
        width = 32,
        height = 132,
        scale = 0.25
      }
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version =
      {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open-shadow.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/fast-inserter/fast-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0},
        hr_version =
        {
          filename = "__base__/graphics/entity/fast-inserter/hr-fast-inserter-platform.png",
          priority = "extra-high",
          width = 105,
          height = 79,
          shift = util.by_pixel(1.5, 7.5-1),
          scale = 0.5
        }
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
    circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
  },
  {
    type = "assembling-machine",
    name = utils.mod_prefix.."inserters-assembling-machine",
    icon = utils.fi_entities_icons_path .. "inserters-assembling-machine.png",
    icon_size = 64,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 1, result = utils.mod_prefix.."inserters-assembling-machine" },
    max_health = 800,
    corpse = "fi-medium-random-pipes-remnant",
    dying_explosion = "big-explosion",
    resistances = {
      { type = "physical", percent = 50 },
      { type = "fire", percent = 95 },
      { type = "impact", percent = 80 },
    },
    collision_box = { { -2.25, -2.25 }, { 2.25, 2.25 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    damaged_trigger_effect = hit_effects.entity(),
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = assemblerpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = { { type = "input", position = { 0, -3 } } },
        secondary_draw_orders = { north = -1 },
      },
      {
        production_type = "output",
        pipe_picture = assemblerpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = { { type = "output", position = { 0, 3 } } },
        secondary_draw_orders = { north = -1 },
      },
      off_when_no_fluid_recipe = true,
    },
    scale_entity_info_icon = true,
    animation = {
      layers = {
        {
          filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine.png",
          priority = "high",
          width = 160,
          height = 160,
          frame_count = 1,
          repeat_count = 32,
          animation_speed = 0.25,
          shift = { 0, 0 },
          hr_version = {
            filename = utils.fi_entities_path .. "inserters-assembling-machine/hr-inserters-assembling-machine.png",
            priority = "high",
            width = 320,
            height = 320,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.25,
            shift = { 0, 0 },
            scale = 0.5,
          },
        },
        {
          filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine-w1.png",
          priority = "high",
          width = 64,
          height = 72,
          shift = { -1.02, 0.29 },
          frame_count = 32,
          line_length = 8,
          animation_speed = 0.1,
          hr_version = {
            filename = utils.fi_entities_path .. "inserters-assembling-machine/hr-inserters-assembling-machine-w1.png",
            priority = "high",
            width = 128,
            height = 144,
            shift = { -1.02, 0.29 },
            frame_count = 32,
            line_length = 8,
            animation_speed = 0.1,
            scale = 0.5,
          },
        },
        {
          filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine-steam.png",
          priority = "high",
          width = 40,
          height = 40,
          shift = { -1.2, -2.1 },
          frame_count = 32,
          line_length = 8,
          animation_speed = 1.5,
          hr_version = {
            filename = utils.fi_entities_path .. "inserters-assembling-machine/hr-inserters-assembling-machine-steam.png",
            priority = "high",
            width = 80,
            height = 81,
            shift = { -1.2, -2.1 },
            frame_count = 32,
            line_length = 8,
            animation_speed = 1.5,
            scale = 0.5,
          },
        },
        {
          filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine-sh.png",
          priority = "high",
          width = 173,
          height = 151,
          shift = { 0.32, 0.12 },
          frame_count = 1,
          repeat_count = 32,
          animation_speed = 0.1,
          draw_as_shadow = true,
          hr_version = {
            filename = utils.fi_entities_path .. "inserters-assembling-machine/hr-inserters-assembling-machine-sh.png",
            priority = "high",
            width = 346,
            height = 302,
            shift = { 0.32, 0.12 },
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.1,
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
        {
          filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine-w2.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 8,
          line_length = 4,
          repeat_count = 4,
          animation_speed = 0.1,
          shift = { 0.17, -1.445 },
          hr_version = {
            filename = utils.fi_entities_path .. "inserters-assembling-machine/hr-inserters-assembling-machine-w2.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 8,
            line_length = 4,
            repeat_count = 4,
            animation_speed = 0.1,
            shift = { 0.17, -1.445 },
            scale = 0.5,
          },
        },
        {
          filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine-w3.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 8,
          line_length = 4,
          repeat_count = 4,
          animation_speed = 0.1,
          shift = { 0.93, -2.05 },
          hr_version = {
            filename = utils.fi_entities_path .. "inserters-assembling-machine/hr-inserters-assembling-machine-w3.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 8,
            line_length = 4,
            repeat_count = 4,
            animation_speed = 0.1,
            shift = { 0.93, -2.05 },
            scale = 0.5,
          },
        },
        {
          filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine-w3.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 8,
          line_length = 4,
          repeat_count = 4,
          animation_speed = 0.1,
          shift = { 0.868, -0.082 },
          hr_version = {
            filename = utils.fi_entities_path .. "inserters-assembling-machine/hr-inserters-assembling-machine-w3.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 8,
            line_length = 4,
            repeat_count = 4,
            animation_speed = 0.1,
            shift = { 0.868, -0.082 },
            scale = 0.5,
          },
        },
        {
          filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine-w3.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 8,
          line_length = 4,
          repeat_count = 4,
          animation_speed = 0.1,
          shift = { 0.868, 0.552 },
          hr_version = {
            filename = utils.fi_entities_path .. "inserters-assembling-machine/hr-inserters-assembling-machine-w3.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 8,
            line_length = 4,
            repeat_count = 4,
            animation_speed = 0.1,
            shift = { 0.868, 0.552 },
            scale = 0.5,
          },
        },
      },
    },
    crafting_categories = crafting_categories,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {
        {
          filename = utils.fi_buildings_sounds_path .. "mechanisms/inserters-assembling-machine.ogg",
          volume = 0.8,
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      apparent_volume = 1.5,
      max_sounds_per_type = 3,
      fade_in_ticks = 10,
      fade_out_ticks = 30,
    },
    idle_sound = { filename = "__base__/sound/idle1.ogg" },
    crafting_speed = 0.6,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4,
    },

    water_reflection = {
      pictures = {
        filename = utils.fi_entities_path .. "inserters-assembling-machine/inserters-assembling-machine-reflection.png",
        priority = "extra-high",
        width = 70,
        height = 50,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },

    energy_usage = "0.75KW",
    module_specification = { module_slots = 5, module_info_icon_shift = { 0, 1.7 }, module_info_icon_scale = 1 },
    allowed_effects = { "consumption", "speed", "pollution" },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
  },
  {
    type = "assembling-machine",
    name = utils.mod_prefix.."coke-furnace",
    icon = "__base__/graphics/icons/stone-furnace.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = utils.mod_prefix.."coke-furnace"},
    max_health = 200,
    corpse = "stone-furnace-remnants",
    dying_explosion = "stone-furnace-explosion",
    repair_sound = sounds.manual_repair,
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg",volume = 0.8},
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.car_stone_impact,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/furnace.ogg",
          volume = 0.6
        }
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      audible_distance_modifier = 0.4
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    damaged_trigger_effect = hit_effects.rock(),
    crafting_categories = {"coking"},
    result_inventory_size = 1,
    energy_usage = "200kW",
    crafting_speed = 1,
    energy_source =
    {
      type = "void",
    },
    animation =
    {
      layers =
      {
        {
          filename = utils.fi_entities_path.."coke-furnace/coke-furnace.png",
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          shift = util.by_pixel(14.5, 2),
          hr_version =
          {
            filename = utils.fi_entities_path.."coke-furnace/coke-furnace.png",
            priority = "extra-high",
            width = 151,
            height = 146,
            frame_count = 1,
            shift = util.by_pixel(-0.25, 6),
            scale = 0.5
          }
        },
        {
          filename = utils.fi_entities_path.."coke-furnace/coke-furnace-shadow.png",
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(14.5, 2),
          hr_version =
          {
            filename = utils.fi_entities_path.."coke-furnace/coke-furnace-shadow.png",
            priority = "extra-high",
            width = 164,
            height = 74,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(14.5, 13),
            scale = 0.5
          }
        }
      }
    },
    working_visualisations =
    {
      {
        draw_as_light = true,
        fadeout = true,
        effect = "flicker",
        animation =
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
              priority = "extra-high",
              line_length = 8,
              width = 20,
              height = 49,
              frame_count = 48,
              axially_symmetrical = false,
              direction_count = 1,
              shift = util.by_pixel(-0.5, 5.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
                priority = "extra-high",
                line_length = 8,
                width = 41,
                height = 100,
                frame_count = 48,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(-0.75, 5.5),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/stone-furnace/stone-furnace-light.png",
              blend_mode = "additive",
              width = 54,
              height = 74,
              repeat_count = 48,
              shift = util.by_pixel(0, 4),
              hr_version =
              {
                filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-light.png",
                blend_mode = "additive",
                width = 106,
                height = 144,
                repeat_count = 48,
                shift = util.by_pixel(0, 5),
                scale = 0.5,
              }
            },
          }
        }
      },
      {
        draw_as_light = true,
        draw_as_sprite = false,
        fadeout = true,
        effect = "flicker",
        animation =
        {
          filename = "__base__/graphics/entity/stone-furnace/stone-furnace-ground-light.png",
          blend_mode = "additive",
          draw_as_sprite = false,
          width = 56,
          height = 56,
          repeat_count = 48,
          shift = util.by_pixel(0, 44),
          hr_version =
          {
            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-ground-light.png",
            blend_mode = "additive",
            draw_as_sprite = false,
            width = 116,
            height = 110,
            repeat_count = 48,
            shift = util.by_pixel(-1, 44),
            scale = 0.5,
          }
        },
      },
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__base__/graphics/entity/stone-furnace/stone-furnace-reflection.png",
        priority = "extra-high",
        width = 16,
        height = 16,
        shift = util.by_pixel(0, 35),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
  },
  {
    type = "assembling-machine",
    name = utils.mod_prefix.."crusher",
    icon_size = 64, icon_mipmaps = 4,
    icon = utils.fi_entities_icons_path.."crusher.png",
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = utils.mod_prefix.."crusher" },
    fast_replaceable_group = "crusher",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    module_specification = {
      module_slots = 5,
    },
    allowed_effects = { "consumption", "speed", "pollution", "productivity" },
    crafting_categories = { "crushing" },
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.03 * 60,
    },
    energy_usage = "100kW",
    ingredient_count = 3,
    animation = {
      layers = {
        {
          filename = utils.fi_entities_path.."crusher/crusher-base.png",
          priority = "extra-high",
          width = 94,
          height = 108,
          frame_count = 16,
          line_length = 4,
          shift = util.by_pixel(0, -5),
          animation_speed = 0.5,
          hr_version = {
            filename =  utils.fi_entities_path.."crusher/crusher-base.png",
            priority = "extra-high",
            width = 189,
            height = 214,
            frame_count = 16,
            line_length = 4,
            shift = util.by_pixel(-0.5, -5),
            animation_speed = 0.5,
            scale = 0.5,
          } or nil,
        },
        {
          filename =  utils.fi_entities_path.."crusher/crusher-shadow.png",
          priority = "extra-high",
          width = 141,
          height = 72,
          repeat_count = 16,
          shift = util.by_pixel(25, 17),
          draw_as_shadow = true,
          animation_speed = 0.5,
          hr_version = {
            filename = utils.fi_entities_path.."crusher/crusher-shadow.png",
            priority = "extra-high",
            width = 282,
            height = 140,
            repeat_count = 16,
            shift = util.by_pixel(24, 17.5),
            draw_as_shadow = true,
            animation_speed = 0.5,
            scale = 0.5,
          } or nil,
        },
      },
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = { filename = utils.sound_path.."crusher.ogg", volume = 0.6 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      audible_distance_modifier = 0.5,
      apparent_volume = 1.25,
    },
  },
  });
  
  createLoader("loader", utils.color(249, 207, 70),  0.01666666666666666666666666666667, "loader.png", data.raw["transport-belt"]["transport-belt"].belt_animation_set, utils.mod_prefix.."fast-loader");
  createLoader("fast-loader", utils.color(228, 24, 38), 0.03333333333333333333333333333333, "fast-loader.png", data.raw["transport-belt"]["fast-transport-belt"].belt_animation_set, utils.mod_prefix.."express-loader" );
  createLoader("express-loader", utils.color(90, 190, 220), 0.06666666666666666666666666666667, "express-loader.png", data.raw["transport-belt"]["express-transport-belt"].belt_animation_set);