data:extend(
{ 
  {
      type = "technology",
      name = "dogecoin-mining",
      mod = "DogeformingMars",
      icon = don_technologies_icons_path .. "dogecoin-mining.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "dogecoin-mining-rig",
        },
        {
          type = "unlock-recipe",
          recipe = "dogecoin",
        },
      },
      prerequisites = { "electronics" },
      order = "g-e-d",
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },        
        },
        time = 30,
      },
  },
  {
    type = "technology",
    name = "dogecoin-mining-2",
    mod = "DogeformingMars",
    icon = don_technologies_icons_path .. "dogecoin-mining-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "dogecoin-mining-farm",
      },
    },
    prerequisites = { "dogecoin-mining", "advanced-electronics" },
    order = "g-e-d",
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 45,
    },
  },
  {
    type = "technology",
    name = "dogecoin-mining-3",
    mod = "DogeformingMars",
    icon = don_technologies_icons_path .. "dogecoin-mining-3.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "dogecoin-mining-supercomputer",
      },
      {
        type = "unlock-recipe",
        recipe = "superconductor",
      },
    },
    prerequisites = { "dogecoin-mining-2", "advanced-electronics-2" },
    order = "g-e-d",
    unit = {
      count = 500,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },     
      },
      time = 60,
    },
  },
}
)