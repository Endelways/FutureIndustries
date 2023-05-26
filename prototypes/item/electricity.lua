local util = require('utils')

data:extend({
 {
    type = "item",
    name = util.mod_prefix.."small-electric-pole",
    icon = "__base__/graphics/icons/small-electric-pole.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-ab[small-electric-pole]",
    place_result = util.mod_prefix.."small-electric-pole",
    stack_size = 50
 },
 {
   type = "item",
   name = util.mod_prefix.."advanced-solar-panel",
   icon = util.fi_entities_icons_path.."advanced-solar-panel.png",
   icon_size = 64, icon_mipmaps = 4,
   subgroup = "energy",
   order = "d[solar-panel]-b[solar-panel]",
   place_result = util.mod_prefix.."advanced-solar-panel",
   stack_size = 50
 }
})