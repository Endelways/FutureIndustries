local util = require('utils')

data:extend({
 {
    type = "item",
    name = util.mod_prefix.."solid-fuel-lab",
    icon = "__base__/graphics/icons/lab.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "production-machine",
    order = "g[fuel-lab]",
    place_result = util.mod_prefix.."solid-fuel-lab",
    stack_size = 10
 }, 
 {
   type = "item",
   name = util.mod_prefix.."steel-stone-furnace",
   icon = "__base__/graphics/icons/stone-furnace.png",
   icon_size = 64, icon_mipmaps = 4,
   subgroup = "smelting-machine",
   order = "a[stone-steel-furnace]",
   place_result = util.mod_prefix.."steel-stone-furnace",
   stack_size = 10
},
{
   type = "item",
   name = util.mod_prefix.."burner-mining-drill-mk2",
   icon = "__base__/graphics/icons/burner-mining-drill.png",
   icon_size = 64, icon_mipmaps = 4,
   subgroup = "extraction-machine",
   order = "a[items]-b[burner-mining-drill-mk2]",
   place_result = util.mod_prefix.."burner-mining-drill-mk2",
   stack_size = 10
},
{
   type = "item",
   name = util.mod_prefix.."electric-mining-drill-mk2",
   icon = "__base__/graphics/icons/electric-mining-drill.png",
   icon_size = 64, icon_mipmaps = 4,
   subgroup = "extraction-machine",
   order = "a[items]-c[electric-mining-drill-mk2]",
   place_result = util.mod_prefix.."electric-mining-drill-mk2",
   stack_size = 10
},
{
   type = "item",
   name = util.mod_prefix.."quick-inserter",
   icon = "__base__/graphics/icons/fast-inserter.png",
   icon_size = 64, icon_mipmaps = 4,
   subgroup = "inserter",
   order = "h[quick-inserter]",
   place_result = util.mod_prefix.."quick-inserter",
   stack_size = 10
},
{
   type = "item",
   name = util.mod_prefix.."inserters-assembling-machine",
   icon = "__FutureIndustries__/graphics/icons/inserters-assembling-machine.png",
   icon_size = 64, icon_mipmaps = 4,
   subgroup = "production-machine",
   order = "A[inserters-assembling-machine]",
   place_result = util.mod_prefix.."inserters-assembling-machine",
   stack_size = 10
},
{
   type = "item",
   name = util.mod_prefix.."loader",
   icon = util.fi_entities_icons_path.."loaders/loader.png",
   icon_size = 64, icon_mipmaps = 4,
   subgroup = "belt",
   order = "d[loader]-A[basic-loader]",
   place_result = util.mod_prefix.."loader",
   stack_size = 50
 },
 {
   type = "item",
   name = util.mod_prefix.."fast-loader",
   icon = util.fi_entities_icons_path.."loaders/fast-loader.png",
   icon_size = 64, icon_mipmaps = 4,
   subgroup = "belt",
   order = "d[loader]-A[fast-loader]",
   place_result = util.mod_prefix.."fast-loader",
   stack_size = 50
 },
 {
   type = "item",
   name = util.mod_prefix.."express-loader",
   icon = util.fi_entities_icons_path.."loaders/express-loader.png",
   icon_size = 64, icon_mipmaps = 4,
   subgroup = "belt",
   order = "d[loader]-a[express-loader]",
   place_result = util.mod_prefix.."express-loader",
   stack_size = 50
 }, 
 {
   type = "item",
   name = util.mod_prefix.."coke-furnace",
   icon = util.fi_entities_icons_path.."coke-furnace.png",
   icon_size = 64, icon_mipmaps = 4,
   subgroup = "smelting-machine",
   order = "a[coke-furnace]",
   place_result = util.mod_prefix.."coke-furnace",
   stack_size = 10
},
{
   type = "item",
   name = util.mod_prefix.."crusher",
   icon = util.fi_entities_icons_path.."crusher.png",
   icon_size = 64, icon_mipmaps = 4,
   subgroup = "smelting-machine",
   order = "d[crusher]",
   place_result = util.mod_prefix.."crusher",
   stack_size = 10
}
})