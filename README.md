[![The Foundry](https://img.shields.io/badge/foundrygg-4a1402?style=for-the-badge&logo=vercel&logoColor=white)](https://foundrygg.com/)
[![Discord community](https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/SYmkaDjFCt)
[![Factorio mod portal](https://img.shields.io/factorio-mod-portal/dt/khaosbash?style=for-the-badge&logo=data%3Aimage%2Fx-icon%3Bbase64%2CAAABAAEAEBAAAAEACABoBQAAFgAAACgAAAAQAAAAIAAAAAEACAAAAAAAAAEAAAAAAAAAAAAAAAEAAAAAAAAAAAAALzAtABIVFwBBOSwAISYpAB0iJACTfFQAICQnAEk%2FLAAcICIAsZZlADs4MABsXUIAd2hMAINzVgChi2QAPTozAIt6WwAWGhsAs5prABwgIwC1nG4AKSglAEpGOwBhVDwAGx4hAGJUPABoXkkAMiwiAGleSQCwmW8AtJpsALigdABnXEcAi3ZPAFhNOACDb0sAIicqAEtCLwAxMzEAEhQWAE1EMgAgJSgAISUoAJV%2FWACrkmQAHyMmAIFwUgAbHyEAsJVkAG5gRgAXGxwAHSEkAKCKYwCzmWoAsJhtACIhHAAbHyIAeWtRADo3MACxmnAAtZttACMoKgAaHSAAPzcoABYZGwASFRYAX1ZEAINwTABKRTsAIygrAJqDWABoXUkAHyQmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADExMTExEyAgEzExMTExADExMRMVCi8EBC8KFTYxMTExMT0OGx5DJSVDHkgRHzExMTEyB0YnRiUlPidGBw0xMTExGi5GJS4JOS4lRkkpMTExHzcrRi4SHEBBLkYrNxUKMTpFRiUURDExRAklRhchLTE%2FKyU%2BCzExMTE7JSUqGSwxAj8qRgEVCgoVEEYqPwIGMSQMSUYlHTw8HSVGSQwiMTExDwclJSVGRiUlPgc1MTExMQMwNBQuJSUuFAU5IzExMTEiOEImFklJFiYCKCQxMTExMUckMRgzMxgxJCIxMTExMTExMTEiCAgiMTExMTExADExMTExMTExMTExMTExAIABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIABAAA%3D&color=orange&labelColor=rgb(111,148,173))](https://mods.factorio.com/mod/khaosbash)
[![GitHub issues: bugs](https://img.shields.io/github/issues/QuingKhaos/khaosbash/bug?label=Bug%20Reports&style=for-the-badge&logo=github)](https://github.com/QuingKhaos/khaosbash/issues?q=is%3Aissue%20state%3Aopen%20label%3Abug)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/QuingKhaos/khaosbash?label=Pull%20Requests&style=for-the-badge&logo=github)](https://github.com/QuingKhaos/khaosbash/pulls)

# QuingKhaos' Kitbashing Toolkit

A growing toolkit of de-colorized Factorio assets to kitbash new assets together. Either directly in your mod or with GIMP.

I'm still new at doing graphics things, but my premise is if I can make something that can be re-used, why not publish it?
Which also means, this will be a slowly growing project, as I add things on the go when I need them for my own mods.

But if you are in need of a specific asset, feel free to open a discussion on the mod portal, or a GitHub issue, or join
the discord server and let me know and I will see if I can add it to the toolkit.

## Usage

You can either just use the provided overlay tinting functionality, for example:

```lua
local constant_combinator = require("__khaosbash__.prototypes.base.combinator.constant-combinator")

local my_awesome_combinator = util.table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
my_awesome_combinator.icons = constant_combinator.icons_from_tint(util.color("3bc93b"))
my_awesome_combinator.sprites = constant_combinator.entity_sprites_from_tint(util.color("3bc93b"))
data.extend({my_awesome_combinator})
```

gives you a leafy green constant combinator.

![Example of a kitbashed constant combinator](https://github.com/QuingKhaos/khaosbash/blob/main/.github/images/example-constant-combinator.png?raw=true)

Or you can use the provided GIMP projects to re-colorize the assets and export at single PNG without using layering in
your mod. Just select the overlay layer you want to use, change the color of the overlay layer, and export with all
layers visible. There is also a function included in the toolkit to generate the sprites from your exported image as well:

```lua
local constant_combinator = require("__khaosbash__.prototypes.base.combinator.constant-combinator")

local my_awesome_combinator = util.table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
my_awesome_combinator.icons = constant_combinator.icons_from_file("__myawesomemod__/graphics/icons/my-awesome-combinator.png")
my_awesome_combinator.sprites = constant_combinator.entity_sprites_from_file("__myawesomemod__/graphics/entity/my-awesome-combinator.png")
data.extend({my_awesome_combinator})
```

The bonus about using the tinting way, whenever I improve those assets, you will automatically get the improvements in
your mod without having to re-export the images. Otherwise re-colorizing with GIMP will give you more possibilities than
just tinting provides, due to the fact that the overlay mask already has a given grayish color, which will limit the
color range you can get from tinting. But you have to redo the colorization and export whenever I improve the assets, if
you want to get the improvements in your mod.

It's not required, that you use the provided convenience functions to generate the icon and sprite definitions, you can
also copy them into your mod and modify them to your needs.

## Legal notice

Except for the files in the `graphics` folder, which contain their own `LICENSE.md` declaration, this mod is licensed
under the GNU Lesser General Public License v3.0 (LGPL-3.0). All the creative work, which includes but is not limited to
the specific layer structures, masking techniques, and color-correction settings (the "creative process") contained within
this projects graphical assets, is licensed under the Creative Commons Attribution-ShareAlike 4.0 International
(CC BY-SA 4.0) license. Which means you are free to use these assets resulting from the creative process in your own work,
as long as you give appropriate credit, provide a link to the license, and indicate if changes were made.

By using this project's graphical assets, you acknowledge that you are also responsible for respecting the intellectual
property rights of the original authors (e.g. Wube) of the assets contained within this project.
