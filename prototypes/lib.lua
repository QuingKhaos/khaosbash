--- @class khaosbash.lib A collection of utility functions for getting icons, variations, sprites, etc.
local khaosbash = {}

--- @class khaosbash.ImageLayer Describes a single image layer
--- @field public filename data.FileName The path to the icon file.
--- @field public size integer The size of the icon in pixels. Must be a power of 2.
--- @field public tint_idx integer? The index of the tint to apply to this icon layer. If nil, no tint is applied.
--- @field public draw_background boolean? ONLY for icons. Outline is drawn using signed distance field generated on load. Defaults to false.

--- @class khaosbash.ImageSource A table that describes a image source.
--- @field public icons khaosbash.ImageLayer[] A list of icon layers and their wanted tint index that make up an image.

--- Loads icons from an image source and applies tints to them.
--- @param image string The path to the image source lua definition without the .lua extension.
--- @param ... data.Color? Tints to apply to the icons. How many tints and how they are applied is determined by the image source. Must NOT be pre-multiplied.
--- @return data.IconData[] icons A list of icons with their tints applied.
--- @throws If the image source does not have an 'icons' field.
--- @nodiscard
function khaosbash.load_icons(image, ...)
  --- @type khaosbash.ImageSource
  local image_source = require(image)
  if not image_source.icons then error("Missing required field 'icons' in image source: " .. image, 2) end

  --- @type data.IconData[]
  local icons = {}

  --- @type data.Color[]
  local tints = {...}

  for _, icon in ipairs(image_source.icons) do
    local tint = (icon.tint_idx and tints[icon.tint_idx]) and util.premul_color(tints[icon.tint_idx]) or nil
    table.insert(icons, {
      icon = icon.filename,
      icon_size = icon.size,
      tint = tint,
      draw_background = icon.draw_background or false
    })
  end

  return icons
end

return khaosbash
