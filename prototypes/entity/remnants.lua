local utils = require('utils')
data:extend({
    {
      type = "corpse",
      name = utils.mod_prefix.."medium-random-pipes-remnant",
      icon = utils.fi_entities_icons_path .. "remnants-icon.png",
      icon_size = 64,
      flags = { "placeable-neutral", "building-direction-8-way", "not-on-map" },
      selection_box = { { -3, -3 }, { 3, 3 } },
      tile_width = 9,
      tile_height = 9,
      selectable_in_game = false,
      subgroup = "remnants",
      order = "z[remnants]-a[generic]-b[medium]",
      time_before_removed = 60 * 60 * 20, -- 20 minutes
      final_render_layer = "remnants",
      remove_on_tile_placement = false,
      animation = make_rotated_animation_variations_from_sheet(1, {
        filename = utils.fi_remnants_path .. "medium-random-pipes-remnant/medium-random-pipes-remnant.png",
        line_length = 1,
        width = 175,
        height = 175,
        frame_count = 1,
        direction_count = 1,
        hr_version = {
          filename = utils.fi_remnants_path .. "medium-random-pipes-remnant/hr-medium-random-pipes-remnant.png",
          line_length = 1,
          width = 350,
          height = 350,
          frame_count = 1,
          direction_count = 1,
          scale = 0.5,
        },
      }),
    },
    {
      type = "corpse",
      name = utils.mod_prefix.."advanced-solar-panel-remnants",
      icon = utils.fi_entities_icons_path.."advanced-solar-panel.png",
      icon_size = 64, icon_mipmaps = 4,
      flags = {"placeable-neutral", "not-on-map"},
      subgroup = "energy-remnants",
      order = "a-c-a",
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      tile_width = 3,
      tile_height = 3,
      selectable_in_game = false,
      time_before_removed = 60 * 60 * 15, -- 15 minutes
      final_render_layer = "remnants",
      remove_on_tile_placement = false,
      animation = make_rotated_animation_variations_from_sheet (2,
      {
        filename = utils.fi_entities_path.."remnants/advanced-solar-panel/advanced-solar-panel-remnants.png",
        line_length = 1,
        width = 580,
        height = 564,
        frame_count = 1,
        variation_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(4, 0),
        hr_version =
        {
          filename = utils.fi_entities_path.."remnants/advanced-solar-panel/advanced-solar-panel-remnants.png",
          line_length = 1,
          width = 580,
          height = 564,
          frame_count = 1,
          variation_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(3.5, 0),
          scale = 0.5
        }
      })
    },
  })
  