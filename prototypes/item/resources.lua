local util = require('utils')
data:extend({
 {
    type = "item",
    name = util.mod_prefix.. "lead-ore",
    icon = util.fi_entities_icons_path.."resources/lead-ore.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = util.fi_entities_icons_path.."resources/lead-ore.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = util.fi_entities_icons_path.."resources/lead-ore-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = util.fi_entities_icons_path.."resources/lead-ore-2.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = util.fi_entities_icons_path.."resources/lead-ore-3.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "raw-resource",
    order = "e[lead-ore]",
    stack_size = 50
  },
  {
    type = "item",
    name = util.mod_prefix.. "crushed-lead-ore",
    icon = util.fi_entities_icons_path.."resources/crushed-lead-ore.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "raw-resource",
    order = "e[crushed-lead-ore]",
    stack_size = 50
  },
  {
    type = "item",
    name = util.mod_prefix.. "sand",
    icon = util.fi_entities_icons_path.."resources/sand.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
      { size = 64, filename = util.fi_entities_icons_path.."resources/sand.png",   scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = util.fi_entities_icons_path.."resources/sand-1.png", scale = 0.25, mipmap_count = 4 },
      { size = 64, filename = util.fi_entities_icons_path.."resources/sand-2.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "raw-resource",
    order = "e[sand]",
    stack_size = 50
  },
  {
    type = "item",
    name = util.mod_prefix.. "crushed-copper-ore",
    icon = util.fi_entities_icons_path.."resources/crushed-copper-ore.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "raw-resource",
    order = "e[crushed-copper-ore]",
    stack_size = 50
  },
  {
    type = "item",
    name = util.mod_prefix.. "crushed-iron-ore",
    icon = util.fi_entities_icons_path.."resources/crushed-iron-ore.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "raw-resource",
    order = "e[crushed-iron-ore]",
    stack_size = 50
  },
})