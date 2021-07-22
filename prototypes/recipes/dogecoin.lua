data:extend({
    {
        type = "recipe",
        name = "dogecoin",
        category = "dogecoin-mining",
        subgroup = "fluid-recipes",
        icon = don_fluids_icons_path .. "dogecoin.png",
        icon_size = 64,
        energy_required = 1,
        enabled = false,
        always_show_made_in = true,
        always_show_products = true,
        hide_from_player_crafting = true,
        ingredients = {},
        results = {
          { type = "fluid", name = "dogecoin", amount = 1 },
        },
        subgroup = "raw-material",
        order = "d[dogecoin-mining]-d0[dogecoin]",
      },
})