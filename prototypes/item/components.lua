local util = require('utils')
data:extend({
  {
    type = "item",
    name = util.mod_prefix.."lead-plate",
    icon = util.fi_entities_icons_path.."lead-plate.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "c[lead-plate]",
    stack_size = 100
  },
  {
    type = "item",
    name = util.mod_prefix.."lead-stick",
    icon = util.fi_entities_icons_path.."lead-stick.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "b[lead-stick]",
    stack_size = 100
  },
  {
    type = "item",
    name = util.mod_prefix.."lead-gear-wheel",
    icon = util.fi_entities_icons_path.."lead-gear-wheel.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "c[lead-gear-wheel]",
    stack_size = 100
  },
  {
    type = "item",
    name = util.mod_prefix.."lead-cable",
    icon = util.fi_entities_icons_path.."lead-cable.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "a[lead-cable]",
    stack_size = 200,
    wire_count = 1
  },
  {
    type = "item",
    name = util.mod_prefix.."mechanical-arm",
    icon = util.fi_entities_icons_path.."mechanical-arm.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "manipulators",
    order = "f[mechanical-arm]",
    stack_size = 20
  },
  {
    type = "item",
    name = util.mod_prefix.."stack-mechanical-arm",
    icon = util.fi_entities_icons_path.."stack-mechanical-arm.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "manipulators",
    order = "g[mechanical-arm]",
    stack_size = 20
  },
  {
    type = "item",
    name = util.mod_prefix.."inserter-stand",
    icon = util.fi_entities_icons_path.."inserter-stand.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "manipulators",
    order = "a[inserter-stand]",
    stack_size = 20
  },
  {
    type = "item",
    name = util.mod_prefix.."fast-inserter-stand",
    icon = util.fi_entities_icons_path.."fast-inserter-stand.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "manipulators",
    order = "b[fast-inserter-stand]",
    stack_size = 20
  },
  {
    type = "item",
    name = util.mod_prefix.."filter-inserter-stand",
    icon = util.fi_entities_icons_path.."filter-inserter-stand.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "manipulators",
    order = "c[fast-inserter-stand]",
    stack_size = 20
  },
  {
    type = "item",
    name = util.mod_prefix.."arm-base",
    icon = util.fi_entities_icons_path.."arm-base.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "manipulators",
    order = "d[arm-base]",
    stack_size = 20
  },
  {
    type = "item",
    name = util.mod_prefix.."long-arm-base",
    icon = util.fi_entities_icons_path.."long-arm-base.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "manipulators",
    order = "e[arm-base]",
    stack_size = 20
  },
  {
    type = "item",
    name = util.mod_prefix.."iron-pulley",
    icon = util.fi_entities_icons_path.."iron-pulley.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "belts",
    order = "a[iron-pulley]",
    stack_size = 20
  },
  {
    type = "item",
    name = util.mod_prefix.."coke",
    icon = util.fi_entities_icons_path.."coke.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "raw-resource",
    fuel_category = "chemical",
    fuel_value = "8MJ",
    order = "a[coke]",
    stack_size = 50
  },
  {
    type = "item",
    name = util.mod_prefix.."machine-frame",
    icon = util.fi_entities_icons_path.."machine-frame.png",
    icon_size = 32, icon_mipmaps = 4,
    subgroup = "raw-resource",
    order = "m[machine-frame]",
    stack_size = 50
  }
})