local sounds = require("__base__/prototypes/entity/sounds")

data:extend({
  {
    ----------------------------
    --         Basics         -- 
    ----------------------------

    type = "assembling-machine",
    name = "dogecoin-mining-rig",
    icon = don_entities_icons_path .. "dogecoin-mining-rig.png",
    icon_size = 64,
    icon_mipmaps = 4,
    scale_entity_info_icon = true,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.3, result = "dogecoin-mining-rig" },
    max_health = 150,
    collision_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
    selection_box = { { -1.0, -1.0 }, { 1.0, 1.0 } },
    fast_replaceable_group = "assembling-machine",

    ----------------------------
    --         Output         -- 
    ----------------------------

    fluid_boxes = {
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        pipe_picture = don_pipe_path,
        base_area = 10,
        base_level = 1,
        pipe_connections = {
          { type = "output", position = { 1.5, -0.5 } },
        },
      },
      off_when_no_fluid_recipe = false,
    },
    
    ----------------------------
    --         Crafting       -- 
    ----------------------------

    crafting_categories = { "dogecoin-mining" },
    crafting_speed = 0.69,
    energy_source = 
    {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "66.7kW",
    ingredient_count = 0,
    module_specification = { module_slots = 2, module_info_icon_shift = { 0, 1.2 }, module_info_icon_scale = 1 },
    allowed_effects = { "consumption", "speed",  },
    
    ----------------------------
    -- Animation and Graphics --
    ----------------------------
    
    animation = 
    {      
      animation_speed = 500,
      layers = {
        {
          filename = don_entities_sprites_path .. "dogecoin-mining-rig/mining-shibe-12frame.png",
          width = 93,
          height = 112,
          frame_count = 12,
          line_length = 4,
          shift = { 0, 0 },
          hr_version = {
            filename = don_entities_sprites_path .. "dogecoin-mining-rig/hr-mining-shibe-12frame.png",
            width = 196,
            height = 254,
            scale = 0.5,
            frame_count = 12,
            line_length = 4,
            shift = { 0, 0 },
          },
        },
      },
    },
    --water_reflection = 
    --{
    --  pictures = {
    --    filename = don_entities_sprites_path .. "dogecoin-mining-rig/dogecoin-mining-rig-reflection.png",
    --    priority = "extra-high",
    --    width = 42,
    --    height = 38,
    --    shift = util.by_pixel(0, 40),
    --    variation_count = 1,
    --    scale = 5,
    --  },
    --  rotate = false,
    --  orientation_to_variation = false,
    --},

    --corpse = "dogecoin-mining-rig-remnant",
    dying_explosion = "big-explosion",


    ----------------------------
    --         Sounds         -- 
    ----------------------------

    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound = sounds.generic_impact,
    --working_sound = {
    --  sound = {
    --    filename = don_buildings_sounds_path .. "dogecoin-mining-rig.ogg",
    --    volume = 1.2,
    --  },
    --  idle_sound = {
    --    filename = "__base__/sound/idle1.ogg",
    --    volume = 0.5,
    --  },
    --  apparent_volume = 1.5,
    --},
  },
})
