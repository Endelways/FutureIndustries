local util = {}
util.mod_prefix = "fi-"
util.sound_path = "__FutureIndustries__/sound/"
util.fi_entities_path = "__FutureIndustries__/graphics/entity/"
util.fi_entities_icons_path = "__FutureIndustries__/graphics/icons/"
util.fi_buildings_sounds_path = "__FutureIndustries__/graphics/sounds/"
util.fi_remnants_path = "__FutureIndustries__/graphics/entity/remnants/"
util.color = function (red, green, blue, alpha)  return { r = red / 255, g = green / 255, b = blue / 255, a = (alpha or 255) / 255 } end



return util
