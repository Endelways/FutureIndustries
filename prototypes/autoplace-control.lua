local util = require('utils')
data:extend({
  {
    type = "autoplace-control",
    name = util.mod_prefix.."lead-ore",
    localised_name = {"", "[entity="..util.mod_prefix.."lead-ore] ", {"entity-name."..util.mod_prefix.."lead-ore"}},
    richness = true,
    order = "b-a",
    category = "resource"
  },
  {
    type = "autoplace-control",
    name = util.mod_prefix.."sand",
    localised_name = {"", "[entity="..util.mod_prefix.."sand] ", {"entity-name."..util.mod_prefix.."sand"}},
    richness = true,
    order = "c-a",
    category = "resource"
  },
})