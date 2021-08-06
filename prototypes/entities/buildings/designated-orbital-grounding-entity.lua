local sounds = require("__base__/prototypes/entity/sounds")

data:extend({
  {
    ----------------------------
    --         Basics         -- 
    ----------------------------

    type = "assembling-machine",
    name = "designated-orbital-grounding-entity",
    icon = don_entities_icons_path .. "designated-orbital-grounding-entity.png",
    icon_size = 64,
    icon_mipmaps = 4,
    scale_entity_info_icon = true,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "designated-orbital-grounding-entity" },
    max_health = 250,
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "assembling-machine",

    ----------------------------
    --         Input         -- 
    ----------------------------

    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        pipe_picture = don_pipe_path,
        base_area = 10,
        base_level = 1,
        pipe_connections = {
          { type = "input", position = { 2.0, 0.0 } },
          { type = "input", position = { -2.0, 0.0 } },
        },
      },
      off_when_no_fluid_recipe = false,
    },
    
    ----------------------------
    --         Crafting       -- 
    ----------------------------

    crafting_categories = { "dogecoin-spending" },
    crafting_speed = 1,
    energy_source = 
    {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "420kW",
    ingredient_count = 0,
    
    ----------------------------
    -- Animation and Graphics --
    ----------------------------

    animation = 
    {
      layers = {
        {
          filename = don_entities_sprites_path .. "designated-orbital-grounding-entity/designated-orbital-grounding-entity.png",
          width = 400,
          height = 400,
          frame_count = 1,
          line_length = 1,
          shift = { 0, 0 },
          hr_version = {
            filename = don_entities_sprites_path .. "designated-orbital-grounding-entity/hr-designated-orbital-grounding-entity.png",
            width = 800,
            height = 800,
            scale = 0.5,
            frame_count = 1,
            line_length = 1,
            shift = { 0, 0 },
          },
        },
      },
    },
    --water_reflection = 
    --{
    --  pictures = {
    --    filename = don_entities_sprites_path .. "designated-orbital-grounding-entity/designated-orbital-grounding-entity-reflection.png",
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

    --corpse = "designated-orbital-grounding-entity-remnant",
    dying_explosion = "big-explosion",


    ----------------------------
    --         Sounds         -- 
    ----------------------------

    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound = sounds.generic_impact,
    --working_sound = {
    --  sound = {
    --    filename = don_buildings_sounds_path .. "designated-orbital-grounding-entity.ogg",
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
