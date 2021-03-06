data:extend({
    {
      type = "recipe",
      name = "dogerium-conductor",
      energy_required = 0.69,
      enabled = false,
      ingredients = {
        { "dogerium-plate", 1 },
        { "electronic-circuit", 1 },
      },
      result = "dogerium-conductor",
    },
    {
      type = "recipe",
      name = "dogerium-transmitter",
      energy_required = 0.69,
      enabled = false,
      ingredients = {
        { "dogerium-conductor", 9 },
        { "dogerium-plate", 4 },
        { "electronic-circuit", 2 },
      },
      result = "dogerium-transmitter",
      result_count = 2,
    },
    {
        type = "recipe",
        name = "dogerium-wallet",
        energy_required = 4.2,
        enabled = false,
        ingredients = {
          { "dogerium-plate", 6 },
          { "electronic-circuit", 9 },
          { "dogerium-conductor", 4 },
          { "dogerium-transmitter", 2 },
        },
        result = "dogerium-wallet",
      },
      {
        type = "recipe",
        name = "designated-orbital-grounding-entity",
        energy_required = 6.9,
        enabled = false,
        ingredients = {
          { "dogerium-plate", 42 },
          { "dogerium-transmitter", 6 },
          { "electronic-circuit", 9 },
          { "stone-brick", 42 },
        },
        result = "designated-orbital-grounding-entity",
      },
      
  })