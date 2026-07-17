local khaosbash = require("__khaosbash__.prototypes.lib")
local constant_combinator = {}

--- Creates sprites with the given tints for a constant combinator prototype.
--- @param main_color data.Color The main color to tint the sprites with. Must NOT be pre-multiplied.
--- @param blend_mode? data.BlendMode The blend mode to use for the tinting. Defaults to "normal".
--- @return data.Sprite4Way spritesThe sprites for the constant combinator.
function constant_combinator.entity_sprites_from_tint(main_color, blend_mode)
  if not main_color then error("Missing required argument 'main_color'", 2) end
  main_color = util.premul_color(main_color)
  blend_mode = blend_mode or "normal"

  return {
    north = {
      layers = {
        {
          filename = "__khaosbash__/graphics/base/entity/combinator/constant-combinator-base.png",
          width = 114,
          height = 102,
          x = 0,
          y = 0,
          priority = "high",
          shift = {0, 0.15625},
          scale = 0.5,
          tint_as_overlay = false,
        },
        {
          filename = "__khaosbash__/graphics/base/entity/combinator/constant-combinator-mask-main-color.png",
          width = 114,
          height = 102,
          x = 0,
          y = 0,
          priority = "high",
          shift = {0, 0.15625},
          scale = 0.5,
          tint_as_overlay = false,
          tint = main_color,
          blend_mode = blend_mode,
        },
        {
          filename = "__base__/graphics/entity/combinator/constant-combinator-shadow.png",
          width = 98,
          height = 66,
          x = 0,
          y = 0,
          priority = "high",
          shift = {0.265625, 0.171875},
          scale = 0.5,
          draw_as_shadow = true,
          tint_as_overlay = false,
        },
      },
    },
    east = {
      layers = {
        {
          filename = "__khaosbash__/graphics/base/entity/combinator/constant-combinator-base.png",
          width = 114,
          height = 102,
          x = 114,
          y = 0,
          priority = "high",
          shift = {0, 0.15625},
          scale = 0.5,
          tint_as_overlay = false,
        },
        {
          filename = "__khaosbash__/graphics/base/entity/combinator/constant-combinator-mask-main-color.png",
          width = 114,
          height = 102,
          x = 114,
          y = 0,
          priority = "high",
          shift = {0, 0.15625},
          scale = 0.5,
          tint_as_overlay = false,
          tint = main_color,
          blend_mode = blend_mode,
        },
        {
          filename = "__base__/graphics/entity/combinator/constant-combinator-shadow.png",
          width = 98,
          height = 66,
          x = 98,
          y = 0,
          priority = "high",
          shift = {0.265625, 0.171875},
          scale = 0.5,
          draw_as_shadow = true,
          tint_as_overlay = false,
        },
      },
    },
    south = {
      layers = {
        {
          filename = "__khaosbash__/graphics/base/entity/combinator/constant-combinator-base.png",
          width = 114,
          height = 102,
          x = 228,
          y = 0,
          priority = "high",
          shift = {0, 0.15625},
          scale = 0.5,
          tint_as_overlay = false,
        },
        {
          filename = "__khaosbash__/graphics/base/entity/combinator/constant-combinator-mask-main-color.png",
          width = 114,
          height = 102,
          x = 228,
          y = 0,
          priority = "high",
          shift = {0, 0.15625},
          scale = 0.5,
          tint_as_overlay = false,
          tint = main_color,
          blend_mode = blend_mode,
        },
        {
          filename = "__base__/graphics/entity/combinator/constant-combinator-shadow.png",
          width = 98,
          height = 66,
          x = 196,
          y = 0,
          priority = "high",
          shift = {0.265625, 0.171875},
          scale = 0.5,
          draw_as_shadow = true,
          tint_as_overlay = false,
        },
      },
    },
    west = {
      layers = {
        {
          filename = "__khaosbash__/graphics/base/entity/combinator/constant-combinator-base.png",
          width = 114,
          height = 102,
          x = 342,
          y = 0,
          priority = "high",
          shift = {0, 0.15625},
          scale = 0.5,
          tint_as_overlay = false,
        },
        {
          filename = "__khaosbash__/graphics/base/entity/combinator/constant-combinator-mask-main-color.png",
          width = 114,
          height = 102,
          x = 342,
          y = 0,
          priority = "high",
          shift = {0, 0.15625},
          scale = 0.5,
          tint_as_overlay = false,
          tint = main_color,
          blend_mode = blend_mode,
        },
        {
          filename = "__base__/graphics/entity/combinator/constant-combinator-shadow.png",
          width = 98,
          height = 66,
          x = 294,
          y = 0,
          priority = "high",
          shift = {0.265625, 0.171875},
          scale = 0.5,
          draw_as_shadow = true,
          tint_as_overlay = false,
        },
      },
    },
  }
end

--- Creates icons with the given tints for a constant combinator prototype.
--- @param main_color data.Color The main color to tint the icon with. Must NOT be pre-multiplied.
--- @return data.IconData[] icons The icons for the constant combinator.
--- @deprecated Use `khaosbash.load_icons` with the image source `__khaosbash__/graphics/base/icons/constant-combinator` instead.
function constant_combinator.icons_from_tint(main_color)
  if not main_color then error("Missing required argument 'main_color'", 2) end

  return khaosbash.load_icons("__khaosbash__/graphics/base/icons/constant-combinator", main_color)
end


--- Creates sprites with the given image for a constant combinator prototype.
--- @param filename data.FileName The base image to use with the sprites.
--- @return data.Sprite4Way sprites The sprites for the constant combinator.
function constant_combinator.entity_sprites_from_file(filename)
  if not filename then error("Missing required argument 'filename'", 2) end

  return {
    north = {
      layers = {
        {
          filename = filename,
          width = 114,
          height = 102,
          x = 0,
          y = 0,
          priority = "high",
          shift = {0, 0.15625},
          scale = 0.5,
          tint_as_overlay = false,
        },
        {
          filename = "__base__/graphics/entity/combinator/constant-combinator-shadow.png",
          width = 98,
          height = 66,
          x = 0,
          y = 0,
          priority = "high",
          shift = {0.265625, 0.171875},
          scale = 0.5,
          draw_as_shadow = true,
          tint_as_overlay = false,
        },
      },
    },
    east = {
      layers = {
        {
          filename = filename,
          width = 114,
          height = 102,
          x = 114,
          y = 0,
          priority = "high",
          shift = {0, 0.15625},
          scale = 0.5,
          tint_as_overlay = false,
        },
        {
          filename = "__base__/graphics/entity/combinator/constant-combinator-shadow.png",
          width = 98,
          height = 66,
          x = 98,
          y = 0,
          priority = "high",
          shift = {0.265625, 0.171875},
          scale = 0.5,
          draw_as_shadow = true,
          tint_as_overlay = false,
        },
      },
    },
    south = {
      layers = {
        {
          filename = filename,
          width = 114,
          height = 102,
          x = 228,
          y = 0,
          priority = "high",
          shift = {0, 0.15625},
          scale = 0.5,
          tint_as_overlay = false,
        },
        {
          filename = "__base__/graphics/entity/combinator/constant-combinator-shadow.png",
          width = 98,
          height = 66,
          x = 196,
          y = 0,
          priority = "high",
          shift = {0.265625, 0.171875},
          scale = 0.5,
          draw_as_shadow = true,
          tint_as_overlay = false,
        },
      },
    },
    west = {
      layers = {
        {
          filename = filename,
          width = 114,
          height = 102,
          x = 342,
          y = 0,
          priority = "high",
          shift = {0, 0.15625},
          scale = 0.5,
          tint_as_overlay = false,
        },
        {
          filename = "__base__/graphics/entity/combinator/constant-combinator-shadow.png",
          width = 98,
          height = 66,
          x = 294,
          y = 0,
          priority = "high",
          shift = {0.265625, 0.171875},
          scale = 0.5,
          draw_as_shadow = true,
          tint_as_overlay = false,
        },
      },
    },
  }
end

--- Creates icons with the given image for a constant combinator prototype.
--- @param filename data.FileName The base image to use for the icon.
--- @return data.IconData[] icons The icons for the constant combinator.
--- @deprecated You can define that yourself ^^
function constant_combinator.icons_from_file(filename)
  if not filename then error("Missing required argument 'filename'", 2) end

  return {
    {icon = filename, icon_size = 64},
  }
end

return constant_combinator
